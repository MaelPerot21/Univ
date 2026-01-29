 
--
-- Name: pk_cg_article; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY cg_article
    ADD CONSTRAINT pk_cg_article PRIMARY KEY (articleid);


--
-- Name: pk_cg_assister; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY cg_assister
    ADD CONSTRAINT pk_cg_assister PRIMARY KEY (personneid, nosession);


--
-- Name: pk_cg_auteur; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY cg_auteur
    ADD CONSTRAINT pk_cg_auteur PRIMARY KEY (personneid);


--
-- Name: pk_cg_batiment; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY cg_batiment
    ADD CONSTRAINT pk_cg_batiment PRIMARY KEY (batimentid);


--
-- Name: pk_cg_congres; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY cg_congres
    ADD CONSTRAINT pk_cg_congres PRIMARY KEY (congresid);


--
-- Name: pk_cg_domaine; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY cg_domaine
    ADD CONSTRAINT pk_cg_domaine PRIMARY KEY (domaineid);


--
-- Name: pk_cg_employeur; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY cg_employeur
    ADD CONSTRAINT pk_cg_employeur PRIMARY KEY (noemployeur);


--
-- Name: pk_cg_inscription; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY cg_inscription
    ADD CONSTRAINT pk_cg_inscription PRIMARY KEY (congresid, inscriptionid);


--
-- Name: pk_cg_participant; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY cg_participant
    ADD CONSTRAINT pk_cg_participant PRIMARY KEY (personneid);


--
-- Name: pk_cg_pays; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY cg_pays
    ADD CONSTRAINT pk_cg_pays PRIMARY KEY (paysid);


--
-- Name: pk_cg_personne; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY cg_personne
    ADD CONSTRAINT pk_cg_personne PRIMARY KEY (personneid);


--
-- Name: pk_cg_presenter; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY cg_presenter
    ADD CONSTRAINT pk_cg_presenter PRIMARY KEY (personneid, nosession);


--
-- Name: pk_cg_rediger; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY cg_rediger
    ADD CONSTRAINT pk_cg_rediger PRIMARY KEY (personneid, articleid);


--
-- Name: pk_cg_session; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY cg_session
    ADD CONSTRAINT pk_cg_session PRIMARY KEY (nosession);


--
-- Name: pk_cg_theme; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY cg_theme
    ADD CONSTRAINT pk_cg_theme PRIMARY KEY (themeid);


--
-- Name: pk_cg_type; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY cg_type
    ADD CONSTRAINT pk_cg_type PRIMARY KEY (typeid);


--
-- Name: pk_cg_ville; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY cg_ville
    ADD CONSTRAINT pk_cg_ville PRIMARY KEY (villeid);


--
-- Name: i_fk_cg_article_cg_theme; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX i_fk_cg_article_cg_theme ON cg_article USING btree (themeid);


--
-- Name: i_fk_cg_article_cg_type; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX i_fk_cg_article_cg_type ON cg_article USING btree (typeid);


--
-- Name: i_fk_cg_assister_cg_participan; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX i_fk_cg_assister_cg_participan ON cg_assister USING btree (personneid);


--
-- Name: i_fk_cg_assister_cg_session; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX i_fk_cg_assister_cg_session ON cg_assister USING btree (nosession);


--
-- Name: i_fk_cg_batiment_cg_ville; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX i_fk_cg_batiment_cg_ville ON cg_batiment USING btree (villeid);


--
-- Name: i_fk_cg_congres_cg_batiment; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX i_fk_cg_congres_cg_batiment ON cg_congres USING btree (batimentid);


--
-- Name: i_fk_cg_congres_cg_domaine; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX i_fk_cg_congres_cg_domaine ON cg_congres USING btree (domaineid);


--
-- Name: i_fk_cg_employeur_cg_ville; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX i_fk_cg_employeur_cg_ville ON cg_employeur USING btree (villeid);


--
-- Name: i_fk_cg_inscription_cg_congres; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX i_fk_cg_inscription_cg_congres ON cg_inscription USING btree (congresid);


--
-- Name: i_fk_cg_inscription_cg_partici; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX i_fk_cg_inscription_cg_partici ON cg_inscription USING btree (personneid);


--
-- Name: i_fk_cg_participant_cg_employe; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX i_fk_cg_participant_cg_employe ON cg_participant USING btree (noemployeur);


--
-- Name: i_fk_cg_participant_cg_ville; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX i_fk_cg_participant_cg_ville ON cg_participant USING btree (villeid);


--
-- Name: i_fk_cg_presenter_cg_participa; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX i_fk_cg_presenter_cg_participa ON cg_presenter USING btree (personneid);


--
-- Name: i_fk_cg_presenter_cg_session; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX i_fk_cg_presenter_cg_session ON cg_presenter USING btree (nosession);


--
-- Name: i_fk_cg_rediger_cg_article; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX i_fk_cg_rediger_cg_article ON cg_rediger USING btree (articleid);


--
-- Name: i_fk_cg_rediger_cg_auteur; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX i_fk_cg_rediger_cg_auteur ON cg_rediger USING btree (personneid);


--
-- Name: i_fk_cg_session_cg_article; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX i_fk_cg_session_cg_article ON cg_session USING btree (articleid);


