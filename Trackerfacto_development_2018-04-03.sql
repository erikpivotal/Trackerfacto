--
-- PostgreSQL database dump
--

-- Dumped from database version 10.2
-- Dumped by pg_dump version 10.2

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
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


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: items; Type: TABLE; Schema: public; Owner: erik
--

CREATE TABLE items (
    id integer NOT NULL,
    content text NOT NULL,
    type_id integer NOT NULL,
    retro_id integer NOT NULL
);


ALTER TABLE items OWNER TO erik;

--
-- Name: items_id_seq; Type: SEQUENCE; Schema: public; Owner: erik
--

CREATE SEQUENCE items_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE items_id_seq OWNER TO erik;

--
-- Name: items_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: erik
--

ALTER SEQUENCE items_id_seq OWNED BY items.id;


--
-- Name: lut_item_types; Type: TABLE; Schema: public; Owner: erik
--

CREATE TABLE lut_item_types (
    id integer NOT NULL,
    type integer NOT NULL
);


ALTER TABLE lut_item_types OWNER TO erik;

--
-- Name: lut_item_types_id_seq; Type: SEQUENCE; Schema: public; Owner: erik
--

CREATE SEQUENCE lut_item_types_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE lut_item_types_id_seq OWNER TO erik;

--
-- Name: lut_item_types_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: erik
--

ALTER SEQUENCE lut_item_types_id_seq OWNED BY lut_item_types.id;


--
-- Name: retros; Type: TABLE; Schema: public; Owner: erik
--

CREATE TABLE retros (
    id integer NOT NULL,
    date date NOT NULL
);


ALTER TABLE retros OWNER TO erik;

--
-- Name: retros_id_seq; Type: SEQUENCE; Schema: public; Owner: erik
--

CREATE SEQUENCE retros_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE retros_id_seq OWNER TO erik;

--
-- Name: retros_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: erik
--

ALTER SEQUENCE retros_id_seq OWNED BY retros.id;


--
-- Name: items id; Type: DEFAULT; Schema: public; Owner: erik
--

ALTER TABLE ONLY items ALTER COLUMN id SET DEFAULT nextval('items_id_seq'::regclass);


--
-- Name: lut_item_types id; Type: DEFAULT; Schema: public; Owner: erik
--

ALTER TABLE ONLY lut_item_types ALTER COLUMN id SET DEFAULT nextval('lut_item_types_id_seq'::regclass);


--
-- Name: retros id; Type: DEFAULT; Schema: public; Owner: erik
--

ALTER TABLE ONLY retros ALTER COLUMN id SET DEFAULT nextval('retros_id_seq'::regclass);


--
-- Data for Name: items; Type: TABLE DATA; Schema: public; Owner: erik
--

COPY items (id, content, type_id, retro_id) FROM stdin;
\.


--
-- Data for Name: lut_item_types; Type: TABLE DATA; Schema: public; Owner: erik
--

COPY lut_item_types (id, type) FROM stdin;
1	1
2	2
3	3
\.


--
-- Data for Name: retros; Type: TABLE DATA; Schema: public; Owner: erik
--

COPY retros (id, date) FROM stdin;
1	2018-01-01
2	2018-01-02
3	2018-01-03
\.


--
-- Name: items_id_seq; Type: SEQUENCE SET; Schema: public; Owner: erik
--

SELECT pg_catalog.setval('items_id_seq', 1, false);


--
-- Name: lut_item_types_id_seq; Type: SEQUENCE SET; Schema: public; Owner: erik
--

SELECT pg_catalog.setval('lut_item_types_id_seq', 3, true);


--
-- Name: retros_id_seq; Type: SEQUENCE SET; Schema: public; Owner: erik
--

SELECT pg_catalog.setval('retros_id_seq', 3, true);


--
-- Name: items items_content_key; Type: CONSTRAINT; Schema: public; Owner: erik
--

ALTER TABLE ONLY items
    ADD CONSTRAINT items_content_key UNIQUE (content);


--
-- Name: lut_item_types lut_item_types_type_key; Type: CONSTRAINT; Schema: public; Owner: erik
--

ALTER TABLE ONLY lut_item_types
    ADD CONSTRAINT lut_item_types_type_key UNIQUE (type);


--
-- PostgreSQL database dump complete
--

