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
-- Name: constellation; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.constellation (
    constellation_id integer NOT NULL,
    name character varying(30) NOT NULL,
    main_stars integer,
    brightest_star character varying(30),
    messier_objects integer
);


ALTER TABLE public.constellation OWNER TO freecodecamp;

--
-- Name: constellation_constellation_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.constellation_constellation_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.constellation_constellation_id_seq OWNER TO freecodecamp;

--
-- Name: constellation_constellation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.constellation_constellation_id_seq OWNED BY public.constellation.constellation_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    galaxy_types character varying(30),
    span_in_light_years integer,
    escape_vel_at_sp numeric,
    constellation_id integer
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
    name character varying(30),
    has_volcanoes boolean,
    distance_from_planet integer,
    description text,
    planet_id integer NOT NULL
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
-- Name: moon_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_planet_id_seq OWNER TO freecodecamp;

--
-- Name: moon_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_planet_id_seq OWNED BY public.moon.planet_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30),
    has_life boolean,
    is_spherical boolean,
    description text,
    star_id integer NOT NULL
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
-- Name: planet_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_star_id_seq OWNER TO freecodecamp;

--
-- Name: planet_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_star_id_seq OWNED BY public.planet.star_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    star_types character varying(30),
    star_mass numeric,
    galaxy_id integer NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: star_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_galaxy_id_seq OWNED BY public.star.galaxy_id;


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
-- Name: constellation constellation_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation ALTER COLUMN constellation_id SET DEFAULT nextval('public.constellation_constellation_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: moon planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN planet_id SET DEFAULT nextval('public.moon_planet_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: planet star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN star_id SET DEFAULT nextval('public.planet_star_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Name: star galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN galaxy_id SET DEFAULT nextval('public.star_galaxy_id_seq'::regclass);


--
-- Data for Name: constellation; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.constellation VALUES (1, 'Sagittarius', 12, 'Kaus Australis', 15);
INSERT INTO public.constellation VALUES (2, 'Andromeda', 16, 'Alpheratz', 3);
INSERT INTO public.constellation VALUES (3, 'Sculptor', 4, 'Alpha Sculptoris', 0);
INSERT INTO public.constellation VALUES (4, 'Ursa Major', 7, 'Alioth', 7);
INSERT INTO public.constellation VALUES (5, 'Serpens', 11, 'Unukalhai', 2);
INSERT INTO public.constellation VALUES (6, 'Hydra', 17, 'Alphard', 3);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'barred spiral', 87400, 550, 1);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'barred spiral', 15200, NULL, 2);
INSERT INTO public.galaxy VALUES (3, 'Cartwheel', 'lenticular ring', 144300, NULL, 3);
INSERT INTO public.galaxy VALUES (4, 'Messier 82', 'starbust', 40800, NULL, 4);
INSERT INTO public.galaxy VALUES (5, 'Hoags Object', 'ring', 120000, NULL, 5);
INSERT INTO public.galaxy VALUES (6, 'Peekaboo', 'irr compact blue dwarf', 1200, NULL, 6);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', false, 384400, 'The Moon is Earths only natural satellite.', 4);
INSERT INTO public.moon VALUES (2, 'Europa', false, 100000, 'Europa, or Jupiter II, is the smallest of the four Galilean moons orbiting Jupiter, and the sixth-closest to the planet of all the 95 known moons of Jupiter.', 6);
INSERT INTO public.moon VALUES (3, 'Ganymede', false, 35150, 'Ganymede, or Jupiter III, is the largest and most massive natural satellite of Jupiter as well as in the Solar System.', 6);
INSERT INTO public.moon VALUES (4, 'Titan', false, 365461, 'Titan is the largest moon of Saturn, the second-largest in the Solar System and larger than any of the dwarf planets of the Solar System.', 7);
INSERT INTO public.moon VALUES (5, 'Io', true, 564615, 'Io, or Jupiter I, is the innermost and third-largest of the four Galilean moons of the planet Jupiter.', 6);
INSERT INTO public.moon VALUES (6, 'Enceladus', false, 54510, 'Enceladus is the sixth-largest moon of Saturn.', 7);
INSERT INTO public.moon VALUES (7, 'Callisto', false, 9456481, 'Callisto, or Jupiter IV, is the second-largest moon of Jupiter, after Ganymede.', 6);
INSERT INTO public.moon VALUES (8, 'Mimas', false, 49886545, 'Mimas, also designated Saturn I, is a natural satellite of Saturn that has the second largest crater on any moons in the Solar System.', 7);
INSERT INTO public.moon VALUES (9, 'Iapetus', false, 21250, 'Named after the Titan Iapetus, the moon was discovered in 1671 by Giovanni Domenico Cassini.', 7);
INSERT INTO public.moon VALUES (10, 'Dione', false, 821450, 'Dione, also designated Saturn IV, is the fourth-largest moon of Saturn.', 7);
INSERT INTO public.moon VALUES (11, 'Thetys', false, 30455, 'It was discovered by G. D. Cassini in 1684 and is named after the titan Tethys of Greek mythology.', 7);
INSERT INTO public.moon VALUES (12, 'Adrastea', false, 894185, 'Adrastea, also known as Jupiter XV, is the second by distance, and the smallest of the four inner moons of Jupiter.', 6);
INSERT INTO public.moon VALUES (13, 'Triton', false, 56415, 'Triton is the largest natural satellite of the planet Neptune, and was the first Neptunian moon to be discovered, on October 11, 1846, by English astronomer William Lassell.', 9);
INSERT INTO public.moon VALUES (14, 'Amalthea', false, 50500, 'Amalthea is a moon of Jupiter.', 6);
INSERT INTO public.moon VALUES (15, 'Thebe', false, 105400, 'It was discovered by Stephen P. Synnott in images from the Voyager 1 space probe taken on March 5, 1979.', 6);
INSERT INTO public.moon VALUES (16, 'Himalia', false, 8452151, 'Himalia, or Jupiter VI, is the largest irregular satellite of Jupiter, with a diameter of at least 140 km (90 mi).', 6);
INSERT INTO public.moon VALUES (17, 'Charon', false, 515451, 'Charon known as (134340) Pluto I, is the largest of the five known natural satellites of the dwarf planet Pluto.', 10);
INSERT INTO public.moon VALUES (18, 'Carme', false, 545651, 'Carme is a retrograde irregular satellite of Jupiter.', 6);
INSERT INTO public.moon VALUES (19, 'Themisto', false, 1584546, 'Themisto, also known as Jupiter XVIII, is a small prograde irregular satellite of Jupiter.', 6);
INSERT INTO public.moon VALUES (20, 'Ananke', false, 455455, 'Ananke is a retrograde irregular moon of Jupiter.', 6);
INSERT INTO public.moon VALUES (21, 'Hyperion', false, 8991651, 'Hyperion, also known as Saturn VII, is a moon of Saturn discovered by William Cranch Bond, his son George Phillips Bond and William Lassell in 1848.', 7);
INSERT INTO public.moon VALUES (22, 'Elara', false, 81548048, 'Elara is a prograde irregular satellite of Jupiter.', 6);
INSERT INTO public.moon VALUES (23, 'Carpo', false, 504515, 'Carpo, also Jupiter XLVI, is a small outer natural satellite of Jupiter. It was discovered by a team of astronomers from the University of Hawaii.', 6);
INSERT INTO public.moon VALUES (24, 'Methone', false, 65451, 'Methone is a small, egg-shaped moon of Saturn that orbits out past Saturns ring system.', 7);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', false, true, 'First planet from the Sun. Terrestial planet with heavily cratered surface.', 5);
INSERT INTO public.planet VALUES (3, 'Venus', false, true, 'Second planet from the Sun. Rocky planet with thick atmosphere.', 5);
INSERT INTO public.planet VALUES (4, 'Earth', true, true, 'Third planet from the Sun. Home <3.', 5);
INSERT INTO public.planet VALUES (5, 'Mars', false, true, 'Fourth planet from the Sun. Terrestial planet with reddish color at its surface.', 5);
INSERT INTO public.planet VALUES (6, 'Jupiter', false, true, 'Fifth planet from the Sun. Largest planet in Solar system and gas giant.', 5);
INSERT INTO public.planet VALUES (7, 'Saturn', false, true, 'Sixth planet from the Sun. Gas giant with prominent ring system.', 5);
INSERT INTO public.planet VALUES (8, 'Uranus', false, true, 'Seventh planet from the Sun. Gaseous cyan ice giant with complex layered cloud structure.', 5);
INSERT INTO public.planet VALUES (9, 'Neptune', false, true, 'Eigth planet from the Sun. Densest giant planet with no well-defined solid surface.', 5);
INSERT INTO public.planet VALUES (10, 'Pluto', false, true, 'Ninth planet from the Sun. Still a planet in my heart.', 5);
INSERT INTO public.planet VALUES (11, 'Proxima Centauri b', false, true, 'Exoplanet orbiting within the habitable zone of the red dwarf star Proxima Centauri.', 11);
INSERT INTO public.planet VALUES (12, 'Proxima Centauri d', false, true, 'Exoplanet orbiting the red dwarf star Proxima Centauri.', 11);
INSERT INTO public.planet VALUES (13, 'Proxima Centauri c', false, true, 'Controversial exoplanet candidate claimed to be orbiting the red dwarf star Proxima Centauri.', 11);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (5, 'Sun', 'G2V', 1.9885, 1);
INSERT INTO public.star VALUES (6, 'Beltegeuse', 'M1-M2 la-ab', 16.5, 1);
INSERT INTO public.star VALUES (7, 'VV Cephei', 'M2 lab', 2.5, 1);
INSERT INTO public.star VALUES (8, 'Alpheratz', 'A3V', 3.8, 2);
INSERT INTO public.star VALUES (9, 'Mirach', 'M0 III', 2.49, 2);
INSERT INTO public.star VALUES (10, 'Nembus', 'K3-III', 1.75, 2);
INSERT INTO public.star VALUES (11, 'Proxima Centauri', 'M5.5Ve', 1.02, 1);


--
-- Name: constellation_constellation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.constellation_constellation_id_seq', 6, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 24, true);


--
-- Name: moon_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_planet_id_seq', 1, false);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 13, true);


--
-- Name: planet_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_star_id_seq', 1, false);


--
-- Name: star_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_galaxy_id_seq', 1, false);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 11, true);


--
-- Name: constellation constellation_constellation_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation
    ADD CONSTRAINT constellation_constellation_id_key UNIQUE (constellation_id);


--
-- Name: constellation constellation_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation
    ADD CONSTRAINT constellation_pkey PRIMARY KEY (constellation_id);


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
-- Name: galaxy galaxy_constellation_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_constellation_id_fkey FOREIGN KEY (constellation_id) REFERENCES public.constellation(constellation_id);


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
