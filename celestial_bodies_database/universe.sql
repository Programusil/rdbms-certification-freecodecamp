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
-- Name: extra; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.extra (
    extra_id integer NOT NULL,
    one_more integer NOT NULL,
    last integer,
    name character varying
);


ALTER TABLE public.extra OWNER TO freecodecamp;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    name character varying(50),
    galaxy_id integer NOT NULL,
    galaxy_no integer NOT NULL,
    no_of_species integer,
    alien_count numeric,
    is_habitatable boolean,
    seconds text
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    name character varying(50),
    moon_id integer NOT NULL,
    galaxy_no integer NOT NULL,
    no_of_species integer,
    alien_count numeric,
    is_habitatable boolean,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    name character varying(50),
    planet_id integer NOT NULL,
    galaxy_no integer NOT NULL,
    no_of_species integer,
    alien_count numeric,
    is_habitatable boolean,
    star_id integer NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    name character varying(50),
    star_id integer NOT NULL,
    galaxy_no integer NOT NULL,
    no_of_species integer,
    alien_count numeric,
    is_habitatable boolean,
    galaxy_id integer NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_id_seq OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_id_seq'::regclass);


--
-- Data for Name: extra; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.extra VALUES (1, 2, NULL, NULL);
INSERT INTO public.extra VALUES (3, 3, NULL, NULL);
INSERT INTO public.extra VALUES (4, 4, NULL, NULL);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (NULL, 1, 1, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (NULL, 2, 2, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (NULL, 3, 3, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (NULL, 4, 4, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (NULL, 5, 5, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (NULL, 6, 6, NULL, NULL, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (NULL, 1, 1, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (NULL, 2, 1, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (NULL, 3, 1, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (NULL, 4, 1, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (NULL, 5, 1, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (NULL, 6, 1, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (NULL, 7, 1, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (NULL, 8, 1, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (NULL, 9, 1, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (NULL, 10, 1, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (NULL, 11, 1, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (NULL, 12, 1, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (NULL, 13, 1, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (NULL, 14, 1, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (NULL, 15, 1, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (NULL, 16, 1, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (NULL, 17, 1, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (NULL, 18, 1, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (NULL, 19, 1, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (NULL, 20, 1, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (NULL, 21, 1, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (NULL, 22, 1, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (NULL, 23, 1, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (NULL, 24, 1, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (NULL, 25, 1, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (NULL, 26, 1, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (NULL, 27, 1, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (NULL, 28, 1, NULL, NULL, NULL, 1);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (NULL, 1, 1, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (NULL, 2, 2, NULL, NULL, NULL, 2);
INSERT INTO public.planet VALUES (NULL, 3, 3, NULL, NULL, NULL, 3);
INSERT INTO public.planet VALUES (NULL, 4, 4, NULL, NULL, NULL, 4);
INSERT INTO public.planet VALUES (NULL, 5, 5, NULL, NULL, NULL, 5);
INSERT INTO public.planet VALUES (NULL, 6, 6, NULL, NULL, NULL, 6);
INSERT INTO public.planet VALUES (NULL, 49, 7, NULL, NULL, NULL, 6);
INSERT INTO public.planet VALUES (NULL, 48, 7, NULL, NULL, NULL, 6);
INSERT INTO public.planet VALUES (NULL, 4787, 7, NULL, NULL, NULL, 6);
INSERT INTO public.planet VALUES (NULL, 88, 7, NULL, NULL, NULL, 6);
INSERT INTO public.planet VALUES (NULL, 99, 7, NULL, NULL, NULL, 6);
INSERT INTO public.planet VALUES (NULL, 98, 7, NULL, NULL, NULL, 6);
INSERT INTO public.planet VALUES (NULL, 97, 7, NULL, NULL, NULL, 6);
INSERT INTO public.planet VALUES (NULL, 96, 7, NULL, NULL, NULL, 6);
INSERT INTO public.planet VALUES (NULL, 95, 7, NULL, NULL, NULL, 6);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (NULL, 1, 1, NULL, NULL, NULL, 1);
INSERT INTO public.star VALUES (NULL, 2, 2, NULL, NULL, NULL, 2);
INSERT INTO public.star VALUES (NULL, 3, 3, NULL, NULL, NULL, 3);
INSERT INTO public.star VALUES (NULL, 4, 4, NULL, NULL, NULL, 4);
INSERT INTO public.star VALUES (NULL, 5, 5, NULL, NULL, NULL, 5);
INSERT INTO public.star VALUES (NULL, 6, 6, NULL, NULL, NULL, 6);


--
-- Name: galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_seq', 1, false);


--
-- Name: moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_id_seq', 28, true);


--
-- Name: planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_id_seq', 1, false);


--
-- Name: star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_id_seq', 1, false);


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
-- Name: extra pk; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.extra
    ADD CONSTRAINT pk PRIMARY KEY (extra_id);


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
-- Name: galaxy unique_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_id UNIQUE (name);


--
-- Name: star unique_id2; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unique_id2 UNIQUE (name);


--
-- Name: extra unique_id23; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.extra
    ADD CONSTRAINT unique_id23 UNIQUE (one_more);


--
-- Name: moon unique_id236; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT unique_id236 UNIQUE (alien_count);


--
-- Name: planet unique_id3; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT unique_id3 UNIQUE (name);


--
-- Name: moon fk_moon; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_moon FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_planet FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star fk_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_star FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--