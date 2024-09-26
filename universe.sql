--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(20) NOT NULL,
    distancia_tierra integer NOT NULL,
    edad numeric(8,2),
    tipo integer,
    descripcion text,
    vida boolean,
    esferico boolean
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(20) NOT NULL,
    distancia_tierra integer NOT NULL,
    edad numeric(8,2),
    tipo integer,
    descripcion text,
    vida boolean,
    esferico boolean,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(20) NOT NULL,
    distancia_tierra integer NOT NULL,
    edad numeric(8,2),
    tipo integer,
    descripcion text,
    vida boolean,
    esferico boolean,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(20) NOT NULL,
    distancia_tierra integer NOT NULL,
    edad numeric(8,2),
    tipo integer,
    descripcion text,
    vida boolean,
    esferico boolean,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: tipo; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.tipo (
    tipo_id integer NOT NULL,
    name character varying(20) NOT NULL,
    distancia_tierra integer NOT NULL,
    edad numeric(8,2),
    tipo integer,
    descripcion text,
    vida boolean,
    esferico boolean
);


ALTER TABLE public.tipo OWNER TO freecodecamp;

--
-- Name: tipo_tipo_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.tipo_tipo_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tipo_tipo_id_seq OWNER TO freecodecamp;

--
-- Name: tipo_tipo_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.tipo_tipo_id_seq OWNED BY public.tipo.tipo_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Name: tipo tipo_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.tipo ALTER COLUMN tipo_id SET DEFAULT nextval('public.tipo_tipo_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Galaxia A', 5, 10.10, 1, 'Des A', true, true);
INSERT INTO public.galaxy VALUES (2, 'Galaxia B', 6, 15.20, 2, 'Des B', true, true);
INSERT INTO public.galaxy VALUES (3, 'Galaxia C', 8, 25.90, 3, 'Des C', true, false);
INSERT INTO public.galaxy VALUES (4, 'Galaxia D', 1, 5.10, 1, 'Des D', false, false);
INSERT INTO public.galaxy VALUES (5, 'Galaxia E', 5, 1.10, 2, 'Des E', true, false);
INSERT INTO public.galaxy VALUES (6, 'Galaxia F', 2, 7.10, 4, 'Des F', true, true);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon 1', 1, 3.50, 3, 'Des M1', false, true, 12);
INSERT INTO public.moon VALUES (2, 'Moon 2', 2, 3.20, 1, 'Des M2', true, false, 11);
INSERT INTO public.moon VALUES (3, 'Moon 3', 6, 1.90, 2, 'Des M3', true, false, 10);
INSERT INTO public.moon VALUES (4, 'Moon 4', 6, 6.20, 4, 'Des M4', false, false, 9);
INSERT INTO public.moon VALUES (5, 'Moon 5', 7, 7.90, 3, 'Des M5', true, true, 8);
INSERT INTO public.moon VALUES (6, 'Moon 6', 4, 4.10, 2, 'Des M6', false, true, 7);
INSERT INTO public.moon VALUES (7, 'Moon 7', 8, 8.80, 1, 'Des M7', false, true, 6);
INSERT INTO public.moon VALUES (8, 'Moon 8', 1, 4.10, 2, 'Des M8', false, true, 5);
INSERT INTO public.moon VALUES (9, 'Moon 9', 18, 18.10, 2, 'Des M9', false, false, 4);
INSERT INTO public.moon VALUES (10, 'Moon 10', 10, 42.10, 3, 'Des M10', false, false, 3);
INSERT INTO public.moon VALUES (15, 'Moon 11', 10, 11.20, 1, 'Des M11', true, false, 2);
INSERT INTO public.moon VALUES (16, 'Moon 12', 14, 42.11, 2, 'Des M12', true, true, 12);
INSERT INTO public.moon VALUES (17, 'Moon 13', 45, 111.20, 3, 'Des M13', true, false, 13);
INSERT INTO public.moon VALUES (18, 'Moon 14', 41, 4.11, 2, 'Des M14', true, true, 2);
INSERT INTO public.moon VALUES (19, 'Moon 15', 46, 1.20, 3, 'Des M15', false, false, 3);
INSERT INTO public.moon VALUES (20, 'Moon 16', 40, 6.21, 1, 'Des M16', true, true, 4);
INSERT INTO public.moon VALUES (21, 'Moon 17', 36, 15.20, 3, 'Des M17', false, true, 5);
INSERT INTO public.moon VALUES (22, 'Moon 18', 20, 66.21, 2, 'Des M18', true, true, 6);
INSERT INTO public.moon VALUES (23, 'Moon 19', 15, 55.10, 1, 'Des M19', false, false, 7);
INSERT INTO public.moon VALUES (24, 'Moon 20', 2, 16.80, 3, 'Des M20', true, false, 8);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (2, 'Planet A', 7, 9.30, 1, 'Des AAA', true, true, 6);
INSERT INTO public.planet VALUES (3, 'Planet B', 4, 3.20, 2, 'Des BB', true, true, 5);
INSERT INTO public.planet VALUES (4, 'Planet C', 9, 1.20, 2, 'Des CCC', false, true, 4);
INSERT INTO public.planet VALUES (5, 'Planet D', 1, 2.20, 3, 'Des DDD', false, false, 3);
INSERT INTO public.planet VALUES (6, 'Planet E', 4, 4.40, 4, 'Des EEE', true, false, 2);
INSERT INTO public.planet VALUES (7, 'Planet F', 1, 3.40, 1, 'Des FFF', true, true, 1);
INSERT INTO public.planet VALUES (8, 'Planet 7', 3, 1.40, 3, 'Des 777', false, true, 1);
INSERT INTO public.planet VALUES (9, 'Planet 8', 1, 5.40, 1, 'Des 888', false, false, 2);
INSERT INTO public.planet VALUES (10, 'Planet 9', 9, 0.40, 2, 'Des 999', false, true, 3);
INSERT INTO public.planet VALUES (11, 'Planet 10', 3, 7.10, 1, 'Des 10', true, true, 4);
INSERT INTO public.planet VALUES (12, 'Planet 11', 1, 1.10, 4, 'Des 11', true, true, 5);
INSERT INTO public.planet VALUES (13, 'Planet 12', 5, 1.50, 3, 'Des 11', false, true, 6);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Star A', 7, 21.90, 2, 'Des A', true, false, 3);
INSERT INTO public.star VALUES (2, 'Star B', 7, 21.90, 2, 'Des BB', true, false, 5);
INSERT INTO public.star VALUES (3, 'Star C', 1, 1.80, 4, 'Des CC', true, false, 1);
INSERT INTO public.star VALUES (4, 'Star D', 3, 8.80, 2, 'Des DD', true, false, 2);
INSERT INTO public.star VALUES (5, 'Star E', 1, 3.80, 1, 'Des EE', false, false, 4);
INSERT INTO public.star VALUES (6, 'Star F', 6, 9.80, 4, 'Des FF', false, true, 3);


--
-- Data for Name: tipo; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.tipo VALUES (1, 'Metalico', 0, 0.00, 1, 'Des Metalico', false, false);
INSERT INTO public.tipo VALUES (2, 'Gaseoso', 0, 0.00, 1, 'Des Gaseoso', false, false);
INSERT INTO public.tipo VALUES (3, 'Mixto', 0, 0.00, 1, 'Des Mixto', false, false);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 24, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 13, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: tipo_tipo_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.tipo_tipo_id_seq', 3, true);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: galaxy name_unico; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT name_unico UNIQUE (name);


--
-- Name: moon name_unico_moon; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT name_unico_moon UNIQUE (name);


--
-- Name: tipo name_unico_mtipo; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.tipo
    ADD CONSTRAINT name_unico_mtipo UNIQUE (name);


--
-- Name: planet name_unico_splanet; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT name_unico_splanet UNIQUE (name);


--
-- Name: star name_unico_star; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT name_unico_star UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: tipo tipo_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.tipo
    ADD CONSTRAINT tipo_pkey PRIMARY KEY (tipo_id);


--
-- Name: star fk_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon fk_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

