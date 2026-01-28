--
-- PostgreSQL database dump
--

\restrict fU0h1f9JuFcCPq42LhceXBNyylDTa5VkewaW0PwwB23nELIe2ZllC29sDrFbTPX

-- Dumped from database version 18.1 (Debian 18.1-1.pgdg13+2)
-- Dumped by pg_dump version 18.1 (Debian 18.1-1.pgdg13+2)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: skol_info; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA skol_info;


ALTER SCHEMA skol_info OWNER TO postgres;

--
-- Name: anstallningstyp_enum; Type: TYPE; Schema: skol_info; Owner: postgres
--

CREATE TYPE skol_info.anstallningstyp_enum AS ENUM (
    'konsult',
    'lokal'
);


ALTER TYPE skol_info.anstallningstyp_enum OWNER TO postgres;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: klass; Type: TABLE; Schema: skol_info; Owner: postgres
--

CREATE TABLE skol_info.klass (
    startar date NOT NULL,
    aktiv boolean NOT NULL,
    omgang integer NOT NULL,
    klass_id integer NOT NULL,
    program_id integer NOT NULL,
    utbildningsledare_id integer NOT NULL,
    plats_id integer NOT NULL
);


ALTER TABLE skol_info.klass OWNER TO postgres;

--
-- Name: klass_klass_id_seq; Type: SEQUENCE; Schema: skol_info; Owner: postgres
--

CREATE SEQUENCE skol_info.klass_klass_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE skol_info.klass_klass_id_seq OWNER TO postgres;

--
-- Name: klass_klass_id_seq; Type: SEQUENCE OWNED BY; Schema: skol_info; Owner: postgres
--

ALTER SEQUENCE skol_info.klass_klass_id_seq OWNED BY skol_info.klass.klass_id;


--
-- Name: konsult; Type: TABLE; Schema: skol_info; Owner: postgres
--

CREATE TABLE skol_info.konsult (
    utbildare_id integer NOT NULL,
    konsultforetag_id integer NOT NULL
);


ALTER TABLE skol_info.konsult OWNER TO postgres;

--
-- Name: konsultforetag; Type: TABLE; Schema: skol_info; Owner: postgres
--

CREATE TABLE skol_info.konsultforetag (
    foretagsnamn character varying(255) NOT NULL,
    organisationsnummer integer NOT NULL,
    fskatt boolean NOT NULL,
    adress character varying(255) NOT NULL,
    timarvode integer NOT NULL,
    konsultforetag_id integer NOT NULL
);


ALTER TABLE skol_info.konsultforetag OWNER TO postgres;

--
-- Name: konsultforetag_konsultforetag_id_seq; Type: SEQUENCE; Schema: skol_info; Owner: postgres
--

CREATE SEQUENCE skol_info.konsultforetag_konsultforetag_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE skol_info.konsultforetag_konsultforetag_id_seq OWNER TO postgres;

--
-- Name: konsultforetag_konsultforetag_id_seq; Type: SEQUENCE OWNED BY; Schema: skol_info; Owner: postgres
--

ALTER SEQUENCE skol_info.konsultforetag_konsultforetag_id_seq OWNED BY skol_info.konsultforetag.konsultforetag_id;


--
-- Name: kurs_program; Type: TABLE; Schema: skol_info; Owner: postgres
--

CREATE TABLE skol_info.kurs_program (
    program_id integer NOT NULL,
    kurs_id integer NOT NULL
);


ALTER TABLE skol_info.kurs_program OWNER TO postgres;

--
-- Name: kurser; Type: TABLE; Schema: skol_info; Owner: postgres
--

CREATE TABLE skol_info.kurser (
    kusrnamn character varying(255) NOT NULL,
    kurskod integer NOT NULL,
    poang integer NOT NULL,
    kurs_beskrivning character varying(255) NOT NULL,
    kurs_id integer NOT NULL
);


ALTER TABLE skol_info.kurser OWNER TO postgres;

--
-- Name: kurser_kurs_id_seq; Type: SEQUENCE; Schema: skol_info; Owner: postgres
--

CREATE SEQUENCE skol_info.kurser_kurs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE skol_info.kurser_kurs_id_seq OWNER TO postgres;

--
-- Name: kurser_kurs_id_seq; Type: SEQUENCE OWNED BY; Schema: skol_info; Owner: postgres
--

