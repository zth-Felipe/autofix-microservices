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
-- Name: historial; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.historial (
    id bigint NOT NULL,
    fecha_cliente date,
    fecha_ingreso date,
    fecha_salida date,
    hora_cliente time(6) without time zone,
    hora_ingreso time(6) without time zone,
    hora_salida time(6) without time zone,
    monto_total integer NOT NULL,
    patente character varying(255),
    monto_descuento integer,
    monto_recargo integer,
    monto_iva integer,
    costo_total integer
);


ALTER TABLE public.historial OWNER TO postgres;

--
-- Name: historial_detallado; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.historial_detallado (
    id integer NOT NULL,
    id_historial bigint,
    patente character varying(255),
    id_reparacion integer,
    fecha_reparacion date,
    hora_reparacion time without time zone,
    monto_reparacion double precision
);


ALTER TABLE public.historial_detallado OWNER TO postgres;

--
-- Name: historial_detallado_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.historial_detallado_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.historial_detallado_id_seq OWNER TO postgres;

--
-- Name: historial_detallado_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.historial_detallado_id_seq OWNED BY public.historial_detallado.id;


--
-- Name: historial_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.historial_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.historial_id_seq OWNER TO postgres;

--
-- Name: historial_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.historial_id_seq OWNED BY public.historial.id;


--
-- Name: re_reparaciones; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.re_reparaciones (
    tipo_repa integer NOT NULL,
    furgoneta integer NOT NULL,
    hatchback integer NOT NULL,
    nombre_reparacion character varying(255),
    pickup integer NOT NULL,
    sedan integer NOT NULL,
    suv integer NOT NULL,
    total integer NOT NULL,
    sedan_cash integer NOT NULL,
    hatchback_cash integer NOT NULL,
    suv_cash integer NOT NULL,
    pickup_cash integer NOT NULL,
    furgoneta_cash integer NOT NULL
);


ALTER TABLE public.re_reparaciones OWNER TO postgres;

--
-- Name: reparacion_temp; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.reparacion_temp (
    tipo integer NOT NULL,
    gasolina integer,
    diesel integer,
    hibrido integer,
    electrico integer
);


ALTER TABLE public.reparacion_temp OWNER TO postgres;

--
-- Name: rm_reparaciones; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.rm_reparaciones (
    tipo_repa integer NOT NULL,
    diesel integer NOT NULL,
    electrico integer NOT NULL,
    gasolina integer NOT NULL,
    hibrido integer NOT NULL,
    nombre_reparacion character varying(255),
    total integer NOT NULL
);


ALTER TABLE public.rm_reparaciones OWNER TO postgres;

--
-- Name: rt_reparaciones; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.rt_reparaciones (
    tipo_repa integer NOT NULL,
    mes integer,
    cantidad_repa integer,
    monto integer,
    ano integer
);


ALTER TABLE public.rt_reparaciones OWNER TO postgres;

--
-- Name: vehiculo_temp; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.vehiculo_temp (
    id bigint NOT NULL,
    patente character varying(255),
    marca character varying(255),
    modelo character varying(255),
    tipo character varying(255),
    ano_fabr integer,
    tipo_motor character varying(255),
    num_asientos integer,
    bono character varying(255),
    kilometraje integer
);


ALTER TABLE public.vehiculo_temp OWNER TO postgres;

--
-- Name: historial id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.historial ALTER COLUMN id SET DEFAULT nextval('public.historial_id_seq'::regclass);


--
-- Name: historial_detallado id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.historial_detallado ALTER COLUMN id SET DEFAULT nextval('public.historial_detallado_id_seq'::regclass);


--
-- Data for Name: historial; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.historial (id, fecha_cliente, fecha_ingreso, fecha_salida, hora_cliente, hora_ingreso, hora_salida, monto_total, patente, monto_descuento, monto_recargo, monto_iva, costo_total) FROM stdin;
9	2020-04-20	2020-04-13	2020-04-13	19:00:00	19:00:00	19:00:00	1999999	hola	0	0	0	0
10	2020-04-20	2020-04-13	2020-04-13	19:00:00	19:00:00	19:00:00	1999999	hola	0	0	0	0
11	2020-04-20	2020-04-13	2020-04-13	19:00:00	19:00:00	19:00:00	1999999	hola	0	0	0	0
12	2020-04-20	2020-04-13	2020-04-13	19:00:00	19:00:00	19:00:00	1999999	hola	0	0	0	0
13	2020-04-20	2020-04-13	2020-04-13	19:00:00	19:00:00	19:00:00	1999999	hola	0	0	0	0
14	2020-04-20	2020-04-13	2020-04-13	19:00:00	19:00:00	19:00:00	210000	hola	0	0	0	0
15	2020-04-20	2020-04-13	2020-04-13	19:00:00	19:00:00	19:00:00	150000	hola	0	0	0	0
16	2020-04-20	2020-04-13	2020-04-13	19:00:00	19:00:00	19:00:00	350000	hola	0	0	0	0
17	2020-04-20	2020-04-13	2020-04-13	19:00:00	19:00:00	19:00:00	130000	hola	0	0	0	0
18	2020-04-20	2020-04-13	2020-04-13	19:00:00	19:00:00	19:00:00	150000	hola	0	0	0	0
23	2020-05-20	2020-04-13	2020-05-20	19:00:00	19:00:00	19:00:00	840000	hola	168000	0	127680	799680
\.


