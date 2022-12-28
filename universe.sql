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
    name character varying,
    total_planets integer NOT NULL,
    galaxy_types character varying,
    number integer
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
    name character varying,
    is_spherical boolean,
    planet_id integer,
    distance_from_earth numeric NOT NULL,
    age_in_millions_of_years integer
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
    name character varying,
    is_spherical boolean,
    star_id integer,
    age_in_millions_of_years integer NOT NULL,
    description text
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
    name character varying,
    galaxy_id integer,
    distance_from_earth integer NOT NULL,
    number integer
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
-- Name: universe; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.universe (
    total_galaxies integer NOT NULL,
    name character varying,
    universe_id integer NOT NULL,
    total_planets character varying
);


ALTER TABLE public.universe OWNER TO freecodecamp;

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

INSERT INTO public.galaxy VALUES (1, 'milkyway', 8, 'dust and gas', 1);
INSERT INTO public.galaxy VALUES (3, 'andromeda', 1, 'mere', 2);
INSERT INTO public.galaxy VALUES (4, 'whirlpool', 10, 'spiral galaxy', 3);
INSERT INTO public.galaxy VALUES (5, 'tadpole', 188, 'barred spiral', 4);
INSERT INTO public.galaxy VALUES (6, 'small magellanic cloud', 80, 'square', 5);
INSERT INTO public.galaxy VALUES (7, 'messire', 82, 'circle', 6);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (2, 'diemos', true, 3, 100000, 2000);
INSERT INTO public.moon VALUES (3, 'phobos', true, 4, 10020, 25000);
INSERT INTO public.moon VALUES (4, 'thebe', false, 5, 1000299, 276511);
INSERT INTO public.moon VALUES (5, 'lo', true, 5, 87666, 18763);
INSERT INTO public.moon VALUES (7, 'janus', true, 4, 10020, 65000);
INSERT INTO public.moon VALUES (8, 'pan', false, 5, 1000299, 27621);
INSERT INTO public.moon VALUES (9, 'europa', true, 5, 87666, 1863);
INSERT INTO public.moon VALUES (12, 'atlas', true, 6, 10020, 65090);
INSERT INTO public.moon VALUES (13, 'himalia', true, 6, 1000299, 207621);
INSERT INTO public.moon VALUES (14, 'mimas', false, 6, 87666, 18603);
INSERT INTO public.moon VALUES (15, 'atlas', true, 6, 10020, 805090);
INSERT INTO public.moon VALUES (16, 'himalia', true, 6, 1000299, 20762);
INSERT INTO public.moon VALUES (17, 'mimas', false, 6, 87666, 186603);
INSERT INTO public.moon VALUES (18, 'pandora', true, 7, 7888, 87876);
INSERT INTO public.moon VALUES (19, 'atlas', true, 6, 10020, 985090);
INSERT INTO public.moon VALUES (20, 'himalia', true, 6, 1000299, 2070062);
INSERT INTO public.moon VALUES (21, 'mimas', false, 6, 87666, 1800003);
INSERT INTO public.moon VALUES (22, 'pandora', true, 7, 7888, 888876);
INSERT INTO public.moon VALUES (23, 'dione', true, 7, 99999, 98877665);
INSERT INTO public.moon VALUES (25, 'atlas', true, 7, 10020, 78888);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (3, 'mercury', true, 7, 200, 'mercury is a first planet of our galaxy');
INSERT INTO public.planet VALUES (4, 'venus', true, 8, 260, 'venus is a second one of our galaxy');
INSERT INTO public.planet VALUES (5, 'earth', true, 9, 300, 'earth is also a planet of our galaxy and third one');
INSERT INTO public.planet VALUES (6, 'mars', true, 9, 300, 'mars is the fourth one');
INSERT INTO public.planet VALUES (7, 'mars', true, 9, 300, 'jupiter is the fifth one');
INSERT INTO public.planet VALUES (11, 'jupiter', true, 12, 300, 'jupiter is fifth one');
INSERT INTO public.planet VALUES (12, 'saturn', true, 12, 300, 'saturn is sixth one');
INSERT INTO public.planet VALUES (13, 'uranus', true, 13, 300, 'uranus is seventh one');
INSERT INTO public.planet VALUES (14, 'neptune', true, 13, 300, 'neptune is eighth one');
INSERT INTO public.planet VALUES (15, 'pluto', false, 14, 500, 'pluto was ninth one');
INSERT INTO public.planet VALUES (16, 'eris', false, 14, 500, 'eris was ninth one');
INSERT INTO public.planet VALUES (17, 'ceres', false, 14, 900, 'it was also our galaxy planet');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (7, 'sirius', 1, 200000, 1);
INSERT INTO public.star VALUES (8, 'canopus', 1, 10000, 2);
INSERT INTO public.star VALUES (9, 'arcturus', 3, 30000, 3);
INSERT INTO public.star VALUES (12, 'vega', 4, 200000, 4);
INSERT INTO public.star VALUES (13, 'rigel', 5, 10000, 5);
INSERT INTO public.star VALUES (14, 'procyon', 6, 30000, 6);


--
-- Data for Name: universe; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.universe VALUES (1, 'universe', 1, '1');
INSERT INTO public.universe VALUES (2, 'universe', 2, '2');
INSERT INTO public.universe VALUES (3, 'universe', 3, '3');


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 7, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 25, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 17, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 14, true);


--
-- Name: galaxy galaxy_galaxy_types_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_types_key UNIQUE (galaxy_types);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_age_in_millions_of_years_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_age_in_millions_of_years_key UNIQUE (age_in_millions_of_years);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_description_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_description_key UNIQUE (description);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_number_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_number_key UNIQUE (number);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: universe universe_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.universe
    ADD CONSTRAINT universe_pkey PRIMARY KEY (universe_id);


--
-- Name: universe universe_total_planets_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.universe
    ADD CONSTRAINT universe_total_planets_key UNIQUE (total_planets);


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

