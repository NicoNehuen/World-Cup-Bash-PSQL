--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)
-- Dumped by pg_dump version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)

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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
    year integer NOT NULL,
    round character varying(255) NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    opponent_goals integer NOT NULL,
    winner_goals integer NOT NULL
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
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying(255) NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (97, 2018, 'Final', 257, 258, 2, 4);
INSERT INTO public.games VALUES (98, 2018, 'Third Place', 259, 260, 0, 2);
INSERT INTO public.games VALUES (99, 2018, 'Semi-Final', 258, 260, 1, 2);
INSERT INTO public.games VALUES (100, 2018, 'Semi-Final', 257, 259, 0, 1);
INSERT INTO public.games VALUES (101, 2018, 'Quarter-Final', 258, 261, 2, 3);
INSERT INTO public.games VALUES (102, 2018, 'Quarter-Final', 260, 262, 0, 2);
INSERT INTO public.games VALUES (103, 2018, 'Quarter-Final', 259, 263, 1, 2);
INSERT INTO public.games VALUES (104, 2018, 'Quarter-Final', 257, 264, 0, 2);
INSERT INTO public.games VALUES (105, 2018, 'Eighth-Final', 260, 265, 1, 2);
INSERT INTO public.games VALUES (106, 2018, 'Eighth-Final', 262, 266, 0, 1);
INSERT INTO public.games VALUES (107, 2018, 'Eighth-Final', 259, 267, 2, 3);
INSERT INTO public.games VALUES (108, 2018, 'Eighth-Final', 263, 268, 0, 2);
INSERT INTO public.games VALUES (109, 2018, 'Eighth-Final', 258, 269, 1, 2);
INSERT INTO public.games VALUES (110, 2018, 'Eighth-Final', 261, 270, 1, 2);
INSERT INTO public.games VALUES (111, 2018, 'Eighth-Final', 264, 271, 1, 2);
INSERT INTO public.games VALUES (112, 2018, 'Eighth-Final', 257, 272, 3, 4);
INSERT INTO public.games VALUES (113, 2014, 'Final', 273, 272, 0, 1);
INSERT INTO public.games VALUES (114, 2014, 'Third Place', 274, 263, 0, 3);
INSERT INTO public.games VALUES (115, 2014, 'Semi-Final', 272, 274, 0, 1);
INSERT INTO public.games VALUES (116, 2014, 'Semi-Final', 273, 263, 1, 7);
INSERT INTO public.games VALUES (117, 2014, 'Quarter-Final', 274, 275, 0, 1);
INSERT INTO public.games VALUES (118, 2014, 'Quarter-Final', 272, 259, 0, 1);
INSERT INTO public.games VALUES (119, 2014, 'Quarter-Final', 263, 265, 1, 2);
INSERT INTO public.games VALUES (120, 2014, 'Quarter-Final', 273, 257, 0, 1);
INSERT INTO public.games VALUES (121, 2014, 'Eighth-Final', 263, 276, 1, 2);
INSERT INTO public.games VALUES (122, 2014, 'Eighth-Final', 265, 264, 0, 2);
INSERT INTO public.games VALUES (123, 2014, 'Eighth-Final', 257, 277, 0, 2);
INSERT INTO public.games VALUES (124, 2014, 'Eighth-Final', 273, 278, 1, 2);
INSERT INTO public.games VALUES (125, 2014, 'Eighth-Final', 274, 268, 1, 2);
INSERT INTO public.games VALUES (126, 2014, 'Eighth-Final', 275, 279, 1, 2);
INSERT INTO public.games VALUES (127, 2014, 'Eighth-Final', 272, 266, 0, 1);
INSERT INTO public.games VALUES (128, 2014, 'Eighth-Final', 259, 280, 1, 2);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (257, 'France');
INSERT INTO public.teams VALUES (258, 'Croatia');
INSERT INTO public.teams VALUES (259, 'Belgium');
INSERT INTO public.teams VALUES (260, 'England');
INSERT INTO public.teams VALUES (261, 'Russia');
INSERT INTO public.teams VALUES (262, 'Sweden');
INSERT INTO public.teams VALUES (263, 'Brazil');
INSERT INTO public.teams VALUES (264, 'Uruguay');
INSERT INTO public.teams VALUES (265, 'Colombia');
INSERT INTO public.teams VALUES (266, 'Switzerland');
INSERT INTO public.teams VALUES (267, 'Japan');
INSERT INTO public.teams VALUES (268, 'Mexico');
INSERT INTO public.teams VALUES (269, 'Denmark');
INSERT INTO public.teams VALUES (270, 'Spain');
INSERT INTO public.teams VALUES (271, 'Portugal');
INSERT INTO public.teams VALUES (272, 'Argentina');
INSERT INTO public.teams VALUES (273, 'Germany');
INSERT INTO public.teams VALUES (274, 'Netherlands');
INSERT INTO public.teams VALUES (275, 'Costa Rica');
INSERT INTO public.teams VALUES (276, 'Chile');
INSERT INTO public.teams VALUES (277, 'Nigeria');
INSERT INTO public.teams VALUES (278, 'Algeria');
INSERT INTO public.teams VALUES (279, 'Greece');
INSERT INTO public.teams VALUES (280, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 128, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 280, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games fk_games_opponent; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_games_opponent FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games fk_games_winner; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_games_winner FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

