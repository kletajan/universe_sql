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
-- Name: black_hole; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.black_hole (
    black_hole_id integer NOT NULL,
    name character varying(30),
    size integer NOT NULL
);


ALTER TABLE public.black_hole OWNER TO freecodecamp;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30),
    has_life boolean,
    description text,
    age_in_milion_of_years integer NOT NULL
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30),
    planet_id integer NOT NULL,
    description text,
    circum_in_miles integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30),
    star_id integer,
    has_life boolean,
    age_in_milion_of_years integer NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30),
    galaxy_id integer NOT NULL,
    temperature integer,
    mass_times_of_our_sun numeric NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: black_hole; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.black_hole VALUES (1, 'NGC 1097', 59);
INSERT INTO public.black_hole VALUES (2, 'Arp 220', 18);
INSERT INTO public.black_hole VALUES (3, 'Cenaurus A', 514);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda Galaxy', false, 'was discovered by PErsian astronomer Abd alRahman alSufi', 10010);
INSERT INTO public.galaxy VALUES (2, 'Black Eye Galaxy', false, 'was discovered by Edward Pigott in MArch 1779', 13280);
INSERT INTO public.galaxy VALUES (3, 'Milky Way', true, 'we live here', 13610);
INSERT INTO public.galaxy VALUES (4, 'Messier 32', false, 'was discovered by Guillaume Le Gentil in 1749', 800);
INSERT INTO public.galaxy VALUES (5, 'Sombrero Galaxy', false, 'was discovered by Pierre Mechain on May 11 1781', 13250);
INSERT INTO public.galaxy VALUES (6, 'Tadpole Galaxy', false, 'was discovered by Paul Hickson in 1982', 100);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Genymede', 5, 'discovered in 1610', 5268);
INSERT INTO public.moon VALUES (2, 'Titan', 6, 'discovered in 1655', 5152);
INSERT INTO public.moon VALUES (3, 'Callisto', 5, 'discovered in 1610', 4821);
INSERT INTO public.moon VALUES (4, 'Io', 5, 'discovered in 1610', 3643);
INSERT INTO public.moon VALUES (6, 'Europa', 5, 'discovered in 1610', 3122);
INSERT INTO public.moon VALUES (7, 'Triton', 9, 'discovered in 1846', 2706);
INSERT INTO public.moon VALUES (8, 'Titania', 8, 'discovered in 1787', 1577);
INSERT INTO public.moon VALUES (9, 'Rhea', 6, 'discovered in 1684', 1528);
INSERT INTO public.moon VALUES (10, 'Oberon', 8, 'discovered in 1787', 1523);
INSERT INTO public.moon VALUES (11, 'Iapetus', 6, 'discovered in 1671', 1468);
INSERT INTO public.moon VALUES (12, 'Charon', 7, 'discovered in 1978', 1212);
INSERT INTO public.moon VALUES (13, 'Umbriel', 8, 'discovered in 1851', 1169);
INSERT INTO public.moon VALUES (14, 'Ariel', 8, 'discovered in 1851', 1158);
INSERT INTO public.moon VALUES (15, 'Dione', 6, 'discovered in 1684', 1123);
INSERT INTO public.moon VALUES (16, 'Tethys', 6, 'discovered in 1684', 1062);
INSERT INTO public.moon VALUES (17, 'Mimas', 6, 'discovered in 1789', 504);
INSERT INTO public.moon VALUES (18, 'Enceladus', 6, 'discovered in 1948', 472);
INSERT INTO public.moon VALUES (19, 'Miranda', 8, 'discovered in 1989', 420);
INSERT INTO public.moon VALUES (20, 'Proteus', 9, 'discovered in 1789', 396);
INSERT INTO public.moon VALUES (5, 'Moon', 3, NULL, 3474);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 6, false, 4503);
INSERT INTO public.planet VALUES (2, 'Venus', 6, false, 4503);
INSERT INTO public.planet VALUES (3, 'Earth', 6, true, 4503);
INSERT INTO public.planet VALUES (4, 'Mars', 6, false, 4503);
INSERT INTO public.planet VALUES (5, 'Jupiter', 6, false, 4565);
INSERT INTO public.planet VALUES (6, 'Saturn', 6, false, 4543);
INSERT INTO public.planet VALUES (8, 'Uranus', 6, false, 4543);
INSERT INTO public.planet VALUES (9, 'Neptune', 6, false, 4543);
INSERT INTO public.planet VALUES (10, 'TRAPPIST-1', 3, false, 7600);
INSERT INTO public.planet VALUES (11, 'Kepler-452b', 2, false, 6000);
INSERT INTO public.planet VALUES (12, '51 Pegasi b', 1, false, 7100);
INSERT INTO public.planet VALUES (7, 'Pluto', 6, false, 4600);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Westerhout 49-2', 3, 35500, 250.0);
INSERT INTO public.star VALUES (2, 'BAT99-98', 3, 45000, 226.0);
INSERT INTO public.star VALUES (3, 'R136al', 3, 46000, 196.0);
INSERT INTO public.star VALUES (4, 'Melnick 42', 3, 47300, 189);
INSERT INTO public.star VALUES (5, 'VFTS 1022', 3, 42200, 178);
INSERT INTO public.star VALUES (6, 'The Sun', 3, 157000, 1);


--
-- Name: black_hole black_hole_black_hole_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_hole
    ADD CONSTRAINT black_hole_black_hole_id_key UNIQUE (black_hole_id);


--
-- Name: black_hole black_hole_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_hole
    ADD CONSTRAINT black_hole_pkey PRIMARY KEY (black_hole_id);


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
-- Name: planet planet_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_id_key UNIQUE (planet_id);


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

