--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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
    name character varying(30) NOT NULL,
    description text,
    has_life boolean NOT NULL,
    is_spherical boolean,
    age_in_millions_of_years integer NOT NULL,
    adistance_from_earth numeric NOT NULL
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
    name character varying(30) NOT NULL,
    description text,
    has_life boolean NOT NULL,
    is_spherical boolean,
    age_in_millions_of_years integer NOT NULL,
    adistance_from_earth numeric NOT NULL,
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
    name character varying(30) NOT NULL,
    description text,
    has_life boolean NOT NULL,
    is_spherical boolean,
    age_in_millions_of_years integer NOT NULL,
    adistance_from_earth numeric NOT NULL,
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
    name character varying(30) NOT NULL,
    description text,
    has_life boolean NOT NULL,
    is_spherical boolean,
    age_in_millions_of_years integer NOT NULL,
    adistance_from_earth numeric NOT NULL,
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
-- Name: test; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.test (
    test_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age integer
);


ALTER TABLE public.test OWNER TO freecodecamp;

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
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (3, '1', '1', true, true, 100000, 100000);
INSERT INTO public.galaxy VALUES (4, '2', '1', true, true, 100000, 100000);
INSERT INTO public.galaxy VALUES (5, '3', '1', true, true, 100000, 100000);
INSERT INTO public.galaxy VALUES (6, '4', '1', true, true, 100000, 100000);
INSERT INTO public.galaxy VALUES (7, '5', '1', true, true, 100000, 100000);
INSERT INTO public.galaxy VALUES (8, '6', '1', true, true, 100000, 100000);
INSERT INTO public.galaxy VALUES (9, '7', '1', true, true, 100000, 100000);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (81, '1', '1', true, true, 100000, 100000, 13);
INSERT INTO public.moon VALUES (82, '2', '1', true, true, 100000, 100000, 13);
INSERT INTO public.moon VALUES (83, '3', '1', true, true, 100000, 100000, 13);
INSERT INTO public.moon VALUES (84, '4', '1', true, true, 100000, 100000, 14);
INSERT INTO public.moon VALUES (85, '5', '1', true, true, 100000, 100000, 15);
INSERT INTO public.moon VALUES (86, '6', '1', true, true, 100000, 100000, 16);
INSERT INTO public.moon VALUES (87, '7', '1', true, true, 100000, 100000, 17);
INSERT INTO public.moon VALUES (88, '8', '1', true, true, 100000, 100000, 13);
INSERT INTO public.moon VALUES (89, '9', '1', true, true, 100000, 100000, 13);
INSERT INTO public.moon VALUES (90, '10', '1', true, true, 100000, 100000, 13);
INSERT INTO public.moon VALUES (91, '11', '1', true, true, 100000, 100000, 14);
INSERT INTO public.moon VALUES (92, '12', '1', true, true, 100000, 100000, 15);
INSERT INTO public.moon VALUES (93, '13', '1', true, true, 100000, 100000, 15);
INSERT INTO public.moon VALUES (94, '14', '1', true, true, 100000, 100000, 15);
INSERT INTO public.moon VALUES (95, '15', '1', true, true, 100000, 100000, 15);
INSERT INTO public.moon VALUES (96, '16', '1', true, true, 100000, 100000, 15);
INSERT INTO public.moon VALUES (97, '17', '1', true, true, 100000, 100000, 15);
INSERT INTO public.moon VALUES (98, '18', '1', true, true, 100000, 100000, 15);
INSERT INTO public.moon VALUES (99, '19', '1', true, true, 100000, 100000, 14);
INSERT INTO public.moon VALUES (100, '20', '1', true, true, 100000, 100000, 13);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (13, '1', '1', true, true, 100000, 100000, 1);
INSERT INTO public.planet VALUES (14, '2', '1', true, true, 100000, 100000, 2);
INSERT INTO public.planet VALUES (15, '3', '1', true, true, 100000, 100000, 3);
INSERT INTO public.planet VALUES (16, '4', '1', true, true, 100000, 100000, 4);
INSERT INTO public.planet VALUES (17, '5', '1', true, true, 100000, 100000, 5);
INSERT INTO public.planet VALUES (18, '6', '1', true, true, 100000, 100000, 6);
INSERT INTO public.planet VALUES (19, '7', '1', true, true, 100000, 100000, 7);
INSERT INTO public.planet VALUES (20, '8', '1', true, true, 100000, 100000, 1);
INSERT INTO public.planet VALUES (21, '9', '1', true, true, 100000, 100000, 2);
INSERT INTO public.planet VALUES (22, '10', '1', true, true, 100000, 100000, 3);
INSERT INTO public.planet VALUES (23, '11', '1', true, true, 100000, 100000, 4);
INSERT INTO public.planet VALUES (24, '12', '1', true, true, 100000, 100000, 5);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, '1', '1', true, true, 100000, 100000, 3);
INSERT INTO public.star VALUES (2, '2', '1', true, true, 100000, 100000, 4);
INSERT INTO public.star VALUES (3, '3', '1', true, true, 100000, 100000, 5);
INSERT INTO public.star VALUES (4, '4', '1', true, true, 100000, 100000, 6);
INSERT INTO public.star VALUES (5, '5', '1', true, true, 100000, 100000, 7);
INSERT INTO public.star VALUES (6, '6', '1', true, true, 100000, 100000, 8);
INSERT INTO public.star VALUES (7, '7', '1', true, true, 100000, 100000, 9);


--
-- Data for Name: test; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.test VALUES (1, '1', NULL);
INSERT INTO public.test VALUES (2, '2', NULL);
INSERT INTO public.test VALUES (3, '3', NULL);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 9, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 100, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 24, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 7, true);


--
-- Name: test constraint_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.test
    ADD CONSTRAINT constraint_name UNIQUE (name);


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
-- Name: moon name_moon_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT name_moon_unique UNIQUE (name);


--
-- Name: planet name_planet_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT name_planet_unique UNIQUE (name);


--
-- Name: star name_star_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT name_star_unique UNIQUE (name);


--
-- Name: galaxy name_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT name_unique UNIQUE (name);


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
-- Name: test test_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.test
    ADD CONSTRAINT test_pkey PRIMARY KEY (test_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

