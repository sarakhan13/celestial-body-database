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
    age_in_millions_of_years integer,
    distance numeric,
    has_life boolean,
    is_spherical boolean,
    description text,
    name character varying(40) NOT NULL
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    age_in_millions_of_years integer,
    distance numeric,
    has_life boolean,
    is_spherical boolean,
    name character varying(40) NOT NULL,
    description text,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    age_in_millions_of_years integer,
    distance numeric,
    has_life boolean,
    is_spherical boolean,
    name character varying(40) NOT NULL,
    description text,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    age_in_millions_of_years integer,
    distance numeric,
    has_life boolean,
    is_spherical boolean,
    description text,
    name character varying(40) NOT NULL,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: sun; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.sun (
    has_life boolean,
    name character varying(40) NOT NULL,
    sun_id integer NOT NULL
);


ALTER TABLE public.sun OWNER TO freecodecamp;

--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, NULL, NULL, false, NULL, NULL, 'galaxy1');
INSERT INTO public.galaxy VALUES (2, NULL, NULL, false, NULL, NULL, 'galaxy2');
INSERT INTO public.galaxy VALUES (3, 13, 1000000, false, false, 'This is description for galaxy3', 'galaxy3');
INSERT INTO public.galaxy VALUES (4, 15, 2000000, false, false, 'This is description for galaxy4', 'galaxy4');
INSERT INTO public.galaxy VALUES (5, 17, 2000000, false, false, 'This is description for galaxy5', 'galaxy5');
INSERT INTO public.galaxy VALUES (6, 19, 4000000, false, false, 'This is description for galaxy6', 'galaxy6');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, NULL, NULL, NULL, NULL, 'moon1', NULL, NULL);
INSERT INTO public.moon VALUES (2, NULL, NULL, NULL, NULL, 'moon2', NULL, NULL);
INSERT INTO public.moon VALUES (3, NULL, NULL, NULL, NULL, 'moon3', NULL, NULL);
INSERT INTO public.moon VALUES (4, NULL, NULL, NULL, NULL, 'moon4', NULL, NULL);
INSERT INTO public.moon VALUES (5, NULL, NULL, NULL, NULL, 'moon5', NULL, NULL);
INSERT INTO public.moon VALUES (6, NULL, NULL, NULL, NULL, 'moon6', NULL, NULL);
INSERT INTO public.moon VALUES (7, NULL, NULL, NULL, NULL, 'moon7', NULL, NULL);
INSERT INTO public.moon VALUES (8, NULL, NULL, NULL, NULL, 'moon8', NULL, NULL);
INSERT INTO public.moon VALUES (9, NULL, NULL, NULL, NULL, 'moon9', NULL, NULL);
INSERT INTO public.moon VALUES (10, NULL, NULL, NULL, NULL, 'moon10', NULL, NULL);
INSERT INTO public.moon VALUES (17, NULL, NULL, NULL, NULL, 'moon17', NULL, NULL);
INSERT INTO public.moon VALUES (16, NULL, NULL, NULL, NULL, 'moon16', NULL, NULL);
INSERT INTO public.moon VALUES (15, NULL, NULL, NULL, NULL, 'moon15', NULL, NULL);
INSERT INTO public.moon VALUES (14, NULL, NULL, NULL, NULL, 'moon14', NULL, NULL);
INSERT INTO public.moon VALUES (13, NULL, NULL, NULL, NULL, 'moon13', NULL, NULL);
INSERT INTO public.moon VALUES (12, NULL, NULL, NULL, NULL, 'moon12', NULL, NULL);
INSERT INTO public.moon VALUES (11, NULL, NULL, NULL, NULL, 'moon11', NULL, NULL);
INSERT INTO public.moon VALUES (20, NULL, NULL, NULL, NULL, 'moon20', NULL, NULL);
INSERT INTO public.moon VALUES (19, NULL, NULL, NULL, NULL, 'moon19', NULL, NULL);
INSERT INTO public.moon VALUES (18, NULL, NULL, NULL, NULL, 'moon18', NULL, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, NULL, NULL, false, true, 'mercury', NULL, NULL);
INSERT INTO public.planet VALUES (2, NULL, NULL, false, true, 'venus', NULL, NULL);
INSERT INTO public.planet VALUES (3, NULL, NULL, true, true, 'earth', NULL, NULL);
INSERT INTO public.planet VALUES (4, NULL, NULL, false, true, 'mars', NULL, NULL);
INSERT INTO public.planet VALUES (5, NULL, NULL, false, false, 'dummy planet1', NULL, NULL);
INSERT INTO public.planet VALUES (6, NULL, NULL, false, false, 'dummy planet2', NULL, NULL);
INSERT INTO public.planet VALUES (7, NULL, NULL, false, true, 'saturn', NULL, NULL);
INSERT INTO public.planet VALUES (8, NULL, NULL, false, true, 'neptune', NULL, NULL);
INSERT INTO public.planet VALUES (9, NULL, NULL, false, true, 'uranus', NULL, NULL);
INSERT INTO public.planet VALUES (10, NULL, NULL, false, false, 'dummy planet13', NULL, NULL);
INSERT INTO public.planet VALUES (11, NULL, NULL, false, false, 'dummy planet4', NULL, NULL);
INSERT INTO public.planet VALUES (12, NULL, NULL, false, false, 'dummy planet7', NULL, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 12, 2000000, true, false, 'This is description for star1', 'star1', NULL);
INSERT INTO public.star VALUES (2, 13, 203654, false, false, 'This is description for star2', 'star2', NULL);
INSERT INTO public.star VALUES (3, 14, 20000, false, false, 'This is description for star4', 'star4', NULL);
INSERT INTO public.star VALUES (5, 12, 233654, false, false, 'This is description for star5', 'star5', NULL);
INSERT INTO public.star VALUES (6, 13, 278654, false, false, 'This is description for star6', 'star6', NULL);
INSERT INTO public.star VALUES (4, NULL, NULL, NULL, NULL, NULL, 'star7', NULL);


--
-- Data for Name: sun; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.sun VALUES (false, 'sun1', 1);
INSERT INTO public.sun VALUES (false, 'sun2', 2);
INSERT INTO public.sun VALUES (false, 'sun3', 3);


--
-- Name: galaxy galaxy_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_id_key UNIQUE (moon_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_plantet_d_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_plantet_d_key UNIQUE (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_id_key UNIQUE (star_id);


--
-- Name: sun sun_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.sun
    ADD CONSTRAINT sun_name_key UNIQUE (name);


--
-- Name: sun sun_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.sun
    ADD CONSTRAINT sun_pkey PRIMARY KEY (sun_id);


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