--
-- Name: i_fk_cg_session_cg_congres; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX i_fk_cg_session_cg_congres ON cg_session USING btree (congresid);


--
-- Name: i_fk_cg_session_cg_participant; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX i_fk_cg_session_cg_participant ON cg_session USING btree (personneid);


--
-- Name: i_fk_cg_ville_cg_pays; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX i_fk_cg_ville_cg_pays ON cg_ville USING btree (paysid);

--
-- Name: fk_cg_article_cg_theme; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY cg_article
    ADD CONSTRAINT fk_cg_article_cg_theme FOREIGN KEY (themeid) REFERENCES cg_theme(themeid);


--
-- Name: fk_cg_article_cg_type; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY cg_article
    ADD CONSTRAINT fk_cg_article_cg_type FOREIGN KEY (typeid) REFERENCES cg_type(typeid);


--
-- Name: fk_cg_assister_cg_participant; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY cg_assister
    ADD CONSTRAINT fk_cg_assister_cg_participant FOREIGN KEY (personneid) REFERENCES cg_participant(personneid);


--
-- Name: fk_cg_assister_cg_session; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY cg_assister
    ADD CONSTRAINT fk_cg_assister_cg_session FOREIGN KEY (nosession) REFERENCES cg_session(nosession);


--
-- Name: fk_cg_auteur_cg_personne; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY cg_auteur
    ADD CONSTRAINT fk_cg_auteur_cg_personne FOREIGN KEY (personneid) REFERENCES cg_personne(personneid);


--
-- Name: fk_cg_batiment_cg_ville; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY cg_batiment
    ADD CONSTRAINT fk_cg_batiment_cg_ville FOREIGN KEY (villeid) REFERENCES cg_ville(villeid);


--
-- Name: fk_cg_congres_cg_batiment; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY cg_congres
    ADD CONSTRAINT fk_cg_congres_cg_batiment FOREIGN KEY (batimentid) REFERENCES cg_batiment(batimentid);


--
-- Name: fk_cg_congres_cg_domaine; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY cg_congres
    ADD CONSTRAINT fk_cg_congres_cg_domaine FOREIGN KEY (domaineid) REFERENCES cg_domaine(domaineid);


--
-- Name: fk_cg_employeur_cg_ville; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY cg_employeur
    ADD CONSTRAINT fk_cg_employeur_cg_ville FOREIGN KEY (villeid) REFERENCES cg_ville(villeid);


--
-- Name: fk_cg_inscription_cg_congres; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY cg_inscription
    ADD CONSTRAINT fk_cg_inscription_cg_congres FOREIGN KEY (congresid) REFERENCES cg_congres(congresid);


--
-- Name: fk_cg_inscription_cg_participant; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY cg_inscription
    ADD CONSTRAINT fk_cg_inscription_cg_participant FOREIGN KEY (personneid) REFERENCES cg_participant(personneid);


--
-- Name: fk_cg_participant_cg_employeur; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY cg_participant
    ADD CONSTRAINT fk_cg_participant_cg_employeur FOREIGN KEY (noemployeur) REFERENCES cg_employeur(noemployeur);


--
-- Name: fk_cg_participant_cg_personne; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY cg_participant
    ADD CONSTRAINT fk_cg_participant_cg_personne FOREIGN KEY (personneid) REFERENCES cg_personne(personneid);


--
-- Name: fk_cg_participant_cg_ville; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY cg_participant
    ADD CONSTRAINT fk_cg_participant_cg_ville FOREIGN KEY (villeid) REFERENCES cg_ville(villeid);


--
-- Name: fk_cg_presenter_cg_participant; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY cg_presenter
    ADD CONSTRAINT fk_cg_presenter_cg_participant FOREIGN KEY (personneid) REFERENCES cg_participant(personneid);


--
-- Name: fk_cg_presenter_cg_session; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY cg_presenter
    ADD CONSTRAINT fk_cg_presenter_cg_session FOREIGN KEY (nosession) REFERENCES cg_session(nosession);


--
-- Name: fk_cg_rediger_cg_article; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY cg_rediger
    ADD CONSTRAINT fk_cg_rediger_cg_article FOREIGN KEY (articleid) REFERENCES cg_article(articleid);


--
-- Name: fk_cg_rediger_cg_auteur; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY cg_rediger
    ADD CONSTRAINT fk_cg_rediger_cg_auteur FOREIGN KEY (personneid) REFERENCES cg_auteur(personneid);


--
-- Name: fk_cg_session_cg_article; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY cg_session
    ADD CONSTRAINT fk_cg_session_cg_article FOREIGN KEY (articleid) REFERENCES cg_article(articleid);


--
-- Name: fk_cg_session_cg_congres; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY cg_session
    ADD CONSTRAINT fk_cg_session_cg_congres FOREIGN KEY (congresid) REFERENCES cg_congres(congresid);


--
-- Name: fk_cg_session_cg_participant; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY cg_session
    ADD CONSTRAINT fk_cg_session_cg_participant FOREIGN KEY (personneid) REFERENCES cg_participant(personneid);


--
-- Name: fk_cg_ville_cg_pays; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY cg_ville
    ADD CONSTRAINT fk_cg_ville_cg_pays FOREIGN KEY (paysid) REFERENCES cg_pays(paysid);
