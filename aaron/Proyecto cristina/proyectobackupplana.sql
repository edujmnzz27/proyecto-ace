--
-- PostgreSQL database dump
--

-- Dumped from database version 14.17 (Ubuntu 14.17-0ubuntu0.22.04.1)
-- Dumped by pg_dump version 14.17 (Ubuntu 14.17-0ubuntu0.22.04.1)

-- Started on 2025-05-15 12:00:57 CEST

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

--
-- TOC entry 3379 (class 1262 OID 122952)
-- Name: proyecto; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE proyecto WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'en_US.UTF-8';


ALTER DATABASE proyecto OWNER TO postgres;

\connect proyecto

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

--
-- TOC entry 3370 (class 0 OID 122953)
-- Dependencies: 209
-- Data for Name: cliente; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.cliente (codcli, nombre, apellido, direccion, mail) VALUES ('1   ', 'Pepe', 'García', 'Ausiach March, 23', 'pep@gmailx.com');
INSERT INTO public.cliente (codcli, nombre, apellido, direccion, mail) VALUES ('2   ', 'Lucas', 'Iniesta', 'Ausiach March, 23', 'lui@gmailx.com');
INSERT INTO public.cliente (codcli, nombre, apellido, direccion, mail) VALUES ('3   ', 'Ana', 'Lorca Sanz', 'Ausiach March, 23', 'annta@gmailx.com');


--
-- TOC entry 3372 (class 0 OID 122963)
-- Dependencies: 211
-- Data for Name: coche; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.coche (matricula, modelo, combustible, motor, plazas, maletas, foto, codgama, coste) VALUES ('1111AAA', 'Volvo z', 'F', 'A', 5, 3, 'foto1.jpg', 'F1', 20.00);
INSERT INTO public.coche (matricula, modelo, combustible, motor, plazas, maletas, foto, codgama, coste) VALUES ('1112AAA', 'Volvo EX40', 'E', 'A', 5, 3, 'foto2.jpg', 'F1', 25.00);
INSERT INTO public.coche (matricula, modelo, combustible, motor, plazas, maletas, foto, codgama, coste) VALUES ('1001BBB', 'Ford Focus', 'H', 'A', 5, 3, 'foto4.jpg', 'F1', 25.00);
INSERT INTO public.coche (matricula, modelo, combustible, motor, plazas, maletas, foto, codgama, coste) VALUES ('1003TTT', 'Citroen e-c3', 'E', 'A', 7, 4, 'foto5.jpg', 'T1', 30.00);
INSERT INTO public.coche (matricula, modelo, combustible, motor, plazas, maletas, foto, codgama, coste) VALUES ('3003LLL', 'Mercedes', 'E', 'A', 7, 4, 'foto6.jpg', 'L1', 40.00);
INSERT INTO public.coche (matricula, modelo, combustible, motor, plazas, maletas, foto, codgama, coste) VALUES ('3333BBB', 'Volvo XC90', 'E', 'A', 7, 4, 'foto7.jpg', 'L1', 50.00);
INSERT INTO public.coche (matricula, modelo, combustible, motor, plazas, maletas, foto, codgama, coste) VALUES ('4444NNN', 'Volvo XC1', 'H', 'A', 5, 4, 'foto10.jpg', 'F1', 25.00);
INSERT INTO public.coche (matricula, modelo, combustible, motor, plazas, maletas, foto, codgama, coste) VALUES ('1113AAA', 'Audi A3', 'H', 'M', 5, 4, 'foto3.jpg', 'F2', 30.00);
INSERT INTO public.coche (matricula, modelo, combustible, motor, plazas, maletas, foto, codgama, coste) VALUES ('6666NNN', 'Fiesta', 'F', 'M', 5, 3, 'foto8.jpg', 'F2', 25.00);
INSERT INTO public.coche (matricula, modelo, combustible, motor, plazas, maletas, foto, codgama, coste) VALUES ('6612NNN', 'Audi A3', 'F', 'M', 5, 3, 'foto9.jpg', 'F2', 25.00);


--
-- TOC entry 3371 (class 0 OID 122958)
-- Dependencies: 210
-- Data for Name: gama; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.gama (codgama, nomgama, stock, precio) VALUES ('L1', 'Lujo', 2, 23.00);
INSERT INTO public.gama (codgama, nomgama, stock, precio) VALUES ('F2', 'Familiar', 3, 23.00);
INSERT INTO public.gama (codgama, nomgama, stock, precio) VALUES ('T1', '4 x 4', 1, 23.00);
INSERT INTO public.gama (codgama, nomgama, stock, precio) VALUES ('F1', 'Familiar', 4, 15.00);


--
-- TOC entry 3373 (class 0 OID 122973)
-- Dependencies: 212
-- Data for Name: reserva; Type: TABLE DATA; Schema: public; Owner: postgres
--



-- Completed on 2025-05-15 12:00:57 CEST

--
-- PostgreSQL database dump complete
--