--
-- Data for Name: historial_detallado; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.historial_detallado (id, id_historial, patente, id_reparacion, fecha_reparacion, hora_reparacion, monto_reparacion) FROM stdin;
1	23	hola	1	2020-04-13	19:00:00	120000
2	23	hola	5	2020-04-13	19:00:00	150000
3	23	hola	3	2020-04-13	19:00:00	350000
4	23	hola	1	2020-04-13	19:00:00	120000
5	23	hola	7	2020-04-13	19:00:00	100000
\.


--
-- Data for Name: re_reparaciones; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.re_reparaciones (tipo_repa, furgoneta, hatchback, nombre_reparacion, pickup, sedan, suv, total, sedan_cash, hatchback_cash, suv_cash, pickup_cash, furgoneta_cash) FROM stdin;
2	0	0	Servicio del Sistema de Refrigeracion	0	1	0	130000	0	0	0	0	0
4	0	0	Reparaciones de la Transmision	0	0	0	0	0	0	0	0	0
6	0	0	Reparaciones del Sistema de Escape	0	0	0	0	0	0	0	0	0
8	0	0	Reparaciones de la Suspension y la Direccion	0	0	0	0	0	0	0	0	0
9	0	0	Reparacion del Sistema de Aire Acondicionado y Calefaccion	0	1	0	150000	0	0	0	0	0
10	0	0	Reparaciones del Sistema de Combustible	0	0	0	0	0	0	0	0	0
11	0	0	Reparacion y Reemplazo del Parabrisas y Cristales	0	0	0	0	0	0	0	0	0
5	0	0	Reparacion del Sistema Electrico	0	2	0	300000	150000	0	0	0	0
3	0	0	Reparaciones del Motor	0	3	0	1050000	350000	0	0	0	0
1	0	0	Reparaciones del Sistema de Frenos	0	2	0	240000	240000	0	0	0	0
7	0	0	Reparacion de Neumaticos y Ruedas	0	1	0	100000	100000	0	0	0	0
\.


--
-- Data for Name: reparacion_temp; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.reparacion_temp (tipo, gasolina, diesel, hibrido, electrico) FROM stdin;
1	120000	120000	180000	220000
2	130000	130000	190000	230000
3	350000	450000	700000	800000
4	210000	210000	300000	300000
5	150000	150000	200000	250000
6	100000	120000	450000	0
7	100000	100000	100000	100000
8	180000	180000	210000	250000
9	150000	150000	180000	180000
10	130000	140000	220000	0
11	80000	80000	80000	80000
\.


--
-- Data for Name: rm_reparaciones; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.rm_reparaciones (tipo_repa, diesel, electrico, gasolina, hibrido, nombre_reparacion, total) FROM stdin;
6	0	0	0	0	Reparaciones del Sistema de Escape	0
8	0	0	0	0	Reparaciones de la Suspension y la Direccion	0
10	0	0	0	0	Reparaciones del Sistema de Combustible	0
11	0	0	0	0	Reparacion y Reemplazo del Parabrisas y Cristales	0
4	0	0	0	0	Reparaciones de la Transmision	0
9	0	0	1	0	Reparacion del Sistema de Aire Acondicionado y Calefaccion	150000
2	0	0	1	0	Servicio del Sistema de Refrigeracion	130000
5	0	0	1	0	Reparacion del Sistema Electrico	300000
3	0	0	2	0	Reparaciones del Motor	1050000
1	0	0	0	0	Reparaciones del Sistema de Frenos	240000
7	0	0	0	0	Reparacion de Neumaticos y Ruedas	100000
\.


--
-- Data for Name: rt_reparaciones; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.rt_reparaciones (tipo_repa, mes, cantidad_repa, monto, ano) FROM stdin;
\.


--
-- Data for Name: vehiculo_temp; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.vehiculo_temp (id, patente, marca, modelo, tipo, ano_fabr, tipo_motor, num_asientos, bono, kilometraje) FROM stdin;
1	hola	ford	v16	sedan	2000	gasolina	2	no	1000000
\.


--
-- Name: historial_detallado_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.historial_detallado_id_seq', 5, true);


--
-- Name: historial_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.historial_id_seq', 23, true);


--
-- Name: historial_detallado historial_detallado_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.historial_detallado
    ADD CONSTRAINT historial_detallado_pkey PRIMARY KEY (id);


--
-- Name: historial historial_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.historial
    ADD CONSTRAINT historial_pkey PRIMARY KEY (id);


--
-- Name: re_reparaciones re_reparaciones_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.re_reparaciones
    ADD CONSTRAINT re_reparaciones_pkey PRIMARY KEY (tipo_repa);


--
-- Name: reparacion_temp reparacion_temp_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reparacion_temp
    ADD CONSTRAINT reparacion_temp_pkey PRIMARY KEY (tipo);


--
-- Name: rm_reparaciones rm_reparaciones_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rm_reparaciones
    ADD CONSTRAINT rm_reparaciones_pkey PRIMARY KEY (tipo_repa);


--
-- Name: rt_reparaciones rt_reparaciones_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rt_reparaciones
    ADD CONSTRAINT rt_reparaciones_pkey PRIMARY KEY (tipo_repa);


--
-- Name: vehiculo_temp vehiculo_temp_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.vehiculo_temp
    ADD CONSTRAINT vehiculo_temp_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