ALTER SEQUENCE skol_info.kurser_kurs_id_seq OWNED BY skol_info.kurser.kurs_id;


--
-- Name: person; Type: TABLE; Schema: skol_info; Owner: postgres
--

CREATE TABLE skol_info.person (
    person_id integer NOT NULL,
    fornamn character varying(255) NOT NULL,
    efternamn character varying(255) NOT NULL,
    personnummer character(12) NOT NULL,
    email character varying(255) NOT NULL
);


ALTER TABLE skol_info.person OWNER TO postgres;

--
-- Name: person_person_id_seq; Type: SEQUENCE; Schema: skol_info; Owner: postgres
--

CREATE SEQUENCE skol_info.person_person_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE skol_info.person_person_id_seq OWNER TO postgres;

--
-- Name: person_person_id_seq; Type: SEQUENCE OWNED BY; Schema: skol_info; Owner: postgres
--

ALTER SEQUENCE skol_info.person_person_id_seq OWNED BY skol_info.person.person_id;


--
-- Name: platser; Type: TABLE; Schema: skol_info; Owner: postgres
--

CREATE TABLE skol_info.platser (
    ort character varying(255) NOT NULL,
    adress character varying(255) NOT NULL,
    anlaggningsnamn character varying(255) NOT NULL,
    plats_id integer NOT NULL
);


ALTER TABLE skol_info.platser OWNER TO postgres;

--
-- Name: platser_plats_id_seq; Type: SEQUENCE; Schema: skol_info; Owner: postgres
--

CREATE SEQUENCE skol_info.platser_plats_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE skol_info.platser_plats_id_seq OWNER TO postgres;

--
-- Name: platser_plats_id_seq; Type: SEQUENCE OWNED BY; Schema: skol_info; Owner: postgres
--

ALTER SEQUENCE skol_info.platser_plats_id_seq OWNED BY skol_info.platser.plats_id;


--
-- Name: program; Type: TABLE; Schema: skol_info; Owner: postgres
--

CREATE TABLE skol_info.program (
    programnamn character varying(255) NOT NULL,
    program_beskrivning character varying(255) NOT NULL,
    program_id integer NOT NULL
);


ALTER TABLE skol_info.program OWNER TO postgres;

--
-- Name: program_program_id_seq; Type: SEQUENCE; Schema: skol_info; Owner: postgres
--

CREATE SEQUENCE skol_info.program_program_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE skol_info.program_program_id_seq OWNER TO postgres;

--
-- Name: program_program_id_seq; Type: SEQUENCE OWNED BY; Schema: skol_info; Owner: postgres
--

ALTER SEQUENCE skol_info.program_program_id_seq OWNED BY skol_info.program.program_id;


--
-- Name: studenter; Type: TABLE; Schema: skol_info; Owner: postgres
--

CREATE TABLE skol_info.studenter (
    studentnummer integer NOT NULL,
    aktivstudent boolean NOT NULL,
    person_id integer NOT NULL,
    student_id integer NOT NULL,
    klass_id integer NOT NULL
);


ALTER TABLE skol_info.studenter OWNER TO postgres;

--
-- Name: studenter_student_id_seq; Type: SEQUENCE; Schema: skol_info; Owner: postgres
--

CREATE SEQUENCE skol_info.studenter_student_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE skol_info.studenter_student_id_seq OWNER TO postgres;

--
-- Name: studenter_student_id_seq; Type: SEQUENCE OWNED BY; Schema: skol_info; Owner: postgres
--

ALTER SEQUENCE skol_info.studenter_student_id_seq OWNED BY skol_info.studenter.student_id;


--
-- Name: utbildare; Type: TABLE; Schema: skol_info; Owner: postgres
--

CREATE TABLE skol_info.utbildare (
    specialisering character varying(255) NOT NULL,
    utbildare_id integer NOT NULL,
    person_id integer NOT NULL,
    anstallningstyp skol_info.anstallningstyp_enum NOT NULL
);


ALTER TABLE skol_info.utbildare OWNER TO postgres;

--
-- Name: utbildare_kurser; Type: TABLE; Schema: skol_info; Owner: postgres
--

CREATE TABLE skol_info.utbildare_kurser (
    utbildare_id integer NOT NULL,
    kurs_id integer NOT NULL
);


ALTER TABLE skol_info.utbildare_kurser OWNER TO postgres;

--
-- Name: utbildare_utbildare_id_seq; Type: SEQUENCE; Schema: skol_info; Owner: postgres
--

