 
--
-- Name: cg_article; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE cg_article (
    articleid integer NOT NULL,
    themeid integer NOT NULL,
    typeid integer NOT NULL,
    titre character varying(100),
    contenu text
);



--
-- Name: cg_article_articleid_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE cg_article_articleid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;



ALTER SEQUENCE cg_article_articleid_seq OWNED BY cg_article.articleid;


--
-- Name: cg_article_articleid_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('cg_article_articleid_seq', 10, true);

--
-- Name: cg_assister; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE cg_assister (
    personneid integer NOT NULL,
    nosession integer NOT NULL
);



--
-- Name: cg_auteur; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE cg_auteur (
    personneid integer NOT NULL,
    telephone character varying(20),
    nom character varying(80),
    prenom character varying(80),
    email character varying(100)
);



--
-- Name: cg_batiment; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE cg_batiment (
    batimentid integer NOT NULL,
    villeid integer NOT NULL,
    nom character varying(50),
    adresse text
);



--
-- Name: cg_batiment_batimentid_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE cg_batiment_batimentid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;



--
-- Name: cg_batiment_batimentid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE cg_batiment_batimentid_seq OWNED BY cg_batiment.batimentid;


--
-- Name: cg_batiment_batimentid_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('cg_batiment_batimentid_seq', 14, true);


--
-- Name: cg_congres; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE cg_congres (
    congresid integer NOT NULL,
    domaineid integer NOT NULL,
    batimentid integer NOT NULL,
    nom character varying(100),
    datedebut date,
    datefin date
);


--
-- Name: cg_congres_congresid_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE cg_congres_congresid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;



--
-- Name: cg_congres_congresid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE cg_congres_congresid_seq OWNED BY cg_congres.congresid;


--
-- Name: cg_congres_congresid_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('cg_congres_congresid_seq', 4, true);


--
-- Name: cg_domaine; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE cg_domaine (
    domaineid integer NOT NULL,
    libelle character varying(80)
);



--
-- Name: cg_domaine_domaineid_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE cg_domaine_domaineid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;



--
-- Name: cg_domaine_domaineid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE cg_domaine_domaineid_seq OWNED BY cg_domaine.domaineid;


--
-- Name: cg_domaine_domaineid_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('cg_domaine_domaineid_seq', 14, true);


--
-- Name: cg_employeur; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE cg_employeur (
    noemployeur integer NOT NULL,
    villeid integer NOT NULL,
    nom character varying(100)
);



--
-- Name: cg_employeur_noemployeur_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE cg_employeur_noemployeur_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: cg_employeur_noemployeur_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE cg_employeur_noemployeur_seq OWNED BY cg_employeur.noemployeur;


--
-- Name: cg_employeur_noemployeur_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('cg_employeur_noemployeur_seq', 13, true);


--
-- Name: cg_inscription; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE cg_inscription (
    congresid integer NOT NULL,
    inscriptionid integer NOT NULL,
    personneid integer NOT NULL,
    dateinscription date,
    etat character(32)
);


--
-- Name: cg_participant; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE cg_participant (
    personneid integer NOT NULL,
    villeid integer NOT NULL,
    noemployeur integer,
    adresse character varying(255),
    nom character varying(80),
    prenom character varying(80),
    email character varying(100)
);


--
-- Name: cg_pays; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE cg_pays (
    paysid integer NOT NULL,
    nom character varying(100)
);



--
-- Name: cg_pays_paysid_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE cg_pays_paysid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;



--
-- Name: cg_pays_paysid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE cg_pays_paysid_seq OWNED BY cg_pays.paysid;


--
-- Name: cg_pays_paysid_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('cg_pays_paysid_seq', 45, true);


--
-- Name: cg_personne; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE cg_personne (
    personneid integer NOT NULL,
    nom character varying(80),
    prenom character varying(80),
    email character varying(100)
);


--
-- Name: cg_personne_personneid_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE cg_personne_personneid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: cg_personne_personneid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE cg_personne_personneid_seq OWNED BY cg_personne.personneid;


