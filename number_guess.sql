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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    username_id integer NOT NULL,
    score integer NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: usernames; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.usernames (
    username_id integer NOT NULL,
    username character varying(22) NOT NULL
);


ALTER TABLE public.usernames OWNER TO freecodecamp;

--
-- Name: usernames_username_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.usernames_username_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.usernames_username_id_seq OWNER TO freecodecamp;

--
-- Name: usernames_username_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.usernames_username_id_seq OWNED BY public.usernames.username_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: usernames username_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.usernames ALTER COLUMN username_id SET DEFAULT nextval('public.usernames_username_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 2, 6);
INSERT INTO public.games VALUES (2, 2, 3);
INSERT INTO public.games VALUES (3, 2, 2);
INSERT INTO public.games VALUES (4, 2, 4);
INSERT INTO public.games VALUES (5, 3, 968);
INSERT INTO public.games VALUES (6, 3, 748);
INSERT INTO public.games VALUES (7, 4, 452);
INSERT INTO public.games VALUES (8, 4, 817);
INSERT INTO public.games VALUES (9, 3, 688);
INSERT INTO public.games VALUES (10, 3, 482);
INSERT INTO public.games VALUES (11, 3, 821);
INSERT INTO public.games VALUES (12, 5, 144);
INSERT INTO public.games VALUES (13, 5, 443);
INSERT INTO public.games VALUES (14, 6, 833);
INSERT INTO public.games VALUES (15, 6, 52);
INSERT INTO public.games VALUES (16, 5, 554);
INSERT INTO public.games VALUES (17, 5, 171);
INSERT INTO public.games VALUES (18, 5, 342);
INSERT INTO public.games VALUES (19, 7, 423);
INSERT INTO public.games VALUES (20, 7, 664);
INSERT INTO public.games VALUES (21, 8, 125);
INSERT INTO public.games VALUES (22, 8, 417);
INSERT INTO public.games VALUES (23, 7, 647);
INSERT INTO public.games VALUES (24, 7, 955);
INSERT INTO public.games VALUES (25, 7, 11);
INSERT INTO public.games VALUES (26, 9, 903);
INSERT INTO public.games VALUES (27, 9, 582);
INSERT INTO public.games VALUES (28, 10, 706);
INSERT INTO public.games VALUES (29, 10, 96);
INSERT INTO public.games VALUES (30, 9, 323);
INSERT INTO public.games VALUES (31, 9, 718);
INSERT INTO public.games VALUES (32, 9, 159);
INSERT INTO public.games VALUES (33, 11, 363);
INSERT INTO public.games VALUES (34, 11, 921);
INSERT INTO public.games VALUES (35, 12, 938);
INSERT INTO public.games VALUES (36, 12, 393);
INSERT INTO public.games VALUES (37, 11, 763);
INSERT INTO public.games VALUES (38, 11, 623);
INSERT INTO public.games VALUES (39, 11, 262);


--
-- Data for Name: usernames; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.usernames VALUES (2, 'facu');
INSERT INTO public.usernames VALUES (3, 'user_1716829165665');
INSERT INTO public.usernames VALUES (4, 'user_1716829165664');
INSERT INTO public.usernames VALUES (5, 'user_1716829217493');
INSERT INTO public.usernames VALUES (6, 'user_1716829217492');
INSERT INTO public.usernames VALUES (7, 'user_1716829247257');
INSERT INTO public.usernames VALUES (8, 'user_1716829247256');
INSERT INTO public.usernames VALUES (9, 'user_1716829283223');
INSERT INTO public.usernames VALUES (10, 'user_1716829283222');
INSERT INTO public.usernames VALUES (11, 'user_1716829602154');
INSERT INTO public.usernames VALUES (12, 'user_1716829602153');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 39, true);


--
-- Name: usernames_username_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.usernames_username_id_seq', 12, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: usernames usernames_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.usernames
    ADD CONSTRAINT usernames_pkey PRIMARY KEY (username_id);


--
-- Name: games games_username_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_username_id_fkey FOREIGN KEY (username_id) REFERENCES public.usernames(username_id);


--
-- PostgreSQL database dump complete
--