CREATE SEQUENCE skol_info.utbildare_utbildare_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE skol_info.utbildare_utbildare_id_seq OWNER TO postgres;

--
-- Name: utbildare_utbildare_id_seq; Type: SEQUENCE OWNED BY; Schema: skol_info; Owner: postgres
--

ALTER SEQUENCE skol_info.utbildare_utbildare_id_seq OWNED BY skol_info.utbildare.utbildare_id;


--
-- Name: utbildningsledare; Type: TABLE; Schema: skol_info; Owner: postgres
--

CREATE TABLE skol_info.utbildningsledare (
    utbildningsledare_id integer NOT NULL,
    person_id integer NOT NULL
);


ALTER TABLE skol_info.utbildningsledare OWNER TO postgres;

--
-- Name: utbildningsledare_utbildningsledare_id_seq; Type: SEQUENCE; Schema: skol_info; Owner: postgres
--

CREATE SEQUENCE skol_info.utbildningsledare_utbildningsledare_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE skol_info.utbildningsledare_utbildningsledare_id_seq OWNER TO postgres;

--
-- Name: utbildningsledare_utbildningsledare_id_seq; Type: SEQUENCE OWNED BY; Schema: skol_info; Owner: postgres
--

ALTER SEQUENCE skol_info.utbildningsledare_utbildningsledare_id_seq OWNED BY skol_info.utbildningsledare.utbildningsledare_id;


--
-- Name: klass klass_id; Type: DEFAULT; Schema: skol_info; Owner: postgres
--

ALTER TABLE ONLY skol_info.klass ALTER COLUMN klass_id SET DEFAULT nextval('skol_info.klass_klass_id_seq'::regclass);


--
-- Name: konsultforetag konsultforetag_id; Type: DEFAULT; Schema: skol_info; Owner: postgres
--

ALTER TABLE ONLY skol_info.konsultforetag ALTER COLUMN konsultforetag_id SET DEFAULT nextval('skol_info.konsultforetag_konsultforetag_id_seq'::regclass);


--
-- Name: kurser kurs_id; Type: DEFAULT; Schema: skol_info; Owner: postgres
--

ALTER TABLE ONLY skol_info.kurser ALTER COLUMN kurs_id SET DEFAULT nextval('skol_info.kurser_kurs_id_seq'::regclass);


--
-- Name: person person_id; Type: DEFAULT; Schema: skol_info; Owner: postgres
--

ALTER TABLE ONLY skol_info.person ALTER COLUMN person_id SET DEFAULT nextval('skol_info.person_person_id_seq'::regclass);


--
-- Name: platser plats_id; Type: DEFAULT; Schema: skol_info; Owner: postgres
--

ALTER TABLE ONLY skol_info.platser ALTER COLUMN plats_id SET DEFAULT nextval('skol_info.platser_plats_id_seq'::regclass);


--
-- Name: program program_id; Type: DEFAULT; Schema: skol_info; Owner: postgres
--

ALTER TABLE ONLY skol_info.program ALTER COLUMN program_id SET DEFAULT nextval('skol_info.program_program_id_seq'::regclass);


--
-- Name: studenter student_id; Type: DEFAULT; Schema: skol_info; Owner: postgres
--

ALTER TABLE ONLY skol_info.studenter ALTER COLUMN student_id SET DEFAULT nextval('skol_info.studenter_student_id_seq'::regclass);


--
-- Name: utbildare utbildare_id; Type: DEFAULT; Schema: skol_info; Owner: postgres
--

ALTER TABLE ONLY skol_info.utbildare ALTER COLUMN utbildare_id SET DEFAULT nextval('skol_info.utbildare_utbildare_id_seq'::regclass);


--
-- Name: utbildningsledare utbildningsledare_id; Type: DEFAULT; Schema: skol_info; Owner: postgres
--

ALTER TABLE ONLY skol_info.utbildningsledare ALTER COLUMN utbildningsledare_id SET DEFAULT nextval('skol_info.utbildningsledare_utbildningsledare_id_seq'::regclass);


--
-- Name: klass klass_pkey; Type: CONSTRAINT; Schema: skol_info; Owner: postgres
--

ALTER TABLE ONLY skol_info.klass
    ADD CONSTRAINT klass_pkey PRIMARY KEY (klass_id);