--
-- Name: cg_personne_personneid_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('cg_personne_personneid_seq', 44, true);


--
-- Name: cg_presenter; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE cg_presenter (
    personneid integer NOT NULL,
    nosession integer NOT NULL
);


--
-- Name: cg_rediger; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE cg_rediger (
    personneid integer NOT NULL,
    articleid integer NOT NULL
);


--
-- Name: cg_session; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE cg_session (
    nosession integer NOT NULL,
    congresid integer NOT NULL,
    articleid integer NOT NULL,
    personneid integer NOT NULL,
    datehrsession timestamp(6) without time zone,
    duree integer
);



--
-- Name: cg_session_nosession_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE cg_session_nosession_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;



--
-- Name: cg_session_nosession_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE cg_session_nosession_seq OWNED BY cg_session.nosession;


--
-- Name: cg_session_nosession_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('cg_session_nosession_seq', 9, true);


--
-- Name: cg_theme; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE cg_theme (
    themeid integer NOT NULL,
    libelle character varying(100)
);



--
-- Name: cg_theme_themeid_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE cg_theme_themeid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: cg_theme_themeid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE cg_theme_themeid_seq OWNED BY cg_theme.themeid;


--
-- Name: cg_theme_themeid_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('cg_theme_themeid_seq', 23, true);


--
-- Name: cg_type; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE cg_type (
    typeid integer NOT NULL,
    libelle character varying(50)
);


--
-- Name: cg_type_typeid_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE cg_type_typeid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;



--
-- Name: cg_type_typeid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE cg_type_typeid_seq OWNED BY cg_type.typeid;


--
-- Name: cg_type_typeid_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('cg_type_typeid_seq', 4, true);


--
-- Name: cg_ville; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE cg_ville (
    villeid integer NOT NULL,
    paysid integer NOT NULL,
    codepostal character varying(10),
    nom character varying(80)
);



--
-- Name: cg_ville_villeid_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE cg_ville_villeid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;



--
-- Name: cg_ville_villeid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE cg_ville_villeid_seq OWNED BY cg_ville.villeid;


--
-- Name: cg_ville_villeid_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('cg_ville_villeid_seq', 36914, true);


--
-- Name: articleid; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE cg_article ALTER COLUMN articleid SET DEFAULT nextval('cg_article_articleid_seq'::regclass);

--
-- Name: batimentid; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE cg_batiment ALTER COLUMN batimentid SET DEFAULT nextval('cg_batiment_batimentid_seq'::regclass);


--
-- Name: congresid; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE cg_congres ALTER COLUMN congresid SET DEFAULT nextval('cg_congres_congresid_seq'::regclass);


--
-- Name: domaineid; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE cg_domaine ALTER COLUMN domaineid SET DEFAULT nextval('cg_domaine_domaineid_seq'::regclass);


--
-- Name: noemployeur; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE cg_employeur ALTER COLUMN noemployeur SET DEFAULT nextval('cg_employeur_noemployeur_seq'::regclass);


--
-- Name: paysid; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE cg_pays ALTER COLUMN paysid SET DEFAULT nextval('cg_pays_paysid_seq'::regclass);


--
-- Name: personneid; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE cg_personne ALTER COLUMN personneid SET DEFAULT nextval('cg_personne_personneid_seq'::regclass);


--
-- Name: nosession; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE cg_session ALTER COLUMN nosession SET DEFAULT nextval('cg_session_nosession_seq'::regclass);


--
-- Name: themeid; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE cg_theme ALTER COLUMN themeid SET DEFAULT nextval('cg_theme_themeid_seq'::regclass);


--
-- Name: typeid; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE cg_type ALTER COLUMN typeid SET DEFAULT nextval('cg_type_typeid_seq'::regclass);


--
-- Name: villeid; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE cg_ville ALTER COLUMN villeid SET DEFAULT nextval('cg_ville_villeid_seq'::regclass);

