--
-- PostgreSQL database dump
--

-- Dumped from database version 16.1
-- Dumped by pg_dump version 16.1

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: registro; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.registro (
    id integer NOT NULL,
    ano_fabr integer NOT NULL,
    kilometraje integer NOT NULL,
    marca character varying(255) NOT NULL,
    modelo character varying(255) NOT NULL,
    num_asientos integer NOT NULL,
    patente character varying(255) NOT NULL,
    tipo character varying(255) NOT NULL,
    tipo_motor character varying(255) NOT NULL,
    bono character varying(255)
);


ALTER TABLE public.registro OWNER TO postgres;

--
-- Name: registro_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.registro_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.registro_id_seq OWNER TO postgres;

--
-- Name: registro_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.registro_id_seq OWNED BY public.registro.id;


--
-- Name: registro id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.registro ALTER COLUMN id SET DEFAULT nextval('public.registro_id_seq'::regclass);


--
-- Data for Name: registro; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.registro (id, ano_fabr, kilometraje, marca, modelo, num_asientos, patente, tipo, tipo_motor, bono) FROM stdin;
1	2000	1000000	ford	v16	2	hola	sedan	gasolina	no
6	2000	1000	nissan	rgb	4	tonoto	electrico	gasolina	si
\.


--
-- Name: registro_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.registro_id_seq', 6, true);


--
-- Name: registro registro_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.registro
    ADD CONSTRAINT registro_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