--
-- Name: konsult konsult_pkey; Type: CONSTRAINT; Schema: skol_info; Owner: postgres
--

ALTER TABLE ONLY skol_info.konsult
    ADD CONSTRAINT konsult_pkey PRIMARY KEY (utbildare_id, konsultforetag_id);


--
-- Name: konsultforetag konsultforetag_organisationsnummer_key; Type: CONSTRAINT; Schema: skol_info; Owner: postgres
--

ALTER TABLE ONLY skol_info.konsultforetag
    ADD CONSTRAINT konsultforetag_organisationsnummer_key UNIQUE (organisationsnummer);


--
-- Name: konsultforetag konsultforetag_pkey; Type: CONSTRAINT; Schema: skol_info; Owner: postgres
--

ALTER TABLE ONLY skol_info.konsultforetag
    ADD CONSTRAINT konsultforetag_pkey PRIMARY KEY (konsultforetag_id);


--
-- Name: kurser kurser_kurskod_key; Type: CONSTRAINT; Schema: skol_info; Owner: postgres
--

ALTER TABLE ONLY skol_info.kurser
    ADD CONSTRAINT kurser_kurskod_key UNIQUE (kurskod);


--
-- Name: kurser kurser_pkey; Type: CONSTRAINT; Schema: skol_info; Owner: postgres
--

ALTER TABLE ONLY skol_info.kurser
    ADD CONSTRAINT kurser_pkey PRIMARY KEY (kurs_id);


--
-- Name: person person_email_key; Type: CONSTRAINT; Schema: skol_info; Owner: postgres
--

ALTER TABLE ONLY skol_info.person
    ADD CONSTRAINT person_email_key UNIQUE (email);


--
-- Name: person person_personnummer_key; Type: CONSTRAINT; Schema: skol_info; Owner: postgres
--

ALTER TABLE ONLY skol_info.person
    ADD CONSTRAINT person_personnummer_key UNIQUE (personnummer);


--
-- Name: person person_pkey; Type: CONSTRAINT; Schema: skol_info; Owner: postgres
--

ALTER TABLE ONLY skol_info.person
    ADD CONSTRAINT person_pkey PRIMARY KEY (person_id);


--
-- Name: platser platser_pkey; Type: CONSTRAINT; Schema: skol_info; Owner: postgres
--

ALTER TABLE ONLY skol_info.platser
    ADD CONSTRAINT platser_pkey PRIMARY KEY (plats_id);


--
-- Name: program program_pkey; Type: CONSTRAINT; Schema: skol_info; Owner: postgres
--

ALTER TABLE ONLY skol_info.program
    ADD CONSTRAINT program_pkey PRIMARY KEY (program_id);


--
-- Name: studenter studenter_pkey; Type: CONSTRAINT; Schema: skol_info; Owner: postgres
--

ALTER TABLE ONLY skol_info.studenter
    ADD CONSTRAINT studenter_pkey PRIMARY KEY (student_id);


--
-- Name: utbildare_kurser utbildare_kurser_pkey; Type: CONSTRAINT; Schema: skol_info; Owner: postgres
--

ALTER TABLE ONLY skol_info.utbildare_kurser
    ADD CONSTRAINT utbildare_kurser_pkey PRIMARY KEY (utbildare_id, kurs_id);


--
-- Name: utbildare utbildare_pkey; Type: CONSTRAINT; Schema: skol_info; Owner: postgres
--

ALTER TABLE ONLY skol_info.utbildare
    ADD CONSTRAINT utbildare_pkey PRIMARY KEY (utbildare_id);


--
-- Name: utbildningsledare utbildningsledare_pkey; Type: CONSTRAINT; Schema: skol_info; Owner: postgres
--

ALTER TABLE ONLY skol_info.utbildningsledare
    ADD CONSTRAINT utbildningsledare_pkey PRIMARY KEY (utbildningsledare_id);


--
-- Name: klass klass_plats_id_fkey; Type: FK CONSTRAINT; Schema: skol_info; Owner: postgres
--

ALTER TABLE ONLY skol_info.klass
    ADD CONSTRAINT klass_plats_id_fkey FOREIGN KEY (plats_id) REFERENCES skol_info.platser(plats_id);


--
-- Name: klass klass_program_id_fkey; Type: FK CONSTRAINT; Schema: skol_info; Owner: postgres
--

ALTER TABLE ONLY skol_info.klass
    ADD CONSTRAINT klass_program_id_fkey FOREIGN KEY (program_id) REFERENCES skol_info.program(program_id);


