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
-- Name: reparaciones; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.reparaciones (
    tipo integer NOT NULL,
    diesel integer NOT NULL,
    electrico integer NOT NULL,
    gasolina integer NOT NULL,
    hibrido integer NOT NULL,
    nombre_repa character varying(255)
);


ALTER TABLE public.reparaciones OWNER TO postgres;

--
-- Data for Name: reparaciones; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.reparaciones (tipo, diesel, electrico, gasolina, hibrido, nombre_repa) FROM stdin;
1	120000	220000	120000	180000	Reparaciones del Sistema de Frenos
2	130000	230000	130000	190000	Servicio del Sistema de Refrigeracion
3	450000	800000	350000	700000	Reparaciones del Motor
4	210000	300000	210000	300000	Reparaciones de la Transmision
5	150000	250000	150000	200000	Reparacion del Sistema Electrico
6	120000	0	100000	450000	Reparaciones del Sistema de Escape
7	100000	100000	100000	100000	Reparacion de Neumaticos y Ruedas
8	180000	250000	180000	210000	Reparaciones de la Suspension y la Direccion
9	150000	180000	150000	180000	Reparacion del Sistema de Aire Acondicionado y Calefaccion
10	140000	0	130000	220000	Reparaciones del Sistema de Combustible
11	80000	80000	80000	80000	Reparacion y Reemplazo del Parabrisas y Cristales
\.


--
-- Name: reparaciones reparaciones_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reparaciones
    ADD CONSTRAINT reparaciones_pkey PRIMARY KEY (tipo);


--
-- PostgreSQL database dump complete
--

