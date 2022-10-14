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
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL,
    round character varying(60) NOT NULL
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
    name character varying(60) NOT NULL
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

INSERT INTO public.games VALUES (47, 2018, 15, 16, 4, 2, 'Final');
INSERT INTO public.games VALUES (48, 2018, 17, 18, 2, 0, 'Third Place');
INSERT INTO public.games VALUES (49, 2018, 16, 18, 2, 1, 'Semi-Final');
INSERT INTO public.games VALUES (50, 2018, 15, 17, 1, 0, 'Semi-Final');
INSERT INTO public.games VALUES (51, 2018, 16, 19, 3, 2, 'Quarter-Final');
INSERT INTO public.games VALUES (52, 2018, 18, 20, 2, 0, 'Quarter-Final');
INSERT INTO public.games VALUES (53, 2018, 17, 21, 2, 1, 'Quarter-Final');
INSERT INTO public.games VALUES (54, 2018, 15, 22, 2, 0, 'Quarter-Final');
INSERT INTO public.games VALUES (55, 2018, 18, 23, 2, 1, 'Eighth-Final');
INSERT INTO public.games VALUES (56, 2018, 20, 24, 1, 0, 'Eighth-Final');
INSERT INTO public.games VALUES (57, 2018, 17, 25, 3, 2, 'Eighth-Final');
INSERT INTO public.games VALUES (58, 2018, 21, 26, 2, 0, 'Eighth-Final');
INSERT INTO public.games VALUES (59, 2018, 16, 27, 2, 1, 'Eighth-Final');
INSERT INTO public.games VALUES (60, 2018, 19, 28, 2, 1, 'Eighth-Final');
INSERT INTO public.games VALUES (61, 2018, 22, 29, 2, 1, 'Eighth-Final');
INSERT INTO public.games VALUES (62, 2018, 15, 30, 4, 3, 'Eighth-Final');
INSERT INTO public.games VALUES (63, 2014, 31, 30, 1, 0, 'Final');
INSERT INTO public.games VALUES (64, 2014, 32, 21, 3, 0, 'Third Place');
INSERT INTO public.games VALUES (65, 2014, 30, 32, 1, 0, 'Semi-Final');
INSERT INTO public.games VALUES (66, 2014, 31, 21, 7, 1, 'Semi-Final');
INSERT INTO public.games VALUES (67, 2014, 32, 33, 1, 0, 'Quarter-Final');
INSERT INTO public.games VALUES (68, 2014, 30, 17, 1, 0, 'Quarter-Final');
INSERT INTO public.games VALUES (69, 2014, 21, 23, 2, 1, 'Quarter-Final');
INSERT INTO public.games VALUES (70, 2014, 31, 15, 1, 0, 'Quarter-Final');
INSERT INTO public.games VALUES (71, 2014, 21, 34, 2, 1, 'Eighth-Final');
INSERT INTO public.games VALUES (72, 2014, 23, 22, 2, 0, 'Eighth-Final');
INSERT INTO public.games VALUES (73, 2014, 15, 35, 2, 0, 'Eighth-Final');
INSERT INTO public.games VALUES (74, 2014, 31, 36, 2, 1, 'Eighth-Final');
INSERT INTO public.games VALUES (75, 2014, 32, 26, 2, 1, 'Eighth-Final');
INSERT INTO public.games VALUES (76, 2014, 33, 37, 2, 1, 'Eighth-Final');
INSERT INTO public.games VALUES (77, 2014, 30, 24, 1, 0, 'Eighth-Final');
INSERT INTO public.games VALUES (78, 2014, 17, 38, 2, 1, 'Eighth-Final');


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (15, 'France');
INSERT INTO public.teams VALUES (16, 'Croatia');
INSERT INTO public.teams VALUES (17, 'Belgium');
INSERT INTO public.teams VALUES (18, 'England');
INSERT INTO public.teams VALUES (19, 'Russia');
INSERT INTO public.teams VALUES (20, 'Sweden');
INSERT INTO public.teams VALUES (21, 'Brazil');
INSERT INTO public.teams VALUES (22, 'Uruguay');
INSERT INTO public.teams VALUES (23, 'Colombia');
INSERT INTO public.teams VALUES (24, 'Switzerland');
INSERT INTO public.teams VALUES (25, 'Japan');
INSERT INTO public.teams VALUES (26, 'Mexico');
INSERT INTO public.teams VALUES (27, 'Denmark');
INSERT INTO public.teams VALUES (28, 'Spain');
INSERT INTO public.teams VALUES (29, 'Portugal');
INSERT INTO public.teams VALUES (30, 'Argentina');
INSERT INTO public.teams VALUES (31, 'Germany');
INSERT INTO public.teams VALUES (32, 'Netherlands');
INSERT INTO public.teams VALUES (33, 'Costa Rica');
INSERT INTO public.teams VALUES (34, 'Chile');
INSERT INTO public.teams VALUES (35, 'Nigeria');
INSERT INTO public.teams VALUES (36, 'Algeria');
INSERT INTO public.teams VALUES (37, 'Greece');
INSERT INTO public.teams VALUES (38, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 78, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 38, true);


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
-- Name: games games_opponent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

