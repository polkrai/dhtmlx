--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.16
-- Dumped by pg_dump version 9.5.16

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: dashboard; Type: DATABASE; Schema: -; Owner: miracle
--

CREATE DATABASE dashboard WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'en_US.UTF-8' LC_CTYPE = 'en_US.UTF-8';


ALTER DATABASE dashboard OWNER TO miracle;

\connect dashboard

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


--
-- Name: alamat_id_seq; Type: SEQUENCE; Schema: public; Owner: miracle
--

CREATE SEQUENCE public.alamat_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.alamat_id_seq OWNER TO miracle;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: alamat; Type: TABLE; Schema: public; Owner: miracle
--

CREATE TABLE public.alamat (
    id integer DEFAULT nextval('public.alamat_id_seq'::regclass) NOT NULL,
    nama character varying(128) NOT NULL,
    alamat character varying(128) NOT NULL
);


ALTER TABLE public.alamat OWNER TO miracle;

--
-- Data for Name: alamat; Type: TABLE DATA; Schema: public; Owner: miracle
--

COPY public.alamat (id, nama, alamat) FROM stdin;
1	BUDI	Jalan Proklamasi
2	ASRI	Jalan Merdeka
3	RARA	Jalan Kebangsaan
4	RADIT	Jalan Dewantoro
5	ISLAN	Jalan St. Syahrir
6	SANTI	Jalan Barat
7	TEST	Jalan BAGUS
9	9999	99999
10	Polkrai9	Alamat9
11	999911	9999911
\.


--
-- Name: alamat_id_seq; Type: SEQUENCE SET; Schema: public; Owner: miracle
--

SELECT pg_catalog.setval('public.alamat_id_seq', 1, false);


--
-- Name: alamat_id; Type: CONSTRAINT; Schema: public; Owner: miracle
--

ALTER TABLE ONLY public.alamat
    ADD CONSTRAINT alamat_id PRIMARY KEY (id);


--
-- Name: alamat_nama; Type: CONSTRAINT; Schema: public; Owner: miracle
--

ALTER TABLE ONLY public.alamat
    ADD CONSTRAINT alamat_nama UNIQUE (nama);


--
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

