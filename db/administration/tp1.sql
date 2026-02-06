-- 1)

SELECT aut.personneId, aut.nom, aut.prenom, COUNT(*) AS nb_articles from cg_article art
INNER JOIN cg_rediger r ON r.articleid = art.articleid
INNER JOIN cg_auteur aut ON aut.personneid = r.personneid
GROUP BY aut.personneid;

CREATE OR REPLACE FUNCTION nbArticlesRediges (INTEGER)
RETURNS INTEGER
AS $$
DECLARE
nbArticles INTEGER = 0;
BEGIN
SELECT COUNT(*) INTO nbArticles from cg_article art
INNER JOIN cg_rediger r ON r.articleid = art.articleid
INNER JOIN cg_auteur aut ON aut.personneid = r.personneid
WHERE aut.personneid = $1;
RETURN nbArticles;
END;
$$ LANGUAGE plpgsql;

SELECT personneid, nom, prenom, nbArticlesRediges(personneid) FROM cg_auteur;

-- 2)

ALTER TABLE cg_auteur
ADD COLUMN nbart INTEGER NOT NULL DEFAULT 0;

UPDATE cg_auteur
SET nbart=(SELECT nbArticlesRediges(personneid));

CREATE OR REPLACE FUNCTION updateNbArt()
RETURNS TRIGGER AS $$
BEGIN
IF TG_OP = 'DELETE' OR TG_OP = 'UPDATE' THEN
UPDATE cg_auteur
SET nbart = nbart-1
WHERE cg_auteur.personneId = OLD.personneId;
END IF;
IF TG_OP = 'INSERT' OR TG_OP = 'UPDATE' THEN
UPDATE cg_auteur
SET nbart = nbart+1
WHERE cg_auteur.personneId = NEW.personneId;
END IF;
RETURN NULL;
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE TRIGGER tg_nbart AFTER DELETE OR INSERT OR UPDATE ON cg_rediger
EXECUTE PROCEDURE updateNbArt();

-- 3)

CREATE OR REPLACE FUNCTION insertPerson()
RETURNS TRIGGER AS $$
BEGIN
INSERT INTO cg_personne (personneid, nom, prenom, email)
VALUES (NEW.personneId, NEW.nom, NEW.prenom, NEW.email);
RETURN NULL;
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE TRIGGER tg_participantInPersonne AFTER INSERT ON cg_participant
EXECUTE PROCEDURE insertPerson();
CREATE OR REPLACE TRIGGER tg_auteurtInPersonne AFTER INSERT ON cg_auteur
EXECUTE PROCEDURE insertPerson();

CREATE OR REPLACE FUNCTION replacePerson()
RETURNS TRIGGER AS $$
BEGIN
UPDATE cg_personne
SET nom = NEW.nom,
prenom = NEW.prenom,
email = NEW.email
WHERE personneid = NEW.personneid;
RETURN NULL;
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE TRIGGER tg_participantInPersonne AFTER UPDATE ON cg_participant
EXECUTE PROCEDURE replacePerson();
CREATE OR REPLACE TRIGGER tg_participantInPersonne AFTER UPDATE ON cg_auteur
EXECUTE PROCEDURE replacePerson();

CREATE OR REPLACE FUNCTION deletePerson()
RETURNS TRIGGER AS $$
BEGIN
DELETE FROM cg_personne
WHERE personneid = OLD.personneid;
RETURN NULL;
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE TRIGGER tg_supressParticipant AFTER DELETE ON cg_participant
EXECUTE PROCEDURE deletePerson();
CREATE OR REPLACE TRIGGER tg_supressAuteur AFTER DELETE ON cg_auteur
EXECUTE PROCEDURE deletePerson();
