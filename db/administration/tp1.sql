-- 1)

SELECT aut.personneId, aut.nom, aut.prenom, COUNT(*) AS nb_articles from cg_article art
INNER JOIN cg_rediger r ON r.articleid = art.articleid
INNER JOIN cg_auteur aut ON aut.personneid = r.personneid
GROUP BY aut.personneid;

CREATE OR REPLACE FUNCTION nbArticlesRediges (INTEGER)
RETURNS INTEGER
AS $$
DECLARE
nbArticles INTEGER;
BEGIN
SELECT COUNT(*) SELECT INTO nbArticles from cg_article art
INNER JOIN cg_rediger r ON r.articleid = art.articleid
INNER JOIN cg_auteur aut ON aut.personneid = r.personneid
WHERE aut.personneid == $1
GROUP BY aut.personneid;
END;
$$ LANGUAGE plpgsql;

SELECT personneid, nom, prenom, nbArticlesRediges(personneid) FROM cg_auteur;

-- 2)

ALTER TABLE cg_auteur
ADD COLUMN nbart INTEGER NOT NULL DEFAULT 0;

UPDATE cg_auteur
SET nbart=(SELECT nbArticlesRediges(personneid));

CREATE FUNCTION tg_nbart() RETURNS TRIGGER
AS $$
BEGIN
UPDATE cg_auteur
END;
$$ LANGUAGE plpgsql;