--
-- Name: klass klass_utbildningsledare_id_fkey; Type: FK CONSTRAINT; Schema: skol_info; Owner: postgres
--

ALTER TABLE ONLY skol_info.klass
    ADD CONSTRAINT klass_utbildningsledare_id_fkey FOREIGN KEY (utbildningsledare_id) REFERENCES skol_info.utbildningsledare(utbildningsledare_id);


--
-- Name: konsult konsult_konsultforetag_id_fkey; Type: FK CONSTRAINT; Schema: skol_info; Owner: postgres
--

ALTER TABLE ONLY skol_info.konsult
    ADD CONSTRAINT konsult_konsultforetag_id_fkey FOREIGN KEY (konsultforetag_id) REFERENCES skol_info.konsultforetag(konsultforetag_id);


--
-- Name: konsult konsult_utbildare_id_fkey; Type: FK CONSTRAINT; Schema: skol_info; Owner: postgres
--

ALTER TABLE ONLY skol_info.konsult
    ADD CONSTRAINT konsult_utbildare_id_fkey FOREIGN KEY (utbildare_id) REFERENCES skol_info.utbildare(utbildare_id);


--
-- Name: kurs_program kurs_program_kurs_id_fkey; Type: FK CONSTRAINT; Schema: skol_info; Owner: postgres
--

ALTER TABLE ONLY skol_info.kurs_program
    ADD CONSTRAINT kurs_program_kurs_id_fkey FOREIGN KEY (kurs_id) REFERENCES skol_info.kurser(kurs_id);


--
-- Name: kurs_program kurs_program_program_id_fkey; Type: FK CONSTRAINT; Schema: skol_info; Owner: postgres
--

ALTER TABLE ONLY skol_info.kurs_program
    ADD CONSTRAINT kurs_program_program_id_fkey FOREIGN KEY (program_id) REFERENCES skol_info.program(program_id);


--
-- Name: studenter studenter_klass_id_fkey; Type: FK CONSTRAINT; Schema: skol_info; Owner: postgres
--

ALTER TABLE ONLY skol_info.studenter
    ADD CONSTRAINT studenter_klass_id_fkey FOREIGN KEY (klass_id) REFERENCES skol_info.klass(klass_id);


--
-- Name: studenter studenter_person_id_fkey; Type: FK CONSTRAINT; Schema: skol_info; Owner: postgres
--

ALTER TABLE ONLY skol_info.studenter
    ADD CONSTRAINT studenter_person_id_fkey FOREIGN KEY (person_id) REFERENCES skol_info.person(person_id);


--
-- Name: utbildare_kurser utbildare_kurser_kurs_id_fkey; Type: FK CONSTRAINT; Schema: skol_info; Owner: postgres
--

ALTER TABLE ONLY skol_info.utbildare_kurser
    ADD CONSTRAINT utbildare_kurser_kurs_id_fkey FOREIGN KEY (kurs_id) REFERENCES skol_info.kurser(kurs_id);


--
-- Name: utbildare_kurser utbildare_kurser_utbildare_id_fkey; Type: FK CONSTRAINT; Schema: skol_info; Owner: postgres
--

ALTER TABLE ONLY skol_info.utbildare_kurser
    ADD CONSTRAINT utbildare_kurser_utbildare_id_fkey FOREIGN KEY (utbildare_id) REFERENCES skol_info.utbildare(utbildare_id);


--
-- Name: utbildare utbildare_person_id_fkey; Type: FK CONSTRAINT; Schema: skol_info; Owner: postgres
--

ALTER TABLE ONLY skol_info.utbildare
    ADD CONSTRAINT utbildare_person_id_fkey FOREIGN KEY (person_id) REFERENCES skol_info.person(person_id);


--
-- Name: utbildningsledare utbildningsledare_person_id_fkey; Type: FK CONSTRAINT; Schema: skol_info; Owner: postgres
--

ALTER TABLE ONLY skol_info.utbildningsledare
    ADD CONSTRAINT utbildningsledare_person_id_fkey FOREIGN KEY (person_id) REFERENCES skol_info.person(person_id);


--
-- PostgreSQL database dump complete
--

\unrestrict fU0h1f9JuFcCPq42LhceXBNyylDTa5VkewaW0PwwB23nELIe2ZllC29sDrFbTPX

