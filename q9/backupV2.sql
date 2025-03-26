--
-- PostgreSQL database dump
--

-- Dumped from database version 17.4
-- Dumped by pg_dump version 17.4

-- Started on 2025-03-25 22:50:09

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

DROP DATABASE soen363_a2;
--
-- TOC entry 5148 (class 1262 OID 16552)
-- Name: soen363_a2; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE soen363_a2 WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'en-US';


ALTER DATABASE soen363_a2 OWNER TO postgres;

\connect soen363_a2

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 5112 (class 0 OID 29482)
-- Dependencies: 222
-- Data for Name: directors; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.directors VALUES (1, 'Richard Marquand');
INSERT INTO public.directors VALUES (2, 'George Lucas');
INSERT INTO public.directors VALUES (3, 'Irvin Kershner');


--
-- TOC entry 5113 (class 0 OID 29490)
-- Dependencies: 223
-- Data for Name: films_directors; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.films_directors VALUES (1, 2);
INSERT INTO public.films_directors VALUES (2, 3);
INSERT INTO public.films_directors VALUES (3, 1);
INSERT INTO public.films_directors VALUES (4, 2);
INSERT INTO public.films_directors VALUES (5, 2);
INSERT INTO public.films_directors VALUES (6, 2);


--
-- TOC entry 5116 (class 0 OID 29514)
-- Dependencies: 226
-- Data for Name: films_producers; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.films_producers VALUES (1, 1);
INSERT INTO public.films_producers VALUES (1, 2);
INSERT INTO public.films_producers VALUES (2, 1);
INSERT INTO public.films_producers VALUES (2, 2);
INSERT INTO public.films_producers VALUES (3, 3);
INSERT INTO public.films_producers VALUES (3, 4);
INSERT INTO public.films_producers VALUES (3, 2);
INSERT INTO public.films_producers VALUES (4, 2);
INSERT INTO public.films_producers VALUES (5, 2);
INSERT INTO public.films_producers VALUES (6, 2);


--
-- TOC entry 5117 (class 0 OID 29529)
-- Dependencies: 227
-- Data for Name: normalized_film_imdb; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.normalized_film_imdb VALUES (1, 'tt0076759');
INSERT INTO public.normalized_film_imdb VALUES (2, 'tt0080684');
INSERT INTO public.normalized_film_imdb VALUES (3, 'tt0086190');
INSERT INTO public.normalized_film_imdb VALUES (4, 'tt0120915');
INSERT INTO public.normalized_film_imdb VALUES (5, 'tt0121765');
INSERT INTO public.normalized_film_imdb VALUES (6, 'tt0121766');


--
-- TOC entry 5120 (class 0 OID 29548)
-- Dependencies: 230
-- Data for Name: normalized_film_ratings; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.normalized_film_ratings VALUES (1, 2, '8.6/10');
INSERT INTO public.normalized_film_ratings VALUES (1, 1, '93%');
INSERT INTO public.normalized_film_ratings VALUES (1, 3, '90/100');
INSERT INTO public.normalized_film_ratings VALUES (1, 4, '8.6');
INSERT INTO public.normalized_film_ratings VALUES (2, 2, '8.7/10');
INSERT INTO public.normalized_film_ratings VALUES (2, 1, '95%');
INSERT INTO public.normalized_film_ratings VALUES (2, 3, '82/100');
INSERT INTO public.normalized_film_ratings VALUES (2, 4, '8.7');
INSERT INTO public.normalized_film_ratings VALUES (3, 2, '8.3/10');
INSERT INTO public.normalized_film_ratings VALUES (3, 1, '82%');
INSERT INTO public.normalized_film_ratings VALUES (3, 3, '58/100');
INSERT INTO public.normalized_film_ratings VALUES (3, 4, '8.3');
INSERT INTO public.normalized_film_ratings VALUES (4, 2, '6.5/10');
INSERT INTO public.normalized_film_ratings VALUES (4, 1, '53%');
INSERT INTO public.normalized_film_ratings VALUES (4, 3, '51/100');
INSERT INTO public.normalized_film_ratings VALUES (4, 4, '6.5');
INSERT INTO public.normalized_film_ratings VALUES (5, 2, '6.6/10');
INSERT INTO public.normalized_film_ratings VALUES (5, 1, '65%');
INSERT INTO public.normalized_film_ratings VALUES (5, 3, '54/100');
INSERT INTO public.normalized_film_ratings VALUES (5, 4, '6.6');
INSERT INTO public.normalized_film_ratings VALUES (6, 2, '7.6/10');
INSERT INTO public.normalized_film_ratings VALUES (6, 1, '80%');
INSERT INTO public.normalized_film_ratings VALUES (6, 3, '68/100');
INSERT INTO public.normalized_film_ratings VALUES (6, 4, '7.6');
INSERT INTO public.normalized_film_ratings VALUES (67, 5, '0.6');
INSERT INTO public.normalized_film_ratings VALUES (23, 5, '0');
INSERT INTO public.normalized_film_ratings VALUES (136, 5, '0');
INSERT INTO public.normalized_film_ratings VALUES (154, 5, '0.947');
INSERT INTO public.normalized_film_ratings VALUES (271, 5, '0.6');
INSERT INTO public.normalized_film_ratings VALUES (114, 5, '4.074');
INSERT INTO public.normalized_film_ratings VALUES (125, 5, '0');
INSERT INTO public.normalized_film_ratings VALUES (198, 5, '0.6');
INSERT INTO public.normalized_film_ratings VALUES (150, 5, '1.4');
INSERT INTO public.normalized_film_ratings VALUES (276, 5, '0');
INSERT INTO public.normalized_film_ratings VALUES (289, 5, '0.6');
INSERT INTO public.normalized_film_ratings VALUES (25, 5, '7.124');
INSERT INTO public.normalized_film_ratings VALUES (156, 5, '0');
INSERT INTO public.normalized_film_ratings VALUES (263, 5, '0.6');
INSERT INTO public.normalized_film_ratings VALUES (234, 5, '1.4');
INSERT INTO public.normalized_film_ratings VALUES (201, 5, '0.993');
INSERT INTO public.normalized_film_ratings VALUES (259, 5, '6.272');
INSERT INTO public.normalized_film_ratings VALUES (17, 5, '1.4');
INSERT INTO public.normalized_film_ratings VALUES (60, 5, '0.725');
INSERT INTO public.normalized_film_ratings VALUES (153, 5, '0');
INSERT INTO public.normalized_film_ratings VALUES (297, 5, '0.6');
INSERT INTO public.normalized_film_ratings VALUES (157, 5, '1.4');
INSERT INTO public.normalized_film_ratings VALUES (52, 5, '0.6');
INSERT INTO public.normalized_film_ratings VALUES (110, 5, '2.936');
INSERT INTO public.normalized_film_ratings VALUES (96, 5, '0');
INSERT INTO public.normalized_film_ratings VALUES (22, 5, '0');
INSERT INTO public.normalized_film_ratings VALUES (143, 5, '0.6');
INSERT INTO public.normalized_film_ratings VALUES (246, 5, '0');
INSERT INTO public.normalized_film_ratings VALUES (97, 5, '0');
INSERT INTO public.normalized_film_ratings VALUES (124, 5, '0.73');
INSERT INTO public.normalized_film_ratings VALUES (213, 5, '0.6');
INSERT INTO public.normalized_film_ratings VALUES (193, 5, '0.646');
INSERT INTO public.normalized_film_ratings VALUES (208, 5, '14.778');
INSERT INTO public.normalized_film_ratings VALUES (36, 5, '1.216');
INSERT INTO public.normalized_film_ratings VALUES (184, 5, '0');
INSERT INTO public.normalized_film_ratings VALUES (58, 5, '0.84');
INSERT INTO public.normalized_film_ratings VALUES (105, 5, '0');
INSERT INTO public.normalized_film_ratings VALUES (237, 5, '0.6');
INSERT INTO public.normalized_film_ratings VALUES (64, 5, '0.6');
INSERT INTO public.normalized_film_ratings VALUES (27, 5, '1.96');
INSERT INTO public.normalized_film_ratings VALUES (92, 5, '0.6');
INSERT INTO public.normalized_film_ratings VALUES (244, 5, '1.113');
INSERT INTO public.normalized_film_ratings VALUES (9, 5, '0');
INSERT INTO public.normalized_film_ratings VALUES (81, 5, '0.6');
INSERT INTO public.normalized_film_ratings VALUES (78, 5, '0');
INSERT INTO public.normalized_film_ratings VALUES (148, 5, '46.845');
INSERT INTO public.normalized_film_ratings VALUES (39, 5, '0.6');
INSERT INTO public.normalized_film_ratings VALUES (131, 5, '1.756');
INSERT INTO public.normalized_film_ratings VALUES (225, 5, '1.4');
INSERT INTO public.normalized_film_ratings VALUES (145, 5, '0.6');
INSERT INTO public.normalized_film_ratings VALUES (159, 5, '0');
INSERT INTO public.normalized_film_ratings VALUES (261, 5, '15.58');
INSERT INTO public.normalized_film_ratings VALUES (280, 5, '2.681');
INSERT INTO public.normalized_film_ratings VALUES (16, 5, '0');
INSERT INTO public.normalized_film_ratings VALUES (253, 5, '12.282');
INSERT INTO public.normalized_film_ratings VALUES (115, 5, '11.853');
INSERT INTO public.normalized_film_ratings VALUES (133, 5, '0.6');
INSERT INTO public.normalized_film_ratings VALUES (170, 5, '0.6');
INSERT INTO public.normalized_film_ratings VALUES (65, 5, '1.794');
INSERT INTO public.normalized_film_ratings VALUES (218, 5, '0.919');
INSERT INTO public.normalized_film_ratings VALUES (226, 5, '0');
INSERT INTO public.normalized_film_ratings VALUES (238, 5, '0');
INSERT INTO public.normalized_film_ratings VALUES (120, 5, '0.6');
INSERT INTO public.normalized_film_ratings VALUES (61, 5, '0.6');
INSERT INTO public.normalized_film_ratings VALUES (294, 5, '0.6');
INSERT INTO public.normalized_film_ratings VALUES (144, 5, '0.757');
INSERT INTO public.normalized_film_ratings VALUES (227, 5, '66.772');
INSERT INTO public.normalized_film_ratings VALUES (267, 5, '0.6');
INSERT INTO public.normalized_film_ratings VALUES (230, 5, '0.6');
INSERT INTO public.normalized_film_ratings VALUES (295, 5, '0');
INSERT INTO public.normalized_film_ratings VALUES (165, 5, '0');
INSERT INTO public.normalized_film_ratings VALUES (37, 5, '0.6');
INSERT INTO public.normalized_film_ratings VALUES (265, 5, '0.6');
INSERT INTO public.normalized_film_ratings VALUES (180, 5, '14.017');
INSERT INTO public.normalized_film_ratings VALUES (59, 5, '0');
INSERT INTO public.normalized_film_ratings VALUES (119, 5, '3.097');
INSERT INTO public.normalized_film_ratings VALUES (45, 5, '10.191');
INSERT INTO public.normalized_film_ratings VALUES (179, 5, '1.4');
INSERT INTO public.normalized_film_ratings VALUES (68, 5, '1.226');
INSERT INTO public.normalized_film_ratings VALUES (228, 5, '0.6');
INSERT INTO public.normalized_film_ratings VALUES (249, 5, '0.6');
INSERT INTO public.normalized_film_ratings VALUES (176, 5, '0');
INSERT INTO public.normalized_film_ratings VALUES (171, 5, '0');
INSERT INTO public.normalized_film_ratings VALUES (24, 5, '0.6');
INSERT INTO public.normalized_film_ratings VALUES (264, 5, '0');
INSERT INTO public.normalized_film_ratings VALUES (240, 5, '0.921');
INSERT INTO public.normalized_film_ratings VALUES (172, 5, '8.233');
INSERT INTO public.normalized_film_ratings VALUES (260, 5, '2.044');
INSERT INTO public.normalized_film_ratings VALUES (63, 5, '1.042');
INSERT INTO public.normalized_film_ratings VALUES (107, 5, '0.6');
INSERT INTO public.normalized_film_ratings VALUES (113, 5, '1.4');
INSERT INTO public.normalized_film_ratings VALUES (19, 5, '0.901');
INSERT INTO public.normalized_film_ratings VALUES (102, 5, '1.4');
INSERT INTO public.normalized_film_ratings VALUES (251, 5, '1.4');
INSERT INTO public.normalized_film_ratings VALUES (140, 5, '0.656');
INSERT INTO public.normalized_film_ratings VALUES (72, 5, '0');
INSERT INTO public.normalized_film_ratings VALUES (278, 5, '0');
INSERT INTO public.normalized_film_ratings VALUES (217, 5, '0.6');
INSERT INTO public.normalized_film_ratings VALUES (196, 5, '0');
INSERT INTO public.normalized_film_ratings VALUES (74, 5, '0.6');
INSERT INTO public.normalized_film_ratings VALUES (47, 5, '1.4');
INSERT INTO public.normalized_film_ratings VALUES (86, 5, '0');
INSERT INTO public.normalized_film_ratings VALUES (216, 5, '0');
INSERT INTO public.normalized_film_ratings VALUES (82, 5, '0.6');
INSERT INTO public.normalized_film_ratings VALUES (298, 5, '5.655');
INSERT INTO public.normalized_film_ratings VALUES (104, 5, '3.633');
INSERT INTO public.normalized_film_ratings VALUES (146, 5, '0.84');
INSERT INTO public.normalized_film_ratings VALUES (282, 5, '0.84');
INSERT INTO public.normalized_film_ratings VALUES (206, 5, '0');
INSERT INTO public.normalized_film_ratings VALUES (71, 5, '0.804');
INSERT INTO public.normalized_film_ratings VALUES (235, 5, '0.6');
INSERT INTO public.normalized_film_ratings VALUES (66, 5, '0.6');
INSERT INTO public.normalized_film_ratings VALUES (203, 5, '0.6');
INSERT INTO public.normalized_film_ratings VALUES (48, 5, '0.6');
INSERT INTO public.normalized_film_ratings VALUES (122, 5, '0');
INSERT INTO public.normalized_film_ratings VALUES (296, 5, '0');
INSERT INTO public.normalized_film_ratings VALUES (55, 5, '0');
INSERT INTO public.normalized_film_ratings VALUES (163, 5, '0.6');
INSERT INTO public.normalized_film_ratings VALUES (116, 5, '2.183');
INSERT INTO public.normalized_film_ratings VALUES (129, 5, '0.6');
INSERT INTO public.normalized_film_ratings VALUES (188, 5, '0.6');
INSERT INTO public.normalized_film_ratings VALUES (223, 5, '0.6');
INSERT INTO public.normalized_film_ratings VALUES (274, 5, '6.848');
INSERT INTO public.normalized_film_ratings VALUES (87, 5, '2.201');
INSERT INTO public.normalized_film_ratings VALUES (241, 5, '1.532');
INSERT INTO public.normalized_film_ratings VALUES (257, 5, '0.6');
INSERT INTO public.normalized_film_ratings VALUES (190, 5, '4.99');
INSERT INTO public.normalized_film_ratings VALUES (103, 5, '1.374');
INSERT INTO public.normalized_film_ratings VALUES (132, 5, '6.491');
INSERT INTO public.normalized_film_ratings VALUES (88, 5, '0.6');
INSERT INTO public.normalized_film_ratings VALUES (269, 5, '0.6');
INSERT INTO public.normalized_film_ratings VALUES (214, 5, '0.626');
INSERT INTO public.normalized_film_ratings VALUES (127, 5, '0.6');
INSERT INTO public.normalized_film_ratings VALUES (32, 5, '0.6');
INSERT INTO public.normalized_film_ratings VALUES (199, 5, '0');
INSERT INTO public.normalized_film_ratings VALUES (101, 5, '0');
INSERT INTO public.normalized_film_ratings VALUES (287, 5, '0.6');
INSERT INTO public.normalized_film_ratings VALUES (142, 5, '0');
INSERT INTO public.normalized_film_ratings VALUES (15, 5, '0.65');
INSERT INTO public.normalized_film_ratings VALUES (8, 5, '1.95');
INSERT INTO public.normalized_film_ratings VALUES (236, 5, '0.6');
INSERT INTO public.normalized_film_ratings VALUES (175, 5, '0');
INSERT INTO public.normalized_film_ratings VALUES (255, 5, '0.6');
INSERT INTO public.normalized_film_ratings VALUES (106, 5, '0');
INSERT INTO public.normalized_film_ratings VALUES (43, 5, '0.6');
INSERT INTO public.normalized_film_ratings VALUES (160, 5, '7.995');
INSERT INTO public.normalized_film_ratings VALUES (53, 5, '0');
INSERT INTO public.normalized_film_ratings VALUES (247, 5, '6.756');
INSERT INTO public.normalized_film_ratings VALUES (224, 5, '42.55');
INSERT INTO public.normalized_film_ratings VALUES (270, 5, '0');
INSERT INTO public.normalized_film_ratings VALUES (85, 5, '1.4');
INSERT INTO public.normalized_film_ratings VALUES (290, 5, '1.4');
INSERT INTO public.normalized_film_ratings VALUES (301, 5, '0.6');
INSERT INTO public.normalized_film_ratings VALUES (220, 5, '0.6');
INSERT INTO public.normalized_film_ratings VALUES (80, 5, '0.6');
INSERT INTO public.normalized_film_ratings VALUES (187, 5, '0.6');
INSERT INTO public.normalized_film_ratings VALUES (94, 5, '0');
INSERT INTO public.normalized_film_ratings VALUES (42, 5, '0.6');
INSERT INTO public.normalized_film_ratings VALUES (40, 5, '3.318');
INSERT INTO public.normalized_film_ratings VALUES (49, 5, '0.65');
INSERT INTO public.normalized_film_ratings VALUES (41, 5, '0');
INSERT INTO public.normalized_film_ratings VALUES (211, 5, '0');
INSERT INTO public.normalized_film_ratings VALUES (215, 5, '0.75');
INSERT INTO public.normalized_film_ratings VALUES (197, 5, '0');
INSERT INTO public.normalized_film_ratings VALUES (229, 5, '2.149');
INSERT INTO public.normalized_film_ratings VALUES (13, 5, '0');
INSERT INTO public.normalized_film_ratings VALUES (76, 5, '0');
INSERT INTO public.normalized_film_ratings VALUES (14, 5, '1.033');
INSERT INTO public.normalized_film_ratings VALUES (73, 5, '0.6');
INSERT INTO public.normalized_film_ratings VALUES (18, 5, '1.163');
INSERT INTO public.normalized_film_ratings VALUES (147, 5, '2.911');
INSERT INTO public.normalized_film_ratings VALUES (128, 5, '6.69');
INSERT INTO public.normalized_film_ratings VALUES (93, 5, '0.6');
INSERT INTO public.normalized_film_ratings VALUES (178, 5, '0.6');
INSERT INTO public.normalized_film_ratings VALUES (56, 5, '1.325');
INSERT INTO public.normalized_film_ratings VALUES (232, 5, '0');
INSERT INTO public.normalized_film_ratings VALUES (177, 5, '0.919');
INSERT INTO public.normalized_film_ratings VALUES (161, 5, '0.6');
INSERT INTO public.normalized_film_ratings VALUES (117, 5, '0.6');
INSERT INTO public.normalized_film_ratings VALUES (239, 5, '0');
INSERT INTO public.normalized_film_ratings VALUES (245, 5, '0.6');
INSERT INTO public.normalized_film_ratings VALUES (181, 5, '0.6');
INSERT INTO public.normalized_film_ratings VALUES (185, 5, '0.6');
INSERT INTO public.normalized_film_ratings VALUES (77, 5, '0');
INSERT INTO public.normalized_film_ratings VALUES (121, 5, '0');
INSERT INTO public.normalized_film_ratings VALUES (243, 5, '2.437');
INSERT INTO public.normalized_film_ratings VALUES (266, 5, '11.461');
INSERT INTO public.normalized_film_ratings VALUES (35, 5, '0.6');
INSERT INTO public.normalized_film_ratings VALUES (130, 5, '0');
INSERT INTO public.normalized_film_ratings VALUES (164, 5, '0.6');
INSERT INTO public.normalized_film_ratings VALUES (51, 5, '0.6');
INSERT INTO public.normalized_film_ratings VALUES (291, 5, '0');
INSERT INTO public.normalized_film_ratings VALUES (134, 5, '0.6');
INSERT INTO public.normalized_film_ratings VALUES (174, 5, '1.892');
INSERT INTO public.normalized_film_ratings VALUES (31, 5, '0.6');
INSERT INTO public.normalized_film_ratings VALUES (54, 5, '0.6');
INSERT INTO public.normalized_film_ratings VALUES (109, 5, '0.959');
INSERT INTO public.normalized_film_ratings VALUES (205, 5, '0.6');
INSERT INTO public.normalized_film_ratings VALUES (167, 5, '0.742');
INSERT INTO public.normalized_film_ratings VALUES (108, 5, '6.542');
INSERT INTO public.normalized_film_ratings VALUES (300, 5, '0');
INSERT INTO public.normalized_film_ratings VALUES (272, 5, '55.759');
INSERT INTO public.normalized_film_ratings VALUES (221, 5, '0.6');
INSERT INTO public.normalized_film_ratings VALUES (268, 5, '0.985');
INSERT INTO public.normalized_film_ratings VALUES (118, 5, '0.84');
INSERT INTO public.normalized_film_ratings VALUES (99, 5, '0.6');
INSERT INTO public.normalized_film_ratings VALUES (200, 5, '0');
INSERT INTO public.normalized_film_ratings VALUES (242, 5, '1.4');
INSERT INTO public.normalized_film_ratings VALUES (169, 5, '0');
INSERT INTO public.normalized_film_ratings VALUES (252, 5, '0');
INSERT INTO public.normalized_film_ratings VALUES (284, 5, '0.6');
INSERT INTO public.normalized_film_ratings VALUES (254, 5, '0');
INSERT INTO public.normalized_film_ratings VALUES (286, 5, '41.215');
INSERT INTO public.normalized_film_ratings VALUES (126, 5, '0');
INSERT INTO public.normalized_film_ratings VALUES (166, 5, '0.6');
INSERT INTO public.normalized_film_ratings VALUES (123, 5, '0.653');
INSERT INTO public.normalized_film_ratings VALUES (162, 5, '0.6');
INSERT INTO public.normalized_film_ratings VALUES (262, 5, '0');
INSERT INTO public.normalized_film_ratings VALUES (219, 5, '3.689');
INSERT INTO public.normalized_film_ratings VALUES (100, 5, '0.6');
INSERT INTO public.normalized_film_ratings VALUES (158, 5, '0.6');
INSERT INTO public.normalized_film_ratings VALUES (248, 5, '1.886');
INSERT INTO public.normalized_film_ratings VALUES (281, 5, '0');
INSERT INTO public.normalized_film_ratings VALUES (189, 5, '0');
INSERT INTO public.normalized_film_ratings VALUES (195, 5, '0.909');
INSERT INTO public.normalized_film_ratings VALUES (210, 5, '0');
INSERT INTO public.normalized_film_ratings VALUES (191, 5, '0');
INSERT INTO public.normalized_film_ratings VALUES (207, 5, '88.559');
INSERT INTO public.normalized_film_ratings VALUES (141, 5, '0.6');
INSERT INTO public.normalized_film_ratings VALUES (11, 5, '0');
INSERT INTO public.normalized_film_ratings VALUES (279, 5, '0.6');
INSERT INTO public.normalized_film_ratings VALUES (292, 5, '2.421');
INSERT INTO public.normalized_film_ratings VALUES (69, 5, '0.6');
INSERT INTO public.normalized_film_ratings VALUES (204, 5, '0.6');
INSERT INTO public.normalized_film_ratings VALUES (212, 5, '1.812');
INSERT INTO public.normalized_film_ratings VALUES (250, 5, '0.6');
INSERT INTO public.normalized_film_ratings VALUES (209, 5, '0');
INSERT INTO public.normalized_film_ratings VALUES (10, 5, '1.312');
INSERT INTO public.normalized_film_ratings VALUES (62, 5, '0.6');
INSERT INTO public.normalized_film_ratings VALUES (33, 5, '0.6');
INSERT INTO public.normalized_film_ratings VALUES (155, 5, '0.6');
INSERT INTO public.normalized_film_ratings VALUES (44, 5, '12.071');
INSERT INTO public.normalized_film_ratings VALUES (139, 5, '1.09');
INSERT INTO public.normalized_film_ratings VALUES (222, 5, '0.6');
INSERT INTO public.normalized_film_ratings VALUES (90, 5, '0.84');
INSERT INTO public.normalized_film_ratings VALUES (29, 5, '1.751');
INSERT INTO public.normalized_film_ratings VALUES (7, 5, '0.6');
INSERT INTO public.normalized_film_ratings VALUES (256, 5, '0');
INSERT INTO public.normalized_film_ratings VALUES (28, 5, '0.6');
INSERT INTO public.normalized_film_ratings VALUES (283, 5, '33.1');
INSERT INTO public.normalized_film_ratings VALUES (275, 5, '0.6');
INSERT INTO public.normalized_film_ratings VALUES (111, 5, '0.6');
INSERT INTO public.normalized_film_ratings VALUES (152, 5, '0.904');
INSERT INTO public.normalized_film_ratings VALUES (20, 5, '0');
INSERT INTO public.normalized_film_ratings VALUES (38, 5, '0');
INSERT INTO public.normalized_film_ratings VALUES (173, 5, '2.147');
INSERT INTO public.normalized_film_ratings VALUES (149, 5, '0.75');
INSERT INTO public.normalized_film_ratings VALUES (89, 5, '0.6');
INSERT INTO public.normalized_film_ratings VALUES (233, 5, '0');
INSERT INTO public.normalized_film_ratings VALUES (192, 5, '2.135');
INSERT INTO public.normalized_film_ratings VALUES (277, 5, '2.785');
INSERT INTO public.normalized_film_ratings VALUES (137, 5, '0');
INSERT INTO public.normalized_film_ratings VALUES (186, 5, '0');
INSERT INTO public.normalized_film_ratings VALUES (46, 5, '1.4');
INSERT INTO public.normalized_film_ratings VALUES (151, 5, '7.189');
INSERT INTO public.normalized_film_ratings VALUES (30, 5, '0.6');
INSERT INTO public.normalized_film_ratings VALUES (288, 5, '0');
INSERT INTO public.normalized_film_ratings VALUES (57, 5, '0');
INSERT INTO public.normalized_film_ratings VALUES (135, 5, '0.6');
INSERT INTO public.normalized_film_ratings VALUES (95, 5, '0.841');
INSERT INTO public.normalized_film_ratings VALUES (168, 5, '0');
INSERT INTO public.normalized_film_ratings VALUES (138, 5, '0.653');
INSERT INTO public.normalized_film_ratings VALUES (202, 5, '0');
INSERT INTO public.normalized_film_ratings VALUES (70, 5, '0.824');
INSERT INTO public.normalized_film_ratings VALUES (112, 5, '0');
INSERT INTO public.normalized_film_ratings VALUES (183, 5, '89.699');
INSERT INTO public.normalized_film_ratings VALUES (91, 5, '0');
INSERT INTO public.normalized_film_ratings VALUES (75, 5, '0.6');
INSERT INTO public.normalized_film_ratings VALUES (273, 5, '1.534');
INSERT INTO public.normalized_film_ratings VALUES (299, 5, '1.094');
INSERT INTO public.normalized_film_ratings VALUES (21, 5, '0.6');
INSERT INTO public.normalized_film_ratings VALUES (285, 5, '1.563');
INSERT INTO public.normalized_film_ratings VALUES (194, 5, '3.135');
INSERT INTO public.normalized_film_ratings VALUES (34, 5, '0');
INSERT INTO public.normalized_film_ratings VALUES (83, 5, '2.643');
INSERT INTO public.normalized_film_ratings VALUES (12, 5, '0.84');
INSERT INTO public.normalized_film_ratings VALUES (84, 5, '0');
INSERT INTO public.normalized_film_ratings VALUES (79, 5, '1.503');
INSERT INTO public.normalized_film_ratings VALUES (50, 5, '0.6');
INSERT INTO public.normalized_film_ratings VALUES (231, 5, '0.6');
INSERT INTO public.normalized_film_ratings VALUES (182, 5, '0');
INSERT INTO public.normalized_film_ratings VALUES (258, 5, '0');
INSERT INTO public.normalized_film_ratings VALUES (293, 5, '47.241');
INSERT INTO public.normalized_film_ratings VALUES (26, 5, '0');
INSERT INTO public.normalized_film_ratings VALUES (98, 5, '0');


--
-- TOC entry 5109 (class 0 OID 29461)
-- Dependencies: 219
-- Data for Name: normalized_films; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.normalized_films VALUES (1, 'A New Hope');
INSERT INTO public.normalized_films VALUES (2, 'The Empire Strikes Back');
INSERT INTO public.normalized_films VALUES (3, 'Return of the Jedi');
INSERT INTO public.normalized_films VALUES (4, 'The Phantom Menace');
INSERT INTO public.normalized_films VALUES (5, 'Attack of the Clones');
INSERT INTO public.normalized_films VALUES (6, 'Revenge of the Sith');
INSERT INTO public.normalized_films VALUES (7, 'Star Wars: Rise of the Resistance');
INSERT INTO public.normalized_films VALUES (8, 'Star Wars: Within a Minute - The Making of Episode III');
INSERT INTO public.normalized_films VALUES (9, 'CLONE WARS: BATTLE OF THE HEROES - A Star Wars Fan Animation');
INSERT INTO public.normalized_films VALUES (10, 'Star Wars: Heroes & Villains');
INSERT INTO public.normalized_films VALUES (11, 'STAR WARS 10K');
INSERT INTO public.normalized_films VALUES (12, 'WCCW Christmas Star Wars ''81');
INSERT INTO public.normalized_films VALUES (13, 'Star Wars: IV-VI Archives');
INSERT INTO public.normalized_films VALUES (14, 'Star Wars Begins: A Filmumentary');
INSERT INTO public.normalized_films VALUES (15, 'RiffTrax: Star Wars: The Force Awakens');
INSERT INTO public.normalized_films VALUES (16, 'Star Wars: Rebels');
INSERT INTO public.normalized_films VALUES (17, 'Untitled Star Wars "New Jedi Order" Film');
INSERT INTO public.normalized_films VALUES (18, 'Star Wars: Droids - Treasure of the Hidden Planet');
INSERT INTO public.normalized_films VALUES (19, 'Star Wars: Deleted Magic');
INSERT INTO public.normalized_films VALUES (20, 'Star Wars: The Equilibrium Knight');
INSERT INTO public.normalized_films VALUES (21, 'KENOBI - A Star Wars Story');
INSERT INTO public.normalized_films VALUES (22, 'Voice of a Star Wars Fan');
INSERT INTO public.normalized_films VALUES (23, 'The Naboo Movie: A Live Staged Reading of Star Wars: The Phantom Menace');
INSERT INTO public.normalized_films VALUES (24, 'WCCW Thanksgiving Star Wars ''83');
INSERT INTO public.normalized_films VALUES (25, 'LEGO Star Wars: The Padawan Menace');
INSERT INTO public.normalized_films VALUES (26, 'LEGO Star Wars Droid Tales');
INSERT INTO public.normalized_films VALUES (27, 'The Patrick (H) Willems Star Wars Holiday Special');
INSERT INTO public.normalized_films VALUES (28, 'Star Wars in Real Life III: Revenge of the Jedi');
INSERT INTO public.normalized_films VALUES (29, 'The Characters of Star Wars');
INSERT INTO public.normalized_films VALUES (30, 'The Making of Star Wars - The Phantom Menace');
INSERT INTO public.normalized_films VALUES (31, 'Untitled "First Force Users" Star Wars Film');
INSERT INTO public.normalized_films VALUES (32, 'Star Wars: Discoveries From Inside - Matte Paintings Unveiled');
INSERT INTO public.normalized_films VALUES (33, 'Lego Star Wars: The New Yoda Chronicles: Escape from the Jedi Temple');
INSERT INTO public.normalized_films VALUES (34, 'Star Wars: Battle of the Bay');
INSERT INTO public.normalized_films VALUES (35, 'Star Wars Jedi Survivor');
INSERT INTO public.normalized_films VALUES (36, 'The Galaxy Britain Built: The British Force Behind Star Wars');
INSERT INTO public.normalized_films VALUES (37, 'Star Wars: The Clone Wars');
INSERT INTO public.normalized_films VALUES (38, 'Star Wars Jedi: Fallen Order');
INSERT INTO public.normalized_films VALUES (39, 'Star Wars: Clone Wars - Volume One');
INSERT INTO public.normalized_films VALUES (40, 'LEGO Star Wars: The Quest for R2-D2');
INSERT INTO public.normalized_films VALUES (41, 'Star Wars Protector');
INSERT INTO public.normalized_films VALUES (42, 'The Lost Relic: A Star Wars Story');
INSERT INTO public.normalized_films VALUES (43, 'The Stars of Star Wars');
INSERT INTO public.normalized_films VALUES (44, 'LEGO Star Wars Holiday Special');
INSERT INTO public.normalized_films VALUES (45, 'Empire of Dreams: The Story of the Star Wars Trilogy');
INSERT INTO public.normalized_films VALUES (46, 'Star Wars: Vengeance');
INSERT INTO public.normalized_films VALUES (47, 'Star Wars: The Acolyte');
INSERT INTO public.normalized_films VALUES (48, 'Musk Vs Bezos: The New Star Wars');
INSERT INTO public.normalized_films VALUES (49, 'Rifftrax : Star Wars Episode V: The Empire Strikes Back');
INSERT INTO public.normalized_films VALUES (50, 'Star Wars: Squadrons - Hunted');
INSERT INTO public.normalized_films VALUES (51, 'Pro Wrestling USA: Star Wars 1985');
INSERT INTO public.normalized_films VALUES (52, 'All My Star Wars Cards');
INSERT INTO public.normalized_films VALUES (53, 'Star Wars Episode IV: A New Hope - Interviews');
INSERT INTO public.normalized_films VALUES (54, 'Star Wars: Conversations - The Lost Interviews');
INSERT INTO public.normalized_films VALUES (55, 'Star Wars Episode IV: A New Hope - The Collection');
INSERT INTO public.normalized_films VALUES (56, 'Star Wars Spoofs');
INSERT INTO public.normalized_films VALUES (57, 'Angry Birds Star Wars: Boba''s Delivery');
INSERT INTO public.normalized_films VALUES (58, 'WCCW Christmas Star Wars ''87');
INSERT INTO public.normalized_films VALUES (59, 'Star Wars: Revelations');
INSERT INTO public.normalized_films VALUES (60, 'How Star Wars Was Saved in the Edit');
INSERT INTO public.normalized_films VALUES (61, 'Star Wars 10K');
INSERT INTO public.normalized_films VALUES (62, 'Making of Star Wars Revenge of the Sith');
INSERT INTO public.normalized_films VALUES (63, 'Star Wars: The Magic & the Mystery');
INSERT INTO public.normalized_films VALUES (64, 'Untitled Simon Kinberg Star Wars Film 2');
INSERT INTO public.normalized_films VALUES (65, 'A Disturbance in the Force: How the Star Wars Holiday Special Happened');
INSERT INTO public.normalized_films VALUES (66, 'Star wars 40 ans');
INSERT INTO public.normalized_films VALUES (67, 'Harmy''s Despecialized Edition: Star Wars');
INSERT INTO public.normalized_films VALUES (68, 'Star Wars: Ewoks - The Haunted Village');
INSERT INTO public.normalized_films VALUES (69, 'Saving Star Wars');
INSERT INTO public.normalized_films VALUES (70, 'The Definitive History of Star Wars');
INSERT INTO public.normalized_films VALUES (71, 'LEGO Star Wars: Mandoween - Celebrate The Season');
INSERT INTO public.normalized_films VALUES (72, 'A Star Wars Story Collection');
INSERT INTO public.normalized_films VALUES (73, 'Fallen Angel: A Star Wars Story');
INSERT INTO public.normalized_films VALUES (74, 'Dark of the Storm: A Star Wars Fan Film');
INSERT INTO public.normalized_films VALUES (75, 'Untitled Shawn levy Star Wars movie');
INSERT INTO public.normalized_films VALUES (76, 'The Star Wars Documentaries');
INSERT INTO public.normalized_films VALUES (77, 'LEGO the Mandalorian: Daddy Strikes Back - A Star Wars Story');
INSERT INTO public.normalized_films VALUES (78, 'DOOKU A Star Wars Story: Becoming Darth Tyranus');
INSERT INTO public.normalized_films VALUES (79, 'Untitled Taika Waititi Star Wars Film');
INSERT INTO public.normalized_films VALUES (80, 'Star Wars: Clone Wars Volume Two');
INSERT INTO public.normalized_films VALUES (81, 'Lego Star Wars: The Yoda Chronicles');
INSERT INTO public.normalized_films VALUES (82, 'WCCW Christmas Star Wars ''85');
INSERT INTO public.normalized_films VALUES (83, 'Star Wars: Greatest Moments');
INSERT INTO public.normalized_films VALUES (84, 'Star Wars Rebels (Shorts)');
INSERT INTO public.normalized_films VALUES (85, 'Star Wars: Sons of Rebellion');
INSERT INTO public.normalized_films VALUES (86, 'Star Wars: Knights of the Old Republic Episode II - Veil of the Dark Side');
INSERT INTO public.normalized_films VALUES (87, 'LEGO Star Wars: Bombad Bounty');
INSERT INTO public.normalized_films VALUES (88, 'The Making of Star Wars Attack of the Clones');
INSERT INTO public.normalized_films VALUES (89, 'Icons Unearthed: Star Wars');
INSERT INTO public.normalized_films VALUES (90, 'Quentin Tarantino''s Star Wars');
INSERT INTO public.normalized_films VALUES (91, 'Star Wars Galactic Heroes');
INSERT INTO public.normalized_films VALUES (92, 'Star Wars: The Force and the Fury');
INSERT INTO public.normalized_films VALUES (93, 'WCCW Star Wars (June 1983)');
INSERT INTO public.normalized_films VALUES (94, 'Star Wars: Anatomy Of A Dewback');
INSERT INTO public.normalized_films VALUES (95, 'Hollywood''s Master of Myth: Joseph Campbell - The Force Behind Star Wars');
INSERT INTO public.normalized_films VALUES (96, 'Vader Immortal: A Star Wars VR Series - Episode II');
INSERT INTO public.normalized_films VALUES (97, 'Star Wars: Tales from the Galaxy''s Edge - Last Call');
INSERT INTO public.normalized_films VALUES (98, 'Star Wars Rebels');
INSERT INTO public.normalized_films VALUES (99, 'Star Wars The Clone Wars: The Siege Of Mandalore Arc');
INSERT INTO public.normalized_films VALUES (100, 'Star Wars in Real Life II: Attack of the Empire');
INSERT INTO public.normalized_films VALUES (101, 'Star Wars Rebels: The Machine in the Ghost');
INSERT INTO public.normalized_films VALUES (102, 'A Star Wars Story - Collection');
INSERT INTO public.normalized_films VALUES (103, 'Star Wars: Threads of Destiny');
INSERT INTO public.normalized_films VALUES (104, 'Star Wars: The Clone Wars - Darth Maul Returns');
INSERT INTO public.normalized_films VALUES (105, 'Mustafar Takes Los Angeles: An All-Star Live Reading of Star Wars Episode III: Revenge of the Sith');
INSERT INTO public.normalized_films VALUES (106, 'Star Wars: Despecialized Collection');
INSERT INTO public.normalized_films VALUES (107, 'Lego Star Wars: The Yoda Chronicles: Menace of the Sith');
INSERT INTO public.normalized_films VALUES (108, 'Robot Chicken: Star Wars Episode III');
INSERT INTO public.normalized_films VALUES (109, 'Ken Loach''s Star Wars');
INSERT INTO public.normalized_films VALUES (110, 'Disney Gallery - Star Wars: The Mandalorian Making Season 3');
INSERT INTO public.normalized_films VALUES (111, 'Echoes of the Force: A Star Wars Fan Film');
INSERT INTO public.normalized_films VALUES (112, 'Star Wars: Archive Fly-Through');
INSERT INTO public.normalized_films VALUES (113, 'STAR WARS 10KK');
INSERT INTO public.normalized_films VALUES (114, 'Star Wars Underworld: A XXX Parody');
INSERT INTO public.normalized_films VALUES (115, 'The Star Wars Holiday Special');
INSERT INTO public.normalized_films VALUES (116, 'Star Wars: The Last Temptation');
INSERT INTO public.normalized_films VALUES (117, 'K-1 Star Wars ''96');
INSERT INTO public.normalized_films VALUES (118, 'Untitled Star Wars/Exegol Project');
INSERT INTO public.normalized_films VALUES (119, 'Plastic Galaxy: The Story of Star Wars Toys');
INSERT INTO public.normalized_films VALUES (120, 'Untitled Simon Kinberg Star Wars Film 3');
INSERT INTO public.normalized_films VALUES (121, 'Star Wars: Despecialized Edition');
INSERT INTO public.normalized_films VALUES (122, 'Star Wars: Rogue Squadron');
INSERT INTO public.normalized_films VALUES (123, 'Robot Chicken: Star Wars Trilogy');
INSERT INTO public.normalized_films VALUES (124, 'The Unauthorized ''Star Wars'' Story');
INSERT INTO public.normalized_films VALUES (125, 'Vader Immortal: A Star Wars VR Series - Episode I');
INSERT INTO public.normalized_films VALUES (126, 'Star Wars l''intégrale de la saga Documentaires et parodies');
INSERT INTO public.normalized_films VALUES (127, 'Guardian of the star wars village');
INSERT INTO public.normalized_films VALUES (128, 'Doraemon: Nobita''s Little Star Wars');
INSERT INTO public.normalized_films VALUES (129, 'Star Wars Episode I.I: The Phantom Edit');
INSERT INTO public.normalized_films VALUES (130, 'Star Wars Rebels: Art Attack');
INSERT INTO public.normalized_films VALUES (131, 'Star Wars : L''incroyable Légende');
INSERT INTO public.normalized_films VALUES (132, 'Star Wars Biomes');
INSERT INTO public.normalized_films VALUES (133, 'WCCW Thanksgiving Star Wars 1985');
INSERT INTO public.normalized_films VALUES (134, 'WCCW Christmas Star Wars ''82');
INSERT INTO public.normalized_films VALUES (135, 'Star Wars: Millennium Falcon - Smuggler''s Run');
INSERT INTO public.normalized_films VALUES (136, 'The Spectacular Failure of the Star Wars Hotel');
INSERT INTO public.normalized_films VALUES (137, 'Star Wars: Conversations - Creating A Universe');
INSERT INTO public.normalized_films VALUES (138, 'Angry Birds Star Wars');
INSERT INTO public.normalized_films VALUES (139, 'Star Wars Episode II.I: Attack of the Phantom');
INSERT INTO public.normalized_films VALUES (140, 'Scout: A Star Wars Story');
INSERT INTO public.normalized_films VALUES (141, 'Darkness Within: A Star Wars Short Story');
INSERT INTO public.normalized_films VALUES (142, 'Star Wars: Knights of the Old Republic Episode I - A Familiar Path');
INSERT INTO public.normalized_films VALUES (143, 'Untitled Shawn Levy Star Wars Film');
INSERT INTO public.normalized_films VALUES (144, 'The Mythology of Star Wars');
INSERT INTO public.normalized_films VALUES (145, 'Untitled Simon Kinberg Star Wars Film 1');
INSERT INTO public.normalized_films VALUES (146, 'Star Wars: Lando');
INSERT INTO public.normalized_films VALUES (147, 'LEGO Star Wars: Revenge of The Brick');
INSERT INTO public.normalized_films VALUES (148, 'Star Wars: Episode I - The Phantom Menace');
INSERT INTO public.normalized_films VALUES (149, 'Star Wars bonus trilogie IV-VI');
INSERT INTO public.normalized_films VALUES (150, 'Star Wars Kid: The Rise of the Digital Shadows');
INSERT INTO public.normalized_films VALUES (151, 'Star Wars Rebels: Steps Into Shadow');
INSERT INTO public.normalized_films VALUES (152, 'Angry Birds Star Wars II: Join the Pork Side');
INSERT INTO public.normalized_films VALUES (153, 'LEGO Star Wars: Rebuild the Galaxy');
INSERT INTO public.normalized_films VALUES (154, 'WCCW Labor Day Star Wars ''86');
INSERT INTO public.normalized_films VALUES (155, 'Hollywood Rivals: Star Wars vs. Star Trek');
INSERT INTO public.normalized_films VALUES (156, 'Star Wars Pathways: Chapter I - Path of Betrayal');
INSERT INTO public.normalized_films VALUES (157, 'STAR WARS 10K - Episode spécial Saint Valentin');
INSERT INTO public.normalized_films VALUES (158, 'Star Wars: The Gay Force Awakens');
INSERT INTO public.normalized_films VALUES (159, 'The Acolyte: A Star Wars Fan Film');
INSERT INTO public.normalized_films VALUES (160, 'LEGO Star Wars: The Empire Strikes Out');
INSERT INTO public.normalized_films VALUES (161, 'Star Wars SC 38 Reimagined');
INSERT INTO public.normalized_films VALUES (162, 'LEGO Star Wars - Clone Trooper Orchestra');
INSERT INTO public.normalized_films VALUES (163, 'Star Wars The Old Republic: Hope');
INSERT INTO public.normalized_films VALUES (164, 'The Star Wars Suite – The Danish National Symphony Orchestra');
INSERT INTO public.normalized_films VALUES (165, 'Star Wars: Tales from the Galaxy''s Edge');
INSERT INTO public.normalized_films VALUES (166, 'Star Wars : Hunter''s Revenge');
INSERT INTO public.normalized_films VALUES (167, 'Star Wars: Droids - The Battle Against Sise Fromm');
INSERT INTO public.normalized_films VALUES (168, 'Star Wars Project 4K77');
INSERT INTO public.normalized_films VALUES (169, 'Star Wars: Machete Order');
INSERT INTO public.normalized_films VALUES (170, 'First Order, Last Jedi - A Star Wars Story');
INSERT INTO public.normalized_films VALUES (171, 'Star Wars: Knights of the Old Republic II Episode IV - Rise of the Sith Lords');
INSERT INTO public.normalized_films VALUES (172, 'Star Wars Rebels: Spark of Rebellion');
INSERT INTO public.normalized_films VALUES (173, 'Star Wars: A Musical Journey');
INSERT INTO public.normalized_films VALUES (174, 'From Star Wars to Star Wars: The Story of Industrial Light & Magic');
INSERT INTO public.normalized_films VALUES (175, 'From the Ashes: A LEGO Star Wars Story');
INSERT INTO public.normalized_films VALUES (176, 'Star Wars Rebels: Entanglement');
INSERT INTO public.normalized_films VALUES (177, 'WCCW Star Wars (February 1981)');
INSERT INTO public.normalized_films VALUES (178, 'Star Wars Episode X The Spiked Menace');
INSERT INTO public.normalized_films VALUES (179, 'Last trial: A Star Wars collateral story');
INSERT INTO public.normalized_films VALUES (180, 'Star Wars XXX: A Porn Parody');
INSERT INTO public.normalized_films VALUES (181, 'The Dark Resurgence: A Star Wars Story');
INSERT INTO public.normalized_films VALUES (182, 'Star Wars: The Clone Wars - The Lost Missions');
INSERT INTO public.normalized_films VALUES (183, 'Star Wars: The Rise of Skywalker');
INSERT INTO public.normalized_films VALUES (184, 'RiffTrax: The Star Wars Holiday Special');
INSERT INTO public.normalized_films VALUES (185, 'Star Wars Comedy Skit');
INSERT INTO public.normalized_films VALUES (186, 'Star Wars: The Old Republic - Legacy of the Sith');
INSERT INTO public.normalized_films VALUES (187, 'In The Lone Star Wars State');
INSERT INTO public.normalized_films VALUES (188, 'Star Wars: Episode III - Making the Game');
INSERT INTO public.normalized_films VALUES (189, 'Star Wars Concert');
INSERT INTO public.normalized_films VALUES (190, 'Battle Star Wars');
INSERT INTO public.normalized_films VALUES (191, 'Dynasty Typewriter''s Live Stage Reading of Star Wars Collection');
INSERT INTO public.normalized_films VALUES (192, 'The Story of Star Wars');
INSERT INTO public.normalized_films VALUES (193, 'Built by Jedi - The Making of Star Wars Jedi: Fallen Order');
INSERT INTO public.normalized_films VALUES (194, 'When Star Wars Ruled the World');
INSERT INTO public.normalized_films VALUES (195, 'Star Wars: Origins');
INSERT INTO public.normalized_films VALUES (196, 'Star Wars: The Bad Batch | Featurette - Now');
INSERT INTO public.normalized_films VALUES (197, 'Star Wars: Andor');
INSERT INTO public.normalized_films VALUES (198, 'WCCW Thanksgiving Star Wars ''84');
INSERT INTO public.normalized_films VALUES (199, 'Star Wars: Eclipse');
INSERT INTO public.normalized_films VALUES (200, 'Star Wars: The Acolyte - Advanced Fan Screening');
INSERT INTO public.normalized_films VALUES (201, 'Star Wars vs. Star Trek: The Rivalry Continues');
INSERT INTO public.normalized_films VALUES (202, 'Star Wars (1977) - Project 4K77 Edition');
INSERT INTO public.normalized_films VALUES (203, 'Toy Empire: The British Force Behind Star Wars Toys');
INSERT INTO public.normalized_films VALUES (204, 'STAR WARS: OUTSIDER');
INSERT INTO public.normalized_films VALUES (205, 'The Untitled Star Wars Mockumentary');
INSERT INTO public.normalized_films VALUES (206, 'Robert Guenette''s Star Wars Original Trilogy Documentaries');
INSERT INTO public.normalized_films VALUES (207, 'Star Wars');
INSERT INTO public.normalized_films VALUES (208, 'Doraemon: Nobita''s Little Star Wars 2021');
INSERT INTO public.normalized_films VALUES (209, 'Star Wars l''intégrale de la saga bonus IV-VI archives');
INSERT INTO public.normalized_films VALUES (210, 'Star Wars: Battlefront II');
INSERT INTO public.normalized_films VALUES (211, 'Star Wars: Squadrons');
INSERT INTO public.normalized_films VALUES (212, 'Star Wars: Droids - The Great Heep');
INSERT INTO public.normalized_films VALUES (213, 'Star Wars in Real Life I: A New Menace');
INSERT INTO public.normalized_films VALUES (214, 'WCCW Star Wars (August 1982)');
INSERT INTO public.normalized_films VALUES (215, 'Star Wars épisode IV despecialized édition');
INSERT INTO public.normalized_films VALUES (216, 'Star Wars Uncut');
INSERT INTO public.normalized_films VALUES (217, 'Lego Star Wars: The New Yoda Chronicles: Race for the Holocrons');
INSERT INTO public.normalized_films VALUES (218, 'Star Wars: Droids - The Pirates and the Prince');
INSERT INTO public.normalized_films VALUES (219, 'Star Wars: The Legacy Revealed');
INSERT INTO public.normalized_films VALUES (220, 'Lego Star Wars: The Yoda Chronicles: Mini Movies');
INSERT INTO public.normalized_films VALUES (221, 'WCCW Christmas Star Wars 1981');
INSERT INTO public.normalized_films VALUES (222, 'Star Wars L''intrégale de la saga  bonus I-III archives');
INSERT INTO public.normalized_films VALUES (223, 'Star Wars Resistance: The Recruit');
INSERT INTO public.normalized_films VALUES (224, 'Star Wars: Episode II - Attack of the Clones');
INSERT INTO public.normalized_films VALUES (225, 'Star Wars Ahsoka - The Patterson Cut');
INSERT INTO public.normalized_films VALUES (226, 'Star Wars: Discoveries From Inside - Weapons & The First Lightsaber');
INSERT INTO public.normalized_films VALUES (227, 'Star Wars: The Force Awakens');
INSERT INTO public.normalized_films VALUES (228, 'Star Wars at the BBC');
INSERT INTO public.normalized_films VALUES (229, 'Star Wars: Evolution of the Lightsaber Duel');
INSERT INTO public.normalized_films VALUES (230, 'Cuarto Milenio. Especial Star Wars');
INSERT INTO public.normalized_films VALUES (231, 'Star Wars: Episode IV -  A New Hope');
INSERT INTO public.normalized_films VALUES (232, 'Tim vs. Star Wars: Episode III');
INSERT INTO public.normalized_films VALUES (233, 'Tim vs. Star Wars: Episode II');
INSERT INTO public.normalized_films VALUES (234, 'The Mandalorian A Star Wars Story');
INSERT INTO public.normalized_films VALUES (235, 'Star Wars Episode I: Betrayal Of The Force');
INSERT INTO public.normalized_films VALUES (236, 'Star Wars The Old Republic: Return');
INSERT INTO public.normalized_films VALUES (237, 'Star Wars: Clone Wars - Volume Two');
INSERT INTO public.normalized_films VALUES (238, 'Vader Immortal: A Star Wars VR Series - Episode III');
INSERT INTO public.normalized_films VALUES (239, 'Star Wars: The Lone Wanderer');
INSERT INTO public.normalized_films VALUES (240, 'Untitled Kevin Feige Star Wars Film');
INSERT INTO public.normalized_films VALUES (241, 'Star Wars Rebels: Heroes of Mandalore');
INSERT INTO public.normalized_films VALUES (242, 'Star Wars: Clone Wars Volume One');
INSERT INTO public.normalized_films VALUES (243, 'Disney Gallery - Star Wars: The Mandalorian Making Season 2');
INSERT INTO public.normalized_films VALUES (244, 'Star Wars: Rebels - Art Attack');
INSERT INTO public.normalized_films VALUES (245, 'Star Wars The Bounty');
INSERT INTO public.normalized_films VALUES (246, 'Next Star Wars');
INSERT INTO public.normalized_films VALUES (247, 'Star Wars Rebels: The Siege of Lothal');
INSERT INTO public.normalized_films VALUES (248, 'Star Wars: Galaxy''s Edge - Adventure Awaits');
INSERT INTO public.normalized_films VALUES (249, 'Star Wars Episode III - Revenge of the Sith Ultimate Edition');
INSERT INTO public.normalized_films VALUES (250, 'PWUSA Star Wars');
INSERT INTO public.normalized_films VALUES (251, 'STAR WARS RED: A Star Wars Fan Film');
INSERT INTO public.normalized_films VALUES (252, 'Showdown auf dem Schmugglermond - Lego Star Wars Brickfilm');
INSERT INTO public.normalized_films VALUES (253, 'LEGO Star Wars Summer Vacation');
INSERT INTO public.normalized_films VALUES (254, 'Angry Birds Star Wars II Rebels: Villain of the Year');
INSERT INTO public.normalized_films VALUES (255, 'STAR WARS The 212th');
INSERT INTO public.normalized_films VALUES (256, 'Star Wars: Macbeth');
INSERT INTO public.normalized_films VALUES (257, 'Star Wars : La Révolution Visuelle');
INSERT INTO public.normalized_films VALUES (258, 'Some Star Wars-Influenced 8mm Production');
INSERT INTO public.normalized_films VALUES (259, 'Robot Chicken: Star Wars');
INSERT INTO public.normalized_films VALUES (260, 'Star Wars Tech');
INSERT INTO public.normalized_films VALUES (261, 'LEGO Star Wars Terrifying Tales');
INSERT INTO public.normalized_films VALUES (262, 'Star Wars: I-III Archives');
INSERT INTO public.normalized_films VALUES (263, 'Making Of à la manière de Star Wars: La Guerre Des Peaux');
INSERT INTO public.normalized_films VALUES (264, 'Star Wars: X-Wing | A Star Wars Fan Film');
INSERT INTO public.normalized_films VALUES (265, 'Star Wars Episode V 1/2: The Han Solo Affair');
INSERT INTO public.normalized_films VALUES (266, 'Phineas and Ferb: Star Wars');
INSERT INTO public.normalized_films VALUES (267, 'Star Wars - The Race');
INSERT INTO public.normalized_films VALUES (268, 'How Star Wars Changed the World');
INSERT INTO public.normalized_films VALUES (269, 'Lego Star Wars: The Yoda Chronicles: The Phantom Clone');
INSERT INTO public.normalized_films VALUES (270, 'Star Wars Kabuki — Rennosuke and the Three Light Sabers');
INSERT INTO public.normalized_films VALUES (271, 'Lego Star Wars: The Yoda Chronicles: Attack of the Jedi');
INSERT INTO public.normalized_films VALUES (272, 'Solo: A Star Wars Story');
INSERT INTO public.normalized_films VALUES (273, 'Star Wars: Ewoks - Tales from the Endor Woods');
INSERT INTO public.normalized_films VALUES (274, 'Robot Chicken: Star Wars Episode II');
INSERT INTO public.normalized_films VALUES (275, 'Star Wars: The Clone Wars - The Nightsisters Trilogy');
INSERT INTO public.normalized_films VALUES (276, 'Star Wars Extended Collection');
INSERT INTO public.normalized_films VALUES (277, 'From ''Star Wars'' to ''Jedi'' : The Making of a Saga');
INSERT INTO public.normalized_films VALUES (278, 'Wingman - An X-Wing Story | Star Wars Fan Film');
INSERT INTO public.normalized_films VALUES (279, 'The Secret of Star Wars');
INSERT INTO public.normalized_films VALUES (280, 'The Stories: The Making of ''Rogue One: A Star Wars Story''');
INSERT INTO public.normalized_films VALUES (281, 'LEGO the Mandalorian: Trouble Wif'' Daddy - A Star Wars Story');
INSERT INTO public.normalized_films VALUES (282, 'Untitled Star Wars Trilogy by Rian Johnson');
INSERT INTO public.normalized_films VALUES (283, 'Rogue One: A Star Wars Story');
INSERT INTO public.normalized_films VALUES (284, 'WCCW Christmas Star Wars ''83');
INSERT INTO public.normalized_films VALUES (285, 'Star Wars: Music by John Williams');
INSERT INTO public.normalized_films VALUES (286, 'Star Wars: Episode III - Revenge of the Sith');
INSERT INTO public.normalized_films VALUES (287, 'Star Wars Dreams');
INSERT INTO public.normalized_films VALUES (288, 'Star Wars: Knights of the Old Republic Episode III - The Circle of Fate');
INSERT INTO public.normalized_films VALUES (289, 'Star Wars: Tales of the Twin Suns, Episode One: Birth of a Monster');
INSERT INTO public.normalized_films VALUES (290, 'WCCW Christmas Star Wars ''84');
INSERT INTO public.normalized_films VALUES (291, 'Tim vs. Star Wars: Episode I');
INSERT INTO public.normalized_films VALUES (292, 'Star Wars: A XXX Gay Parody');
INSERT INTO public.normalized_films VALUES (293, 'Star Wars: The Last Jedi');
INSERT INTO public.normalized_films VALUES (294, 'Untitled New Republic Era Star Wars Film');
INSERT INTO public.normalized_films VALUES (295, 'Star Wars: Gray Trials the Movie ( An Old Republic Fan Film)');
INSERT INTO public.normalized_films VALUES (296, 'Star Wars: The Siege of Mandalore');
INSERT INTO public.normalized_films VALUES (297, 'Star Wars in Real Life II.V: Shadows of the Past');
INSERT INTO public.normalized_films VALUES (298, 'The Making of Star Wars');
INSERT INTO public.normalized_films VALUES (299, 'Star Wars: The Equilibrium Knight II- The Cast of Shadows');
INSERT INTO public.normalized_films VALUES (300, 'Star Wars Rebels: Property of Ezra Bridger');
INSERT INTO public.normalized_films VALUES (301, 'Pro Wrestling USA Star Wars: December 1984');


--
-- TOC entry 5130 (class 0 OID 29641)
-- Dependencies: 240
-- Data for Name: normalized_films_people; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.normalized_films_people VALUES (1, 1);
INSERT INTO public.normalized_films_people VALUES (1, 2);
INSERT INTO public.normalized_films_people VALUES (1, 3);
INSERT INTO public.normalized_films_people VALUES (1, 4);
INSERT INTO public.normalized_films_people VALUES (1, 5);
INSERT INTO public.normalized_films_people VALUES (1, 6);
INSERT INTO public.normalized_films_people VALUES (1, 7);
INSERT INTO public.normalized_films_people VALUES (1, 8);
INSERT INTO public.normalized_films_people VALUES (1, 9);
INSERT INTO public.normalized_films_people VALUES (1, 10);
INSERT INTO public.normalized_films_people VALUES (1, 12);
INSERT INTO public.normalized_films_people VALUES (1, 13);
INSERT INTO public.normalized_films_people VALUES (1, 14);
INSERT INTO public.normalized_films_people VALUES (1, 15);
INSERT INTO public.normalized_films_people VALUES (1, 16);
INSERT INTO public.normalized_films_people VALUES (1, 17);
INSERT INTO public.normalized_films_people VALUES (1, 18);
INSERT INTO public.normalized_films_people VALUES (1, 80);
INSERT INTO public.normalized_films_people VALUES (2, 1);
INSERT INTO public.normalized_films_people VALUES (2, 2);
INSERT INTO public.normalized_films_people VALUES (2, 3);
INSERT INTO public.normalized_films_people VALUES (2, 4);
INSERT INTO public.normalized_films_people VALUES (2, 5);
INSERT INTO public.normalized_films_people VALUES (2, 10);
INSERT INTO public.normalized_films_people VALUES (2, 13);
INSERT INTO public.normalized_films_people VALUES (2, 14);
INSERT INTO public.normalized_films_people VALUES (2, 17);
INSERT INTO public.normalized_films_people VALUES (2, 19);
INSERT INTO public.normalized_films_people VALUES (2, 20);
INSERT INTO public.normalized_films_people VALUES (2, 21);
INSERT INTO public.normalized_films_people VALUES (2, 22);
INSERT INTO public.normalized_films_people VALUES (2, 23);
INSERT INTO public.normalized_films_people VALUES (2, 24);
INSERT INTO public.normalized_films_people VALUES (2, 25);
INSERT INTO public.normalized_films_people VALUES (3, 1);
INSERT INTO public.normalized_films_people VALUES (3, 2);
INSERT INTO public.normalized_films_people VALUES (3, 3);
INSERT INTO public.normalized_films_people VALUES (3, 4);
INSERT INTO public.normalized_films_people VALUES (3, 5);
INSERT INTO public.normalized_films_people VALUES (3, 10);
INSERT INTO public.normalized_films_people VALUES (3, 13);
INSERT INTO public.normalized_films_people VALUES (3, 14);
INSERT INTO public.normalized_films_people VALUES (3, 16);
INSERT INTO public.normalized_films_people VALUES (3, 17);
INSERT INTO public.normalized_films_people VALUES (3, 19);
INSERT INTO public.normalized_films_people VALUES (3, 20);
INSERT INTO public.normalized_films_people VALUES (3, 21);
INSERT INTO public.normalized_films_people VALUES (3, 24);
INSERT INTO public.normalized_films_people VALUES (3, 26);
INSERT INTO public.normalized_films_people VALUES (3, 27);
INSERT INTO public.normalized_films_people VALUES (3, 28);
INSERT INTO public.normalized_films_people VALUES (3, 29);
INSERT INTO public.normalized_films_people VALUES (3, 30);
INSERT INTO public.normalized_films_people VALUES (3, 44);
INSERT INTO public.normalized_films_people VALUES (4, 2);
INSERT INTO public.normalized_films_people VALUES (4, 3);
INSERT INTO public.normalized_films_people VALUES (4, 10);
INSERT INTO public.normalized_films_people VALUES (4, 11);
INSERT INTO public.normalized_films_people VALUES (4, 16);
INSERT INTO public.normalized_films_people VALUES (4, 19);
INSERT INTO public.normalized_films_people VALUES (4, 20);
INSERT INTO public.normalized_films_people VALUES (4, 31);
INSERT INTO public.normalized_films_people VALUES (4, 32);
INSERT INTO public.normalized_films_people VALUES (4, 33);
INSERT INTO public.normalized_films_people VALUES (4, 34);
INSERT INTO public.normalized_films_people VALUES (4, 35);
INSERT INTO public.normalized_films_people VALUES (4, 36);
INSERT INTO public.normalized_films_people VALUES (4, 37);
INSERT INTO public.normalized_films_people VALUES (4, 38);
INSERT INTO public.normalized_films_people VALUES (4, 39);
INSERT INTO public.normalized_films_people VALUES (4, 40);
INSERT INTO public.normalized_films_people VALUES (4, 41);
INSERT INTO public.normalized_films_people VALUES (4, 42);
INSERT INTO public.normalized_films_people VALUES (4, 43);
INSERT INTO public.normalized_films_people VALUES (4, 45);
INSERT INTO public.normalized_films_people VALUES (4, 46);
INSERT INTO public.normalized_films_people VALUES (4, 47);
INSERT INTO public.normalized_films_people VALUES (4, 48);
INSERT INTO public.normalized_films_people VALUES (4, 49);
INSERT INTO public.normalized_films_people VALUES (4, 50);
INSERT INTO public.normalized_films_people VALUES (4, 51);
INSERT INTO public.normalized_films_people VALUES (4, 52);
INSERT INTO public.normalized_films_people VALUES (4, 53);
INSERT INTO public.normalized_films_people VALUES (4, 54);
INSERT INTO public.normalized_films_people VALUES (4, 55);
INSERT INTO public.normalized_films_people VALUES (4, 56);
INSERT INTO public.normalized_films_people VALUES (4, 57);
INSERT INTO public.normalized_films_people VALUES (4, 58);
INSERT INTO public.normalized_films_people VALUES (5, 2);
INSERT INTO public.normalized_films_people VALUES (5, 3);
INSERT INTO public.normalized_films_people VALUES (5, 6);
INSERT INTO public.normalized_films_people VALUES (5, 7);
INSERT INTO public.normalized_films_people VALUES (5, 10);
INSERT INTO public.normalized_films_people VALUES (5, 11);
INSERT INTO public.normalized_films_people VALUES (5, 19);
INSERT INTO public.normalized_films_people VALUES (5, 20);
INSERT INTO public.normalized_films_people VALUES (5, 21);
INSERT INTO public.normalized_films_people VALUES (5, 32);
INSERT INTO public.normalized_films_people VALUES (5, 34);
INSERT INTO public.normalized_films_people VALUES (5, 35);
INSERT INTO public.normalized_films_people VALUES (5, 39);
INSERT INTO public.normalized_films_people VALUES (5, 42);
INSERT INTO public.normalized_films_people VALUES (5, 45);
INSERT INTO public.normalized_films_people VALUES (5, 50);
INSERT INTO public.normalized_films_people VALUES (5, 51);
INSERT INTO public.normalized_films_people VALUES (5, 52);
INSERT INTO public.normalized_films_people VALUES (5, 57);
INSERT INTO public.normalized_films_people VALUES (5, 58);
INSERT INTO public.normalized_films_people VALUES (5, 59);
INSERT INTO public.normalized_films_people VALUES (5, 60);
INSERT INTO public.normalized_films_people VALUES (5, 61);
INSERT INTO public.normalized_films_people VALUES (5, 62);
INSERT INTO public.normalized_films_people VALUES (5, 63);
INSERT INTO public.normalized_films_people VALUES (5, 64);
INSERT INTO public.normalized_films_people VALUES (5, 65);
INSERT INTO public.normalized_films_people VALUES (5, 66);
INSERT INTO public.normalized_films_people VALUES (5, 67);
INSERT INTO public.normalized_films_people VALUES (5, 68);
INSERT INTO public.normalized_films_people VALUES (5, 69);
INSERT INTO public.normalized_films_people VALUES (5, 70);
INSERT INTO public.normalized_films_people VALUES (5, 71);
INSERT INTO public.normalized_films_people VALUES (5, 72);
INSERT INTO public.normalized_films_people VALUES (5, 73);
INSERT INTO public.normalized_films_people VALUES (5, 74);
INSERT INTO public.normalized_films_people VALUES (5, 75);
INSERT INTO public.normalized_films_people VALUES (5, 76);
INSERT INTO public.normalized_films_people VALUES (5, 77);
INSERT INTO public.normalized_films_people VALUES (5, 81);
INSERT INTO public.normalized_films_people VALUES (6, 1);
INSERT INTO public.normalized_films_people VALUES (6, 2);
INSERT INTO public.normalized_films_people VALUES (6, 3);
INSERT INTO public.normalized_films_people VALUES (6, 4);
INSERT INTO public.normalized_films_people VALUES (6, 5);
INSERT INTO public.normalized_films_people VALUES (6, 6);
INSERT INTO public.normalized_films_people VALUES (6, 7);
INSERT INTO public.normalized_films_people VALUES (6, 10);
INSERT INTO public.normalized_films_people VALUES (6, 11);
INSERT INTO public.normalized_films_people VALUES (6, 12);
INSERT INTO public.normalized_films_people VALUES (6, 13);
INSERT INTO public.normalized_films_people VALUES (6, 19);
INSERT INTO public.normalized_films_people VALUES (6, 20);
INSERT INTO public.normalized_films_people VALUES (6, 32);
INSERT INTO public.normalized_films_people VALUES (6, 34);
INSERT INTO public.normalized_films_people VALUES (6, 45);
INSERT INTO public.normalized_films_people VALUES (6, 50);
INSERT INTO public.normalized_films_people VALUES (6, 51);
INSERT INTO public.normalized_films_people VALUES (6, 52);
INSERT INTO public.normalized_films_people VALUES (6, 53);
INSERT INTO public.normalized_films_people VALUES (6, 54);
INSERT INTO public.normalized_films_people VALUES (6, 55);
INSERT INTO public.normalized_films_people VALUES (6, 57);
INSERT INTO public.normalized_films_people VALUES (6, 62);
INSERT INTO public.normalized_films_people VALUES (6, 63);
INSERT INTO public.normalized_films_people VALUES (6, 66);
INSERT INTO public.normalized_films_people VALUES (6, 67);
INSERT INTO public.normalized_films_people VALUES (6, 74);
INSERT INTO public.normalized_films_people VALUES (6, 77);
INSERT INTO public.normalized_films_people VALUES (6, 78);
INSERT INTO public.normalized_films_people VALUES (6, 79);
INSERT INTO public.normalized_films_people VALUES (6, 80);
INSERT INTO public.normalized_films_people VALUES (6, 81);
INSERT INTO public.normalized_films_people VALUES (6, 82);


--
-- TOC entry 5142 (class 0 OID 29769)
-- Dependencies: 252
-- Data for Name: normalized_films_species; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.normalized_films_species VALUES (1, 1);
INSERT INTO public.normalized_films_species VALUES (1, 2);
INSERT INTO public.normalized_films_species VALUES (1, 3);
INSERT INTO public.normalized_films_species VALUES (1, 4);
INSERT INTO public.normalized_films_species VALUES (2, 1);
INSERT INTO public.normalized_films_species VALUES (2, 2);
INSERT INTO public.normalized_films_species VALUES (2, 5);
INSERT INTO public.normalized_films_species VALUES (2, 6);
INSERT INTO public.normalized_films_species VALUES (3, 1);
INSERT INTO public.normalized_films_species VALUES (3, 2);
INSERT INTO public.normalized_films_species VALUES (3, 4);
INSERT INTO public.normalized_films_species VALUES (3, 5);
INSERT INTO public.normalized_films_species VALUES (3, 7);
INSERT INTO public.normalized_films_species VALUES (3, 8);
INSERT INTO public.normalized_films_species VALUES (3, 9);
INSERT INTO public.normalized_films_species VALUES (3, 14);
INSERT INTO public.normalized_films_species VALUES (4, 1);
INSERT INTO public.normalized_films_species VALUES (4, 5);
INSERT INTO public.normalized_films_species VALUES (4, 10);
INSERT INTO public.normalized_films_species VALUES (4, 11);
INSERT INTO public.normalized_films_species VALUES (4, 12);
INSERT INTO public.normalized_films_species VALUES (4, 13);
INSERT INTO public.normalized_films_species VALUES (4, 14);
INSERT INTO public.normalized_films_species VALUES (4, 15);
INSERT INTO public.normalized_films_species VALUES (4, 16);
INSERT INTO public.normalized_films_species VALUES (4, 17);
INSERT INTO public.normalized_films_species VALUES (4, 18);
INSERT INTO public.normalized_films_species VALUES (4, 19);
INSERT INTO public.normalized_films_species VALUES (4, 20);
INSERT INTO public.normalized_films_species VALUES (4, 21);
INSERT INTO public.normalized_films_species VALUES (4, 22);
INSERT INTO public.normalized_films_species VALUES (4, 23);
INSERT INTO public.normalized_films_species VALUES (4, 24);
INSERT INTO public.normalized_films_species VALUES (4, 25);
INSERT INTO public.normalized_films_species VALUES (4, 26);
INSERT INTO public.normalized_films_species VALUES (5, 1);
INSERT INTO public.normalized_films_species VALUES (5, 5);
INSERT INTO public.normalized_films_species VALUES (5, 11);
INSERT INTO public.normalized_films_species VALUES (5, 12);
INSERT INTO public.normalized_films_species VALUES (5, 14);
INSERT INTO public.normalized_films_species VALUES (5, 27);
INSERT INTO public.normalized_films_species VALUES (5, 28);
INSERT INTO public.normalized_films_species VALUES (5, 29);
INSERT INTO public.normalized_films_species VALUES (5, 30);
INSERT INTO public.normalized_films_species VALUES (5, 31);
INSERT INTO public.normalized_films_species VALUES (5, 32);
INSERT INTO public.normalized_films_species VALUES (5, 33);
INSERT INTO public.normalized_films_species VALUES (5, 34);
INSERT INTO public.normalized_films_species VALUES (6, 1);
INSERT INTO public.normalized_films_species VALUES (6, 2);
INSERT INTO public.normalized_films_species VALUES (6, 5);
INSERT INTO public.normalized_films_species VALUES (6, 14);
INSERT INTO public.normalized_films_species VALUES (6, 18);
INSERT INTO public.normalized_films_species VALUES (6, 19);
INSERT INTO public.normalized_films_species VALUES (6, 22);
INSERT INTO public.normalized_films_species VALUES (6, 23);
INSERT INTO public.normalized_films_species VALUES (6, 24);
INSERT INTO public.normalized_films_species VALUES (6, 25);
INSERT INTO public.normalized_films_species VALUES (6, 26);
INSERT INTO public.normalized_films_species VALUES (6, 27);
INSERT INTO public.normalized_films_species VALUES (6, 28);
INSERT INTO public.normalized_films_species VALUES (6, 29);
INSERT INTO public.normalized_films_species VALUES (6, 32);
INSERT INTO public.normalized_films_species VALUES (6, 33);
INSERT INTO public.normalized_films_species VALUES (6, 34);
INSERT INTO public.normalized_films_species VALUES (6, 35);
INSERT INTO public.normalized_films_species VALUES (6, 36);


--
-- TOC entry 5135 (class 0 OID 29697)
-- Dependencies: 245
-- Data for Name: normalized_films_starships; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.normalized_films_starships VALUES (6, 1);
INSERT INTO public.normalized_films_starships VALUES (3, 1);
INSERT INTO public.normalized_films_starships VALUES (1, 1);
INSERT INTO public.normalized_films_starships VALUES (3, 2);
INSERT INTO public.normalized_films_starships VALUES (2, 2);
INSERT INTO public.normalized_films_starships VALUES (1, 2);
INSERT INTO public.normalized_films_starships VALUES (1, 3);
INSERT INTO public.normalized_films_starships VALUES (1, 4);
INSERT INTO public.normalized_films_starships VALUES (3, 5);
INSERT INTO public.normalized_films_starships VALUES (2, 5);
INSERT INTO public.normalized_films_starships VALUES (1, 5);
INSERT INTO public.normalized_films_starships VALUES (3, 6);
INSERT INTO public.normalized_films_starships VALUES (2, 6);
INSERT INTO public.normalized_films_starships VALUES (1, 6);
INSERT INTO public.normalized_films_starships VALUES (3, 7);
INSERT INTO public.normalized_films_starships VALUES (2, 7);
INSERT INTO public.normalized_films_starships VALUES (1, 7);
INSERT INTO public.normalized_films_starships VALUES (1, 8);
INSERT INTO public.normalized_films_starships VALUES (3, 9);
INSERT INTO public.normalized_films_starships VALUES (2, 9);
INSERT INTO public.normalized_films_starships VALUES (3, 10);
INSERT INTO public.normalized_films_starships VALUES (2, 10);
INSERT INTO public.normalized_films_starships VALUES (5, 11);
INSERT INTO public.normalized_films_starships VALUES (2, 11);
INSERT INTO public.normalized_films_starships VALUES (3, 12);
INSERT INTO public.normalized_films_starships VALUES (2, 12);
INSERT INTO public.normalized_films_starships VALUES (3, 13);
INSERT INTO public.normalized_films_starships VALUES (2, 13);
INSERT INTO public.normalized_films_starships VALUES (3, 14);
INSERT INTO public.normalized_films_starships VALUES (3, 15);
INSERT INTO public.normalized_films_starships VALUES (3, 16);
INSERT INTO public.normalized_films_starships VALUES (4, 17);
INSERT INTO public.normalized_films_starships VALUES (6, 18);
INSERT INTO public.normalized_films_starships VALUES (5, 18);
INSERT INTO public.normalized_films_starships VALUES (4, 18);
INSERT INTO public.normalized_films_starships VALUES (5, 19);
INSERT INTO public.normalized_films_starships VALUES (4, 19);
INSERT INTO public.normalized_films_starships VALUES (4, 20);
INSERT INTO public.normalized_films_starships VALUES (4, 21);
INSERT INTO public.normalized_films_starships VALUES (5, 22);
INSERT INTO public.normalized_films_starships VALUES (5, 23);
INSERT INTO public.normalized_films_starships VALUES (6, 24);
INSERT INTO public.normalized_films_starships VALUES (5, 24);
INSERT INTO public.normalized_films_starships VALUES (5, 25);
INSERT INTO public.normalized_films_starships VALUES (5, 26);
INSERT INTO public.normalized_films_starships VALUES (5, 27);
INSERT INTO public.normalized_films_starships VALUES (6, 28);
INSERT INTO public.normalized_films_starships VALUES (6, 29);
INSERT INTO public.normalized_films_starships VALUES (6, 30);
INSERT INTO public.normalized_films_starships VALUES (6, 31);
INSERT INTO public.normalized_films_starships VALUES (6, 32);
INSERT INTO public.normalized_films_starships VALUES (6, 33);
INSERT INTO public.normalized_films_starships VALUES (6, 34);
INSERT INTO public.normalized_films_starships VALUES (6, 35);
INSERT INTO public.normalized_films_starships VALUES (6, 36);


--
-- TOC entry 5139 (class 0 OID 29738)
-- Dependencies: 249
-- Data for Name: normalized_films_vehicles; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.normalized_films_vehicles VALUES (1, 1);
INSERT INTO public.normalized_films_vehicles VALUES (1, 2);
INSERT INTO public.normalized_films_vehicles VALUES (1, 3);
INSERT INTO public.normalized_films_vehicles VALUES (1, 4);
INSERT INTO public.normalized_films_vehicles VALUES (2, 4);
INSERT INTO public.normalized_films_vehicles VALUES (2, 5);
INSERT INTO public.normalized_films_vehicles VALUES (2, 6);
INSERT INTO public.normalized_films_vehicles VALUES (2, 7);
INSERT INTO public.normalized_films_vehicles VALUES (2, 8);
INSERT INTO public.normalized_films_vehicles VALUES (2, 9);
INSERT INTO public.normalized_films_vehicles VALUES (3, 4);
INSERT INTO public.normalized_films_vehicles VALUES (3, 6);
INSERT INTO public.normalized_films_vehicles VALUES (3, 7);
INSERT INTO public.normalized_films_vehicles VALUES (3, 8);
INSERT INTO public.normalized_films_vehicles VALUES (3, 10);
INSERT INTO public.normalized_films_vehicles VALUES (3, 11);
INSERT INTO public.normalized_films_vehicles VALUES (3, 12);
INSERT INTO public.normalized_films_vehicles VALUES (3, 13);
INSERT INTO public.normalized_films_vehicles VALUES (4, 14);
INSERT INTO public.normalized_films_vehicles VALUES (4, 15);
INSERT INTO public.normalized_films_vehicles VALUES (4, 16);
INSERT INTO public.normalized_films_vehicles VALUES (4, 17);
INSERT INTO public.normalized_films_vehicles VALUES (4, 18);
INSERT INTO public.normalized_films_vehicles VALUES (4, 19);
INSERT INTO public.normalized_films_vehicles VALUES (4, 20);
INSERT INTO public.normalized_films_vehicles VALUES (5, 1);
INSERT INTO public.normalized_films_vehicles VALUES (5, 21);
INSERT INTO public.normalized_films_vehicles VALUES (5, 22);
INSERT INTO public.normalized_films_vehicles VALUES (5, 23);
INSERT INTO public.normalized_films_vehicles VALUES (5, 24);
INSERT INTO public.normalized_films_vehicles VALUES (5, 25);
INSERT INTO public.normalized_films_vehicles VALUES (5, 26);
INSERT INTO public.normalized_films_vehicles VALUES (5, 27);
INSERT INTO public.normalized_films_vehicles VALUES (5, 28);
INSERT INTO public.normalized_films_vehicles VALUES (5, 29);
INSERT INTO public.normalized_films_vehicles VALUES (5, 30);
INSERT INTO public.normalized_films_vehicles VALUES (6, 14);
INSERT INTO public.normalized_films_vehicles VALUES (6, 24);
INSERT INTO public.normalized_films_vehicles VALUES (6, 26);
INSERT INTO public.normalized_films_vehicles VALUES (6, 29);
INSERT INTO public.normalized_films_vehicles VALUES (6, 31);
INSERT INTO public.normalized_films_vehicles VALUES (6, 32);
INSERT INTO public.normalized_films_vehicles VALUES (6, 33);
INSERT INTO public.normalized_films_vehicles VALUES (6, 34);
INSERT INTO public.normalized_films_vehicles VALUES (6, 35);
INSERT INTO public.normalized_films_vehicles VALUES (6, 36);
INSERT INTO public.normalized_films_vehicles VALUES (6, 37);
INSERT INTO public.normalized_films_vehicles VALUES (6, 38);
INSERT INTO public.normalized_films_vehicles VALUES (6, 39);


--
-- TOC entry 5123 (class 0 OID 29574)
-- Dependencies: 233
-- Data for Name: normalized_keywords; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.normalized_keywords VALUES (1, 'animation');
INSERT INTO public.normalized_keywords VALUES (2, 'intergenerational sex');
INSERT INTO public.normalized_keywords VALUES (3, 'kendo');
INSERT INTO public.normalized_keywords VALUES (4, 'planet');
INSERT INTO public.normalized_keywords VALUES (5, 'rebellion');
INSERT INTO public.normalized_keywords VALUES (6, 'fiction');
INSERT INTO public.normalized_keywords VALUES (7, 'desert');
INSERT INTO public.normalized_keywords VALUES (8, 'cult figure');
INSERT INTO public.normalized_keywords VALUES (9, 'variety show');
INSERT INTO public.normalized_keywords VALUES (10, 'science fiction');
INSERT INTO public.normalized_keywords VALUES (11, 'wrestling team');
INSERT INTO public.normalized_keywords VALUES (12, 'space adventure');
INSERT INTO public.normalized_keywords VALUES (13, 'star wars');
INSERT INTO public.normalized_keywords VALUES (14, 'alien language');
INSERT INTO public.normalized_keywords VALUES (15, 'showdown');
INSERT INTO public.normalized_keywords VALUES (16, 'wrestling match');
INSERT INTO public.normalized_keywords VALUES (17, 'uncut');
INSERT INTO public.normalized_keywords VALUES (18, 'clone army');
INSERT INTO public.normalized_keywords VALUES (19, 'fantasy');
INSERT INTO public.normalized_keywords VALUES (20, 'behind the scenes');
INSERT INTO public.normalized_keywords VALUES (21, 'apprentice');
INSERT INTO public.normalized_keywords VALUES (22, 'super power');
INSERT INTO public.normalized_keywords VALUES (23, 'funny');
INSERT INTO public.normalized_keywords VALUES (24, 'actors memory');
INSERT INTO public.normalized_keywords VALUES (25, 'vision');
INSERT INTO public.normalized_keywords VALUES (26, 'prophecy');
INSERT INTO public.normalized_keywords VALUES (27, 'anime');
INSERT INTO public.normalized_keywords VALUES (28, 'celebrity interview');
INSERT INTO public.normalized_keywords VALUES (29, 'spaceport');
INSERT INTO public.normalized_keywords VALUES (30, 'space western');
INSERT INTO public.normalized_keywords VALUES (31, 'model');
INSERT INTO public.normalized_keywords VALUES (32, 'kenobi');
INSERT INTO public.normalized_keywords VALUES (33, 'parody');
INSERT INTO public.normalized_keywords VALUES (34, 'hobby');
INSERT INTO public.normalized_keywords VALUES (35, 'rebel');
INSERT INTO public.normalized_keywords VALUES (36, 'youtube');
INSERT INTO public.normalized_keywords VALUES (37, 'making of');
INSERT INTO public.normalized_keywords VALUES (38, 'queen');
INSERT INTO public.normalized_keywords VALUES (39, 'drunk');
INSERT INTO public.normalized_keywords VALUES (40, 'facial');
INSERT INTO public.normalized_keywords VALUES (41, 'audition');
INSERT INTO public.normalized_keywords VALUES (42, 'against the odds');
INSERT INTO public.normalized_keywords VALUES (43, 'storytelling');
INSERT INTO public.normalized_keywords VALUES (44, 'fighter pilot');
INSERT INTO public.normalized_keywords VALUES (45, 'separatists');
INSERT INTO public.normalized_keywords VALUES (46, 'threesome');
INSERT INTO public.normalized_keywords VALUES (47, 'based on video game');
INSERT INTO public.normalized_keywords VALUES (48, 'sequel');
INSERT INTO public.normalized_keywords VALUES (49, 'action');
INSERT INTO public.normalized_keywords VALUES (50, 'wedding');
INSERT INTO public.normalized_keywords VALUES (51, 'female bounty hunter');
INSERT INTO public.normalized_keywords VALUES (52, 'anal sex');
INSERT INTO public.normalized_keywords VALUES (53, 'musical');
INSERT INTO public.normalized_keywords VALUES (54, 'viral video');
INSERT INTO public.normalized_keywords VALUES (55, 'army');
INSERT INTO public.normalized_keywords VALUES (56, 'smuggling (contraband)');
INSERT INTO public.normalized_keywords VALUES (57, 'teenage rebellion');
INSERT INTO public.normalized_keywords VALUES (58, 'space opera');
INSERT INTO public.normalized_keywords VALUES (59, 'set designer');
INSERT INTO public.normalized_keywords VALUES (60, 'space travel');
INSERT INTO public.normalized_keywords VALUES (61, 'porn parody');
INSERT INTO public.normalized_keywords VALUES (62, 'galaxy');
INSERT INTO public.normalized_keywords VALUES (63, 'internet');
INSERT INTO public.normalized_keywords VALUES (64, 'pro wrestling');
INSERT INTO public.normalized_keywords VALUES (65, 'spoof');
INSERT INTO public.normalized_keywords VALUES (66, 'military operation');
INSERT INTO public.normalized_keywords VALUES (67, 'puppeteer');
INSERT INTO public.normalized_keywords VALUES (68, 'edited from tv series');
INSERT INTO public.normalized_keywords VALUES (69, 'millennium falcon');
INSERT INTO public.normalized_keywords VALUES (70, 'music');
INSERT INTO public.normalized_keywords VALUES (71, 'rescue mission');
INSERT INTO public.normalized_keywords VALUES (72, 'betrayal');
INSERT INTO public.normalized_keywords VALUES (73, 'investigation');
INSERT INTO public.normalized_keywords VALUES (74, 'failure');
INSERT INTO public.normalized_keywords VALUES (75, 'special effects');
INSERT INTO public.normalized_keywords VALUES (76, 'wizard');
INSERT INTO public.normalized_keywords VALUES (77, 'hermit');
INSERT INTO public.normalized_keywords VALUES (78, 'analysis');
INSERT INTO public.normalized_keywords VALUES (79, 'space war');
INSERT INTO public.normalized_keywords VALUES (80, 'lost relationship');
INSERT INTO public.normalized_keywords VALUES (81, 'mythology');
INSERT INTO public.normalized_keywords VALUES (82, 'cyberbullying');
INSERT INTO public.normalized_keywords VALUES (83, 'stop motion');
INSERT INTO public.normalized_keywords VALUES (84, 'pop culture');
INSERT INTO public.normalized_keywords VALUES (85, 'origin story');
INSERT INTO public.normalized_keywords VALUES (86, 'fan film');
INSERT INTO public.normalized_keywords VALUES (87, 'talk show');
INSERT INTO public.normalized_keywords VALUES (88, 'defeat');
INSERT INTO public.normalized_keywords VALUES (89, 'oppression');
INSERT INTO public.normalized_keywords VALUES (90, 'video game development');
INSERT INTO public.normalized_keywords VALUES (91, 'taskmaster');
INSERT INTO public.normalized_keywords VALUES (92, 'love sorrow');
INSERT INTO public.normalized_keywords VALUES (93, 'expectant mother');
INSERT INTO public.normalized_keywords VALUES (94, 'spacecraft');
INSERT INTO public.normalized_keywords VALUES (95, 'muscles');
INSERT INTO public.normalized_keywords VALUES (96, 'film director');
INSERT INTO public.normalized_keywords VALUES (97, 'mythological story');
INSERT INTO public.normalized_keywords VALUES (98, 'film history');
INSERT INTO public.normalized_keywords VALUES (99, 'senate');
INSERT INTO public.normalized_keywords VALUES (100, 'totalitarianism');
INSERT INTO public.normalized_keywords VALUES (101, 'spin off');
INSERT INTO public.normalized_keywords VALUES (102, 'alien race');
INSERT INTO public.normalized_keywords VALUES (103, 'filmmaking');
INSERT INTO public.normalized_keywords VALUES (104, 'action figures');
INSERT INTO public.normalized_keywords VALUES (105, 'gangbang');
INSERT INTO public.normalized_keywords VALUES (106, 'space');
INSERT INTO public.normalized_keywords VALUES (107, 'symphony orchestra');
INSERT INTO public.normalized_keywords VALUES (108, 'short film');
INSERT INTO public.normalized_keywords VALUES (109, 'epic');
INSERT INTO public.normalized_keywords VALUES (110, 'chancel');
INSERT INTO public.normalized_keywords VALUES (111, 'prequel');
INSERT INTO public.normalized_keywords VALUES (112, 'concert');
INSERT INTO public.normalized_keywords VALUES (113, 'female protagonist');
INSERT INTO public.normalized_keywords VALUES (114, 'blind man');
INSERT INTO public.normalized_keywords VALUES (115, 'wrestling coach');
INSERT INTO public.normalized_keywords VALUES (116, 'empire');
INSERT INTO public.normalized_keywords VALUES (117, 'interstellar space');
INSERT INTO public.normalized_keywords VALUES (118, 'disney');
INSERT INTO public.normalized_keywords VALUES (119, 'media appropriation');
INSERT INTO public.normalized_keywords VALUES (120, 'british media');
INSERT INTO public.normalized_keywords VALUES (121, 'the acolyte');
INSERT INTO public.normalized_keywords VALUES (122, 'film crew');
INSERT INTO public.normalized_keywords VALUES (123, 'space battle');
INSERT INTO public.normalized_keywords VALUES (124, 'director');
INSERT INTO public.normalized_keywords VALUES (125, 'laser gun');
INSERT INTO public.normalized_keywords VALUES (126, 'star wars spoof');
INSERT INTO public.normalized_keywords VALUES (127, 'bunker');
INSERT INTO public.normalized_keywords VALUES (128, 'wrestling');
INSERT INTO public.normalized_keywords VALUES (129, 'canada');
INSERT INTO public.normalized_keywords VALUES (130, 'bounty hunter');
INSERT INTO public.normalized_keywords VALUES (131, 'quickie');
INSERT INTO public.normalized_keywords VALUES (132, 'cumshot');
INSERT INTO public.normalized_keywords VALUES (133, 'brickfilm');
INSERT INTO public.normalized_keywords VALUES (134, 'summer vacation');
INSERT INTO public.normalized_keywords VALUES (135, 'rimming');
INSERT INTO public.normalized_keywords VALUES (136, 'fan');
INSERT INTO public.normalized_keywords VALUES (137, 'christmas');
INSERT INTO public.normalized_keywords VALUES (138, 'cowgirl');
INSERT INTO public.normalized_keywords VALUES (139, 'space flights');
INSERT INTO public.normalized_keywords VALUES (140, 'sword fighting');
INSERT INTO public.normalized_keywords VALUES (141, 'alien');
INSERT INTO public.normalized_keywords VALUES (142, 'android');
INSERT INTO public.normalized_keywords VALUES (143, 'interview');
INSERT INTO public.normalized_keywords VALUES (144, 'taxes');
INSERT INTO public.normalized_keywords VALUES (145, 'suicide mission');
INSERT INTO public.normalized_keywords VALUES (146, 'gay pornography');
INSERT INTO public.normalized_keywords VALUES (147, 'comedy');
INSERT INTO public.normalized_keywords VALUES (148, 'lego');
INSERT INTO public.normalized_keywords VALUES (149, 'fate/grand order');
INSERT INTO public.normalized_keywords VALUES (150, 'sword duel');
INSERT INTO public.normalized_keywords VALUES (151, 'bullying');
INSERT INTO public.normalized_keywords VALUES (152, 'theme park');
INSERT INTO public.normalized_keywords VALUES (153, 'struggle for survival');
INSERT INTO public.normalized_keywords VALUES (154, 'pro wrestler');
INSERT INTO public.normalized_keywords VALUES (155, 'good becoming evil');
INSERT INTO public.normalized_keywords VALUES (156, 'fanedit');
INSERT INTO public.normalized_keywords VALUES (157, 'hatred');
INSERT INTO public.normalized_keywords VALUES (158, 'mechanical hand');
INSERT INTO public.normalized_keywords VALUES (159, 'robot');
INSERT INTO public.normalized_keywords VALUES (160, 'quebec');
INSERT INTO public.normalized_keywords VALUES (161, 'movie business');
INSERT INTO public.normalized_keywords VALUES (162, 'holiday');
INSERT INTO public.normalized_keywords VALUES (163, 'film production');
INSERT INTO public.normalized_keywords VALUES (164, 'dream sequence');
INSERT INTO public.normalized_keywords VALUES (165, 'fingering');
INSERT INTO public.normalized_keywords VALUES (166, 'freedom');
INSERT INTO public.normalized_keywords VALUES (167, 'blow job');


--
-- TOC entry 5128 (class 0 OID 29611)
-- Dependencies: 238
-- Data for Name: normalized_people; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.normalized_people VALUES (1, 'https://swapi.dev/api/people/1/', 'Luke Skywalker', '172', '77', 'blond', 'fair', 'blue', '19BBY', 'male', 1);
INSERT INTO public.normalized_people VALUES (2, 'https://swapi.dev/api/people/2/', 'C-3PO', '167', '75', 'n/a', 'gold', 'yellow', '112BBY', 'n/a', 1);
INSERT INTO public.normalized_people VALUES (3, 'https://swapi.dev/api/people/3/', 'R2-D2', '96', '32', 'n/a', 'white, blue', 'red', '33BBY', 'n/a', 8);
INSERT INTO public.normalized_people VALUES (4, 'https://swapi.dev/api/people/4/', 'Darth Vader', '202', '136', 'none', 'white', 'yellow', '41.9BBY', 'male', 1);
INSERT INTO public.normalized_people VALUES (5, 'https://swapi.dev/api/people/5/', 'Leia Organa', '150', '49', 'brown', 'light', 'brown', '19BBY', 'female', 2);
INSERT INTO public.normalized_people VALUES (6, 'https://swapi.dev/api/people/6/', 'Owen Lars', '178', '120', 'brown, grey', 'light', 'blue', '52BBY', 'male', 1);
INSERT INTO public.normalized_people VALUES (7, 'https://swapi.dev/api/people/7/', 'Beru Whitesun lars', '165', '75', 'brown', 'light', 'blue', '47BBY', 'female', 1);
INSERT INTO public.normalized_people VALUES (8, 'https://swapi.dev/api/people/8/', 'R5-D4', '97', '32', 'n/a', 'white, red', 'red', 'unknown', 'n/a', 1);
INSERT INTO public.normalized_people VALUES (9, 'https://swapi.dev/api/people/9/', 'Biggs Darklighter', '183', '84', 'black', 'light', 'brown', '24BBY', 'male', 1);
INSERT INTO public.normalized_people VALUES (10, 'https://swapi.dev/api/people/10/', 'Obi-Wan Kenobi', '182', '77', 'auburn, white', 'fair', 'blue-gray', '57BBY', 'male', 20);
INSERT INTO public.normalized_people VALUES (11, 'https://swapi.dev/api/people/11/', 'Anakin Skywalker', '188', '84', 'blond', 'fair', 'blue', '41.9BBY', 'male', 1);
INSERT INTO public.normalized_people VALUES (12, 'https://swapi.dev/api/people/12/', 'Wilhuff Tarkin', '180', 'unknown', 'auburn, grey', 'fair', 'blue', '64BBY', 'male', 21);
INSERT INTO public.normalized_people VALUES (13, 'https://swapi.dev/api/people/13/', 'Chewbacca', '228', '112', 'brown', 'unknown', 'blue', '200BBY', 'male', 14);
INSERT INTO public.normalized_people VALUES (14, 'https://swapi.dev/api/people/14/', 'Han Solo', '180', '80', 'brown', 'fair', 'brown', '29BBY', 'male', 22);
INSERT INTO public.normalized_people VALUES (15, 'https://swapi.dev/api/people/15/', 'Greedo', '173', '74', 'n/a', 'green', 'black', '44BBY', 'male', 23);
INSERT INTO public.normalized_people VALUES (16, 'https://swapi.dev/api/people/16/', 'Jabba Desilijic Tiure', '175', '1,358', 'n/a', 'green-tan, brown', 'orange', '600BBY', 'hermaphrodite', 24);
INSERT INTO public.normalized_people VALUES (17, 'https://swapi.dev/api/people/18/', 'Wedge Antilles', '170', '77', 'brown', 'fair', 'hazel', '21BBY', 'male', 22);
INSERT INTO public.normalized_people VALUES (18, 'https://swapi.dev/api/people/19/', 'Jek Tono Porkins', '180', '110', 'brown', 'fair', 'blue', 'unknown', 'male', 26);
INSERT INTO public.normalized_people VALUES (19, 'https://swapi.dev/api/people/20/', 'Yoda', '66', '17', 'white', 'green', 'brown', '896BBY', 'male', 28);
INSERT INTO public.normalized_people VALUES (20, 'https://swapi.dev/api/people/21/', 'Palpatine', '170', '75', 'grey', 'pale', 'yellow', '82BBY', 'male', 8);
INSERT INTO public.normalized_people VALUES (21, 'https://swapi.dev/api/people/22/', 'Boba Fett', '183', '78.2', 'black', 'fair', 'brown', '31.5BBY', 'male', 10);
INSERT INTO public.normalized_people VALUES (22, 'https://swapi.dev/api/people/23/', 'IG-88', '200', '140', 'none', 'metal', 'red', '15BBY', 'none', 28);
INSERT INTO public.normalized_people VALUES (23, 'https://swapi.dev/api/people/24/', 'Bossk', '190', '113', 'none', 'green', 'red', '53BBY', 'male', 29);
INSERT INTO public.normalized_people VALUES (24, 'https://swapi.dev/api/people/25/', 'Lando Calrissian', '177', '79', 'black', 'dark', 'brown', '31BBY', 'male', 30);
INSERT INTO public.normalized_people VALUES (25, 'https://swapi.dev/api/people/26/', 'Lobot', '175', '79', 'none', 'light', 'blue', '37BBY', 'male', 6);
INSERT INTO public.normalized_people VALUES (26, 'https://swapi.dev/api/people/27/', 'Ackbar', '180', '83', 'none', 'brown mottle', 'orange', '41BBY', 'male', 31);
INSERT INTO public.normalized_people VALUES (27, 'https://swapi.dev/api/people/28/', 'Mon Mothma', '150', 'unknown', 'auburn', 'fair', 'blue', '48BBY', 'female', 32);
INSERT INTO public.normalized_people VALUES (28, 'https://swapi.dev/api/people/29/', 'Arvel Crynyd', 'unknown', 'unknown', 'brown', 'fair', 'brown', 'unknown', 'male', 28);
INSERT INTO public.normalized_people VALUES (29, 'https://swapi.dev/api/people/30/', 'Wicket Systri Warrick', '88', '20', 'brown', 'brown', 'brown', '8BBY', 'male', 7);
INSERT INTO public.normalized_people VALUES (30, 'https://swapi.dev/api/people/31/', 'Nien Nunb', '160', '68', 'none', 'grey', 'black', 'unknown', 'male', 33);
INSERT INTO public.normalized_people VALUES (31, 'https://swapi.dev/api/people/32/', 'Qui-Gon Jinn', '193', '89', 'brown', 'fair', 'blue', '92BBY', 'male', 28);
INSERT INTO public.normalized_people VALUES (32, 'https://swapi.dev/api/people/33/', 'Nute Gunray', '191', '90', 'none', 'mottled green', 'red', 'unknown', 'male', 18);
INSERT INTO public.normalized_people VALUES (33, 'https://swapi.dev/api/people/34/', 'Finis Valorum', '170', 'unknown', 'blond', 'fair', 'blue', '91BBY', 'male', 9);
INSERT INTO public.normalized_people VALUES (34, 'https://swapi.dev/api/people/35/', 'Padmé Amidala', '185', '45', 'brown', 'light', 'brown', '46BBY', 'female', 8);
INSERT INTO public.normalized_people VALUES (35, 'https://swapi.dev/api/people/36/', 'Jar Jar Binks', '196', '66', 'none', 'orange', 'orange', '52BBY', 'male', 8);
INSERT INTO public.normalized_people VALUES (36, 'https://swapi.dev/api/people/37/', 'Roos Tarpals', '224', '82', 'none', 'grey', 'orange', 'unknown', 'male', 8);
INSERT INTO public.normalized_people VALUES (37, 'https://swapi.dev/api/people/38/', 'Rugor Nass', '206', 'unknown', 'none', 'green', 'orange', 'unknown', 'male', 8);
INSERT INTO public.normalized_people VALUES (38, 'https://swapi.dev/api/people/39/', 'Ric Olié', '183', 'unknown', 'brown', 'fair', 'blue', 'unknown', 'male', 8);
INSERT INTO public.normalized_people VALUES (39, 'https://swapi.dev/api/people/40/', 'Watto', '137', 'unknown', 'black', 'blue, grey', 'yellow', 'unknown', 'male', 34);
INSERT INTO public.normalized_people VALUES (40, 'https://swapi.dev/api/people/41/', 'Sebulba', '112', '40', 'none', 'grey, red', 'orange', 'unknown', 'male', 35);
INSERT INTO public.normalized_people VALUES (41, 'https://swapi.dev/api/people/42/', 'Quarsh Panaka', '183', 'unknown', 'black', 'dark', 'brown', '62BBY', 'male', 8);
INSERT INTO public.normalized_people VALUES (42, 'https://swapi.dev/api/people/43/', 'Shmi Skywalker', '163', 'unknown', 'black', 'fair', 'brown', '72BBY', 'female', 1);
INSERT INTO public.normalized_people VALUES (43, 'https://swapi.dev/api/people/44/', 'Darth Maul', '175', '80', 'none', 'red', 'yellow', '54BBY', 'male', 36);
INSERT INTO public.normalized_people VALUES (44, 'https://swapi.dev/api/people/45/', 'Bib Fortuna', '180', 'unknown', 'none', 'pale', 'pink', 'unknown', 'male', 37);
INSERT INTO public.normalized_people VALUES (45, 'https://swapi.dev/api/people/46/', 'Ayla Secura', '178', '55', 'none', 'blue', 'hazel', '48BBY', 'female', 37);
INSERT INTO public.normalized_people VALUES (46, 'https://swapi.dev/api/people/47/', 'Ratts Tyerel', '79', '15', 'none', 'grey, blue', 'unknown', 'unknown', 'male', 38);
INSERT INTO public.normalized_people VALUES (47, 'https://swapi.dev/api/people/48/', 'Dud Bolt', '94', '45', 'none', 'blue, grey', 'yellow', 'unknown', 'male', 39);
INSERT INTO public.normalized_people VALUES (48, 'https://swapi.dev/api/people/49/', 'Gasgano', '122', 'unknown', 'none', 'white, blue', 'black', 'unknown', 'male', 40);
INSERT INTO public.normalized_people VALUES (49, 'https://swapi.dev/api/people/50/', 'Ben Quadinaros', '163', '65', 'none', 'grey, green, yellow', 'orange', 'unknown', 'male', 41);
INSERT INTO public.normalized_people VALUES (50, 'https://swapi.dev/api/people/51/', 'Mace Windu', '188', '84', 'none', 'dark', 'brown', '72BBY', 'male', 42);
INSERT INTO public.normalized_people VALUES (51, 'https://swapi.dev/api/people/52/', 'Ki-Adi-Mundi', '198', '82', 'white', 'pale', 'yellow', '92BBY', 'male', 43);
INSERT INTO public.normalized_people VALUES (52, 'https://swapi.dev/api/people/53/', 'Kit Fisto', '196', '87', 'none', 'green', 'black', 'unknown', 'male', 44);
INSERT INTO public.normalized_people VALUES (53, 'https://swapi.dev/api/people/54/', 'Eeth Koth', '171', 'unknown', 'black', 'brown', 'brown', 'unknown', 'male', 45);
INSERT INTO public.normalized_people VALUES (54, 'https://swapi.dev/api/people/55/', 'Adi Gallia', '184', '50', 'none', 'dark', 'blue', 'unknown', 'female', 9);
INSERT INTO public.normalized_people VALUES (55, 'https://swapi.dev/api/people/56/', 'Saesee Tiin', '188', 'unknown', 'none', 'pale', 'orange', 'unknown', 'male', 47);
INSERT INTO public.normalized_people VALUES (56, 'https://swapi.dev/api/people/57/', 'Yarael Poof', '264', 'unknown', 'none', 'white', 'yellow', 'unknown', 'male', 48);
INSERT INTO public.normalized_people VALUES (57, 'https://swapi.dev/api/people/58/', 'Plo Koon', '188', '80', 'none', 'orange', 'black', '22BBY', 'male', 49);
INSERT INTO public.normalized_people VALUES (58, 'https://swapi.dev/api/people/59/', 'Mas Amedda', '196', 'unknown', 'none', 'blue', 'blue', 'unknown', 'male', 50);
INSERT INTO public.normalized_people VALUES (59, 'https://swapi.dev/api/people/60/', 'Gregar Typho', '185', '85', 'black', 'dark', 'brown', 'unknown', 'male', 8);
INSERT INTO public.normalized_people VALUES (60, 'https://swapi.dev/api/people/61/', 'Cordé', '157', 'unknown', 'brown', 'light', 'brown', 'unknown', 'female', 8);
INSERT INTO public.normalized_people VALUES (61, 'https://swapi.dev/api/people/62/', 'Cliegg Lars', '183', 'unknown', 'brown', 'fair', 'blue', '82BBY', 'male', 1);
INSERT INTO public.normalized_people VALUES (62, 'https://swapi.dev/api/people/63/', 'Poggle the Lesser', '183', '80', 'none', 'green', 'yellow', 'unknown', 'male', 11);
INSERT INTO public.normalized_people VALUES (63, 'https://swapi.dev/api/people/64/', 'Luminara Unduli', '170', '56.2', 'black', 'yellow', 'blue', '58BBY', 'female', 51);
INSERT INTO public.normalized_people VALUES (64, 'https://swapi.dev/api/people/65/', 'Barriss Offee', '166', '50', 'black', 'yellow', 'blue', '40BBY', 'female', 51);
INSERT INTO public.normalized_people VALUES (65, 'https://swapi.dev/api/people/66/', 'Dormé', '165', 'unknown', 'brown', 'light', 'brown', 'unknown', 'female', 8);
INSERT INTO public.normalized_people VALUES (66, 'https://swapi.dev/api/people/67/', 'Dooku', '193', '80', 'white', 'fair', 'brown', '102BBY', 'male', 52);
INSERT INTO public.normalized_people VALUES (67, 'https://swapi.dev/api/people/68/', 'Bail Prestor Organa', '191', 'unknown', 'black', 'tan', 'brown', '67BBY', 'male', 2);
INSERT INTO public.normalized_people VALUES (68, 'https://swapi.dev/api/people/69/', 'Jango Fett', '183', '79', 'black', 'tan', 'brown', '66BBY', 'male', 53);
INSERT INTO public.normalized_people VALUES (69, 'https://swapi.dev/api/people/70/', 'Zam Wesell', '168', '55', 'blonde', 'fair, green, yellow', 'yellow', 'unknown', 'female', 54);
INSERT INTO public.normalized_people VALUES (70, 'https://swapi.dev/api/people/71/', 'Dexter Jettster', '198', '102', 'none', 'brown', 'yellow', 'unknown', 'male', 55);
INSERT INTO public.normalized_people VALUES (71, 'https://swapi.dev/api/people/72/', 'Lama Su', '229', '88', 'none', 'grey', 'black', 'unknown', 'male', 10);
INSERT INTO public.normalized_people VALUES (72, 'https://swapi.dev/api/people/73/', 'Taun We', '213', 'unknown', 'none', 'grey', 'black', 'unknown', 'female', 10);
INSERT INTO public.normalized_people VALUES (73, 'https://swapi.dev/api/people/74/', 'Jocasta Nu', '167', 'unknown', 'white', 'fair', 'blue', 'unknown', 'female', 9);
INSERT INTO public.normalized_people VALUES (74, 'https://swapi.dev/api/people/75/', 'R4-P17', '96', 'unknown', 'none', 'silver, red', 'red, blue', 'unknown', 'female', 28);
INSERT INTO public.normalized_people VALUES (75, 'https://swapi.dev/api/people/76/', 'Wat Tambor', '193', '48', 'none', 'green, grey', 'unknown', 'unknown', 'male', 56);
INSERT INTO public.normalized_people VALUES (76, 'https://swapi.dev/api/people/77/', 'San Hill', '191', 'unknown', 'none', 'grey', 'gold', 'unknown', 'male', 57);
INSERT INTO public.normalized_people VALUES (77, 'https://swapi.dev/api/people/78/', 'Shaak Ti', '178', '57', 'none', 'red, blue, white', 'black', 'unknown', 'female', 58);
INSERT INTO public.normalized_people VALUES (78, 'https://swapi.dev/api/people/79/', 'Grievous', '216', '159', 'none', 'brown, white', 'green, yellow', 'unknown', 'male', 59);
INSERT INTO public.normalized_people VALUES (79, 'https://swapi.dev/api/people/80/', 'Tarfful', '234', '136', 'brown', 'brown', 'blue', 'unknown', 'male', 14);
INSERT INTO public.normalized_people VALUES (80, 'https://swapi.dev/api/people/81/', 'Raymus Antilles', '188', '79', 'brown', 'light', 'brown', 'unknown', 'male', 2);
INSERT INTO public.normalized_people VALUES (81, 'https://swapi.dev/api/people/82/', 'Sly Moore', '178', '48', 'none', 'pale', 'white', 'unknown', 'female', 60);
INSERT INTO public.normalized_people VALUES (82, 'https://swapi.dev/api/people/83/', 'Tion Medon', '206', '80', 'none', 'grey', 'black', 'unknown', 'male', 12);


--
-- TOC entry 5134 (class 0 OID 29682)
-- Dependencies: 244
-- Data for Name: normalized_pilots; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.normalized_pilots VALUES (5, 13);
INSERT INTO public.normalized_pilots VALUES (5, 14);
INSERT INTO public.normalized_pilots VALUES (5, 24);
INSERT INTO public.normalized_pilots VALUES (5, 30);
INSERT INTO public.normalized_pilots VALUES (7, 1);
INSERT INTO public.normalized_pilots VALUES (7, 9);
INSERT INTO public.normalized_pilots VALUES (7, 17);
INSERT INTO public.normalized_pilots VALUES (7, 18);
INSERT INTO public.normalized_pilots VALUES (8, 4);
INSERT INTO public.normalized_pilots VALUES (11, 21);
INSERT INTO public.normalized_pilots VALUES (12, 1);
INSERT INTO public.normalized_pilots VALUES (12, 13);
INSERT INTO public.normalized_pilots VALUES (12, 14);
INSERT INTO public.normalized_pilots VALUES (15, 28);
INSERT INTO public.normalized_pilots VALUES (19, 11);
INSERT INTO public.normalized_pilots VALUES (19, 34);
INSERT INTO public.normalized_pilots VALUES (19, 59);
INSERT INTO public.normalized_pilots VALUES (20, 38);
INSERT INTO public.normalized_pilots VALUES (21, 43);
INSERT INTO public.normalized_pilots VALUES (24, 10);
INSERT INTO public.normalized_pilots VALUES (24, 57);
INSERT INTO public.normalized_pilots VALUES (25, 34);
INSERT INTO public.normalized_pilots VALUES (28, 10);
INSERT INTO public.normalized_pilots VALUES (28, 11);
INSERT INTO public.normalized_pilots VALUES (31, 10);
INSERT INTO public.normalized_pilots VALUES (31, 34);
INSERT INTO public.normalized_pilots VALUES (32, 10);
INSERT INTO public.normalized_pilots VALUES (32, 11);
INSERT INTO public.normalized_pilots VALUES (35, 10);
INSERT INTO public.normalized_pilots VALUES (35, 78);


--
-- TOC entry 5131 (class 0 OID 29656)
-- Dependencies: 241
-- Data for Name: normalized_planet_films; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.normalized_planet_films VALUES (1, 1);
INSERT INTO public.normalized_planet_films VALUES (1, 3);
INSERT INTO public.normalized_planet_films VALUES (1, 4);
INSERT INTO public.normalized_planet_films VALUES (1, 5);
INSERT INTO public.normalized_planet_films VALUES (1, 6);
INSERT INTO public.normalized_planet_films VALUES (2, 1);
INSERT INTO public.normalized_planet_films VALUES (2, 6);
INSERT INTO public.normalized_planet_films VALUES (3, 1);
INSERT INTO public.normalized_planet_films VALUES (4, 2);
INSERT INTO public.normalized_planet_films VALUES (5, 2);
INSERT INTO public.normalized_planet_films VALUES (5, 3);
INSERT INTO public.normalized_planet_films VALUES (5, 6);
INSERT INTO public.normalized_planet_films VALUES (6, 2);
INSERT INTO public.normalized_planet_films VALUES (7, 3);
INSERT INTO public.normalized_planet_films VALUES (8, 3);
INSERT INTO public.normalized_planet_films VALUES (8, 4);
INSERT INTO public.normalized_planet_films VALUES (8, 5);
INSERT INTO public.normalized_planet_films VALUES (8, 6);
INSERT INTO public.normalized_planet_films VALUES (9, 3);
INSERT INTO public.normalized_planet_films VALUES (9, 4);
INSERT INTO public.normalized_planet_films VALUES (9, 5);
INSERT INTO public.normalized_planet_films VALUES (9, 6);
INSERT INTO public.normalized_planet_films VALUES (10, 5);
INSERT INTO public.normalized_planet_films VALUES (11, 5);
INSERT INTO public.normalized_planet_films VALUES (12, 6);
INSERT INTO public.normalized_planet_films VALUES (13, 6);
INSERT INTO public.normalized_planet_films VALUES (14, 6);
INSERT INTO public.normalized_planet_films VALUES (15, 6);
INSERT INTO public.normalized_planet_films VALUES (16, 6);
INSERT INTO public.normalized_planet_films VALUES (17, 6);
INSERT INTO public.normalized_planet_films VALUES (18, 6);
INSERT INTO public.normalized_planet_films VALUES (19, 6);
INSERT INTO public.normalized_planet_films VALUES (27, 2);


--
-- TOC entry 5129 (class 0 OID 29626)
-- Dependencies: 239
-- Data for Name: normalized_planet_people; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.normalized_planet_people VALUES (1, 1);
INSERT INTO public.normalized_planet_people VALUES (1, 2);
INSERT INTO public.normalized_planet_people VALUES (8, 3);
INSERT INTO public.normalized_planet_people VALUES (1, 4);
INSERT INTO public.normalized_planet_people VALUES (2, 5);
INSERT INTO public.normalized_planet_people VALUES (1, 6);
INSERT INTO public.normalized_planet_people VALUES (1, 7);
INSERT INTO public.normalized_planet_people VALUES (1, 8);
INSERT INTO public.normalized_planet_people VALUES (1, 9);
INSERT INTO public.normalized_planet_people VALUES (20, 10);
INSERT INTO public.normalized_planet_people VALUES (1, 11);
INSERT INTO public.normalized_planet_people VALUES (21, 12);
INSERT INTO public.normalized_planet_people VALUES (14, 13);
INSERT INTO public.normalized_planet_people VALUES (22, 14);
INSERT INTO public.normalized_planet_people VALUES (23, 15);
INSERT INTO public.normalized_planet_people VALUES (24, 16);
INSERT INTO public.normalized_planet_people VALUES (22, 17);
INSERT INTO public.normalized_planet_people VALUES (26, 18);
INSERT INTO public.normalized_planet_people VALUES (28, 19);
INSERT INTO public.normalized_planet_people VALUES (8, 20);
INSERT INTO public.normalized_planet_people VALUES (10, 21);
INSERT INTO public.normalized_planet_people VALUES (28, 22);
INSERT INTO public.normalized_planet_people VALUES (29, 23);
INSERT INTO public.normalized_planet_people VALUES (30, 24);
INSERT INTO public.normalized_planet_people VALUES (6, 25);
INSERT INTO public.normalized_planet_people VALUES (31, 26);
INSERT INTO public.normalized_planet_people VALUES (32, 27);
INSERT INTO public.normalized_planet_people VALUES (28, 28);
INSERT INTO public.normalized_planet_people VALUES (7, 29);
INSERT INTO public.normalized_planet_people VALUES (33, 30);
INSERT INTO public.normalized_planet_people VALUES (28, 31);
INSERT INTO public.normalized_planet_people VALUES (18, 32);
INSERT INTO public.normalized_planet_people VALUES (9, 33);
INSERT INTO public.normalized_planet_people VALUES (8, 34);
INSERT INTO public.normalized_planet_people VALUES (8, 35);
INSERT INTO public.normalized_planet_people VALUES (8, 36);
INSERT INTO public.normalized_planet_people VALUES (8, 37);
INSERT INTO public.normalized_planet_people VALUES (8, 38);
INSERT INTO public.normalized_planet_people VALUES (34, 39);
INSERT INTO public.normalized_planet_people VALUES (35, 40);
INSERT INTO public.normalized_planet_people VALUES (8, 41);
INSERT INTO public.normalized_planet_people VALUES (1, 42);
INSERT INTO public.normalized_planet_people VALUES (36, 43);
INSERT INTO public.normalized_planet_people VALUES (37, 44);
INSERT INTO public.normalized_planet_people VALUES (37, 45);
INSERT INTO public.normalized_planet_people VALUES (38, 46);
INSERT INTO public.normalized_planet_people VALUES (39, 47);
INSERT INTO public.normalized_planet_people VALUES (40, 48);
INSERT INTO public.normalized_planet_people VALUES (41, 49);
INSERT INTO public.normalized_planet_people VALUES (42, 50);
INSERT INTO public.normalized_planet_people VALUES (43, 51);
INSERT INTO public.normalized_planet_people VALUES (44, 52);
INSERT INTO public.normalized_planet_people VALUES (45, 53);
INSERT INTO public.normalized_planet_people VALUES (9, 54);
INSERT INTO public.normalized_planet_people VALUES (47, 55);
INSERT INTO public.normalized_planet_people VALUES (48, 56);
INSERT INTO public.normalized_planet_people VALUES (49, 57);
INSERT INTO public.normalized_planet_people VALUES (50, 58);
INSERT INTO public.normalized_planet_people VALUES (8, 59);
INSERT INTO public.normalized_planet_people VALUES (8, 60);
INSERT INTO public.normalized_planet_people VALUES (1, 61);
INSERT INTO public.normalized_planet_people VALUES (11, 62);
INSERT INTO public.normalized_planet_people VALUES (51, 63);
INSERT INTO public.normalized_planet_people VALUES (51, 64);
INSERT INTO public.normalized_planet_people VALUES (8, 65);
INSERT INTO public.normalized_planet_people VALUES (52, 66);
INSERT INTO public.normalized_planet_people VALUES (2, 67);
INSERT INTO public.normalized_planet_people VALUES (53, 68);
INSERT INTO public.normalized_planet_people VALUES (54, 69);
INSERT INTO public.normalized_planet_people VALUES (55, 70);
INSERT INTO public.normalized_planet_people VALUES (10, 71);
INSERT INTO public.normalized_planet_people VALUES (10, 72);
INSERT INTO public.normalized_planet_people VALUES (9, 73);
INSERT INTO public.normalized_planet_people VALUES (28, 74);
INSERT INTO public.normalized_planet_people VALUES (56, 75);
INSERT INTO public.normalized_planet_people VALUES (57, 76);
INSERT INTO public.normalized_planet_people VALUES (58, 77);
INSERT INTO public.normalized_planet_people VALUES (59, 78);
INSERT INTO public.normalized_planet_people VALUES (14, 79);
INSERT INTO public.normalized_planet_people VALUES (2, 80);
INSERT INTO public.normalized_planet_people VALUES (60, 81);
INSERT INTO public.normalized_planet_people VALUES (12, 82);


--
-- TOC entry 5126 (class 0 OID 29600)
-- Dependencies: 236
-- Data for Name: normalized_planets; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.normalized_planets VALUES (1, 'https://swapi.dev/api/planets/1/', 'Tatooine', '23', '304', '10465', 'arid', '1 standard', 'desert', '1', '200000');
INSERT INTO public.normalized_planets VALUES (2, 'https://swapi.dev/api/planets/2/', 'Alderaan', '24', '364', '12500', 'temperate', '1 standard', 'grasslands, mountains', '40', '2000000000');
INSERT INTO public.normalized_planets VALUES (3, 'https://swapi.dev/api/planets/3/', 'Yavin IV', '24', '4818', '10200', 'temperate, tropical', '1 standard', 'jungle, rainforests', '8', '1000');
INSERT INTO public.normalized_planets VALUES (4, 'https://swapi.dev/api/planets/4/', 'Hoth', '23', '549', '7200', 'frozen', '1.1 standard', 'tundra, ice caves, mountain ranges', '100', 'unknown');
INSERT INTO public.normalized_planets VALUES (5, 'https://swapi.dev/api/planets/5/', 'Dagobah', '23', '341', '8900', 'murky', 'N/A', 'swamp, jungles', '8', 'unknown');
INSERT INTO public.normalized_planets VALUES (6, 'https://swapi.dev/api/planets/6/', 'Bespin', '12', '5110', '118000', 'temperate', '1.5 (surface), 1 standard (Cloud City)', 'gas giant', '0', '6000000');
INSERT INTO public.normalized_planets VALUES (7, 'https://swapi.dev/api/planets/7/', 'Endor', '18', '402', '4900', 'temperate', '0.85 standard', 'forests, mountains, lakes', '8', '30000000');
INSERT INTO public.normalized_planets VALUES (8, 'https://swapi.dev/api/planets/8/', 'Naboo', '26', '312', '12120', 'temperate', '1 standard', 'grassy hills, swamps, forests, mountains', '12', '4500000000');
INSERT INTO public.normalized_planets VALUES (9, 'https://swapi.dev/api/planets/9/', 'Coruscant', '24', '368', '12240', 'temperate', '1 standard', 'cityscape, mountains', 'unknown', '1000000000000');
INSERT INTO public.normalized_planets VALUES (10, 'https://swapi.dev/api/planets/10/', 'Kamino', '27', '463', '19720', 'temperate', '1 standard', 'ocean', '100', '1000000000');
INSERT INTO public.normalized_planets VALUES (11, 'https://swapi.dev/api/planets/11/', 'Geonosis', '30', '256', '11370', 'temperate, arid', '0.9 standard', 'rock, desert, mountain, barren', '5', '100000000000');
INSERT INTO public.normalized_planets VALUES (12, 'https://swapi.dev/api/planets/12/', 'Utapau', '27', '351', '12900', 'temperate, arid, windy', '1 standard', 'scrublands, savanna, canyons, sinkholes', '0.9', '95000000');
INSERT INTO public.normalized_planets VALUES (13, 'https://swapi.dev/api/planets/13/', 'Mustafar', '36', '412', '4200', 'hot', '1 standard', 'volcanoes, lava rivers, mountains, caves', '0', '20000');
INSERT INTO public.normalized_planets VALUES (14, 'https://swapi.dev/api/planets/14/', 'Kashyyyk', '26', '381', '12765', 'tropical', '1 standard', 'jungle, forests, lakes, rivers', '60', '45000000');
INSERT INTO public.normalized_planets VALUES (15, 'https://swapi.dev/api/planets/15/', 'Polis Massa', '24', '590', '0', 'artificial temperate ', '0.56 standard', 'airless asteroid', '0', '1000000');
INSERT INTO public.normalized_planets VALUES (16, 'https://swapi.dev/api/planets/16/', 'Mygeeto', '12', '167', '10088', 'frigid', '1 standard', 'glaciers, mountains, ice canyons', 'unknown', '19000000');
INSERT INTO public.normalized_planets VALUES (17, 'https://swapi.dev/api/planets/17/', 'Felucia', '34', '231', '9100', 'hot, humid', '0.75 standard', 'fungus forests', 'unknown', '8500000');
INSERT INTO public.normalized_planets VALUES (18, 'https://swapi.dev/api/planets/18/', 'Cato Neimoidia', '25', '278', '0', 'temperate, moist', '1 standard', 'mountains, fields, forests, rock arches', 'unknown', '10000000');
INSERT INTO public.normalized_planets VALUES (19, 'https://swapi.dev/api/planets/19/', 'Saleucami', '26', '392', '14920', 'hot', 'unknown', 'caves, desert, mountains, volcanoes', 'unknown', '1400000000');
INSERT INTO public.normalized_planets VALUES (20, 'https://swapi.dev/api/planets/20/', 'Stewjon', 'unknown', 'unknown', '0', 'temperate', '1 standard', 'grass', 'unknown', 'unknown');
INSERT INTO public.normalized_planets VALUES (21, 'https://swapi.dev/api/planets/21/', 'Eriadu', '24', '360', '13490', 'polluted', '1 standard', 'cityscape', 'unknown', '22000000000');
INSERT INTO public.normalized_planets VALUES (22, 'https://swapi.dev/api/planets/22/', 'Corellia', '25', '329', '11000', 'temperate', '1 standard', 'plains, urban, hills, forests', '70', '3000000000');
INSERT INTO public.normalized_planets VALUES (23, 'https://swapi.dev/api/planets/23/', 'Rodia', '29', '305', '7549', 'hot', '1 standard', 'jungles, oceans, urban, swamps', '60', '1300000000');
INSERT INTO public.normalized_planets VALUES (24, 'https://swapi.dev/api/planets/24/', 'Nal Hutta', '87', '413', '12150', 'temperate', '1 standard', 'urban, oceans, swamps, bogs', 'unknown', '7000000000');
INSERT INTO public.normalized_planets VALUES (25, 'https://swapi.dev/api/planets/25/', 'Dantooine', '25', '378', '9830', 'temperate', '1 standard', 'oceans, savannas, mountains, grasslands', 'unknown', '1000');
INSERT INTO public.normalized_planets VALUES (26, 'https://swapi.dev/api/planets/26/', 'Bestine IV', '26', '680', '6400', 'temperate', 'unknown', 'rocky islands, oceans', '98', '62000000');
INSERT INTO public.normalized_planets VALUES (27, 'https://swapi.dev/api/planets/27/', 'Ord Mantell', '26', '334', '14050', 'temperate', '1 standard', 'plains, seas, mesas', '10', '4000000000');
INSERT INTO public.normalized_planets VALUES (28, 'https://swapi.dev/api/planets/28/', 'unknown', '0', '0', '0', 'unknown', 'unknown', 'unknown', 'unknown', 'unknown');
INSERT INTO public.normalized_planets VALUES (29, 'https://swapi.dev/api/planets/29/', 'Trandosha', '25', '371', '0', 'arid', '0.62 standard', 'mountains, seas, grasslands, deserts', 'unknown', '42000000');
INSERT INTO public.normalized_planets VALUES (30, 'https://swapi.dev/api/planets/30/', 'Socorro', '20', '326', '0', 'arid', '1 standard', 'deserts, mountains', 'unknown', '300000000');
INSERT INTO public.normalized_planets VALUES (31, 'https://swapi.dev/api/planets/31/', 'Mon Cala', '21', '398', '11030', 'temperate', '1', 'oceans, reefs, islands', '100', '27000000000');
INSERT INTO public.normalized_planets VALUES (32, 'https://swapi.dev/api/planets/32/', 'Chandrila', '20', '368', '13500', 'temperate', '1', 'plains, forests', '40', '1200000000');
INSERT INTO public.normalized_planets VALUES (33, 'https://swapi.dev/api/planets/33/', 'Sullust', '20', '263', '12780', 'superheated', '1', 'mountains, volcanoes, rocky deserts', '5', '18500000000');
INSERT INTO public.normalized_planets VALUES (34, 'https://swapi.dev/api/planets/34/', 'Toydaria', '21', '184', '7900', 'temperate', '1', 'swamps, lakes', 'unknown', '11000000');
INSERT INTO public.normalized_planets VALUES (35, 'https://swapi.dev/api/planets/35/', 'Malastare', '26', '201', '18880', 'arid, temperate, tropical', '1.56', 'swamps, deserts, jungles, mountains', 'unknown', '2000000000');
INSERT INTO public.normalized_planets VALUES (36, 'https://swapi.dev/api/planets/36/', 'Dathomir', '24', '491', '10480', 'temperate', '0.9', 'forests, deserts, savannas', 'unknown', '5200');
INSERT INTO public.normalized_planets VALUES (37, 'https://swapi.dev/api/planets/37/', 'Ryloth', '30', '305', '10600', 'temperate, arid, subartic', '1', 'mountains, valleys, deserts, tundra', '5', '1500000000');
INSERT INTO public.normalized_planets VALUES (38, 'https://swapi.dev/api/planets/38/', 'Aleen Minor', 'unknown', 'unknown', 'unknown', 'unknown', 'unknown', 'unknown', 'unknown', 'unknown');
INSERT INTO public.normalized_planets VALUES (39, 'https://swapi.dev/api/planets/39/', 'Vulpter', '22', '391', '14900', 'temperate, artic', '1', 'urban, barren', 'unknown', '421000000');
INSERT INTO public.normalized_planets VALUES (40, 'https://swapi.dev/api/planets/40/', 'Troiken', 'unknown', 'unknown', 'unknown', 'unknown', 'unknown', 'desert, tundra, rainforests, mountains', 'unknown', 'unknown');
INSERT INTO public.normalized_planets VALUES (41, 'https://swapi.dev/api/planets/41/', 'Tund', '48', '1770', '12190', 'unknown', 'unknown', 'barren, ash', 'unknown', '0');
INSERT INTO public.normalized_planets VALUES (42, 'https://swapi.dev/api/planets/42/', 'Haruun Kal', '25', '383', '10120', 'temperate', '0.98', 'toxic cloudsea, plateaus, volcanoes', 'unknown', '705300');
INSERT INTO public.normalized_planets VALUES (43, 'https://swapi.dev/api/planets/43/', 'Cerea', '27', '386', 'unknown', 'temperate', '1', 'verdant', '20', '450000000');
INSERT INTO public.normalized_planets VALUES (44, 'https://swapi.dev/api/planets/44/', 'Glee Anselm', '33', '206', '15600', 'tropical, temperate', '1', 'lakes, islands, swamps, seas', '80', '500000000');
INSERT INTO public.normalized_planets VALUES (45, 'https://swapi.dev/api/planets/45/', 'Iridonia', '29', '413', 'unknown', 'unknown', 'unknown', 'rocky canyons, acid pools', 'unknown', 'unknown');
INSERT INTO public.normalized_planets VALUES (46, 'https://swapi.dev/api/planets/46/', 'Tholoth', 'unknown', 'unknown', 'unknown', 'unknown', 'unknown', 'unknown', 'unknown', 'unknown');
INSERT INTO public.normalized_planets VALUES (47, 'https://swapi.dev/api/planets/47/', 'Iktotch', '22', '481', 'unknown', 'arid, rocky, windy', '1', 'rocky', 'unknown', 'unknown');
INSERT INTO public.normalized_planets VALUES (48, 'https://swapi.dev/api/planets/48/', 'Quermia', 'unknown', 'unknown', 'unknown', 'unknown', 'unknown', 'unknown', 'unknown', 'unknown');
INSERT INTO public.normalized_planets VALUES (49, 'https://swapi.dev/api/planets/49/', 'Dorin', '22', '409', '13400', 'temperate', '1', 'unknown', 'unknown', 'unknown');
INSERT INTO public.normalized_planets VALUES (50, 'https://swapi.dev/api/planets/50/', 'Champala', '27', '318', 'unknown', 'temperate', '1', 'oceans, rainforests, plateaus', 'unknown', '3500000000');
INSERT INTO public.normalized_planets VALUES (51, 'https://swapi.dev/api/planets/51/', 'Mirial', 'unknown', 'unknown', 'unknown', 'unknown', 'unknown', 'deserts', 'unknown', 'unknown');
INSERT INTO public.normalized_planets VALUES (52, 'https://swapi.dev/api/planets/52/', 'Serenno', 'unknown', 'unknown', 'unknown', 'unknown', 'unknown', 'rainforests, rivers, mountains', 'unknown', 'unknown');
INSERT INTO public.normalized_planets VALUES (53, 'https://swapi.dev/api/planets/53/', 'Concord Dawn', 'unknown', 'unknown', 'unknown', 'unknown', 'unknown', 'jungles, forests, deserts', 'unknown', 'unknown');
INSERT INTO public.normalized_planets VALUES (54, 'https://swapi.dev/api/planets/54/', 'Zolan', 'unknown', 'unknown', 'unknown', 'unknown', 'unknown', 'unknown', 'unknown', 'unknown');
INSERT INTO public.normalized_planets VALUES (55, 'https://swapi.dev/api/planets/55/', 'Ojom', 'unknown', 'unknown', 'unknown', 'frigid', 'unknown', 'oceans, glaciers', '100', '500000000');
INSERT INTO public.normalized_planets VALUES (56, 'https://swapi.dev/api/planets/56/', 'Skako', '27', '384', 'unknown', 'temperate', '1', 'urban, vines', 'unknown', '500000000000');
INSERT INTO public.normalized_planets VALUES (57, 'https://swapi.dev/api/planets/57/', 'Muunilinst', '28', '412', '13800', 'temperate', '1', 'plains, forests, hills, mountains', '25', '5000000000');
INSERT INTO public.normalized_planets VALUES (58, 'https://swapi.dev/api/planets/58/', 'Shili', 'unknown', 'unknown', 'unknown', 'temperate', '1', 'cities, savannahs, seas, plains', 'unknown', 'unknown');
INSERT INTO public.normalized_planets VALUES (59, 'https://swapi.dev/api/planets/59/', 'Kalee', '23', '378', '13850', 'arid, temperate, tropical', '1', 'rainforests, cliffs, canyons, seas', 'unknown', '4000000000');
INSERT INTO public.normalized_planets VALUES (60, 'https://swapi.dev/api/planets/60/', 'Umbara', 'unknown', 'unknown', 'unknown', 'unknown', 'unknown', 'unknown', 'unknown', 'unknown');


--
-- TOC entry 5119 (class 0 OID 29540)
-- Dependencies: 229
-- Data for Name: normalized_rating_sources; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.normalized_rating_sources VALUES (1, 'Rotten Tomatoes');
INSERT INTO public.normalized_rating_sources VALUES (2, 'Internet Movie Database');
INSERT INTO public.normalized_rating_sources VALUES (3, 'Metacritic');
INSERT INTO public.normalized_rating_sources VALUES (4, 'imdb');
INSERT INTO public.normalized_rating_sources VALUES (5, 'tmdb');


--
-- TOC entry 5141 (class 0 OID 29754)
-- Dependencies: 251
-- Data for Name: normalized_species; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.normalized_species VALUES (1, 'https://swapi.dev/api/species/1/', 'Human', 'mammal', 'sentient', '180', 'caucasian, black, asian, hispanic', 'blonde, brown, black, red', 'brown, blue, green, hazel, grey, amber', '120', 9, 'Galactic Basic');
INSERT INTO public.normalized_species VALUES (2, 'https://swapi.dev/api/species/3/', 'Wookie', 'mammal', 'sentient', '210', 'gray', 'black, brown', 'blue, green, yellow, brown, golden, red', '400', 14, 'Shyriiwook');
INSERT INTO public.normalized_species VALUES (3, 'https://swapi.dev/api/species/4/', 'Rodian', 'sentient', 'reptilian', '170', 'green, blue', 'n/a', 'black', 'unknown', 23, 'Galatic Basic');
INSERT INTO public.normalized_species VALUES (4, 'https://swapi.dev/api/species/5/', 'Hutt', 'gastropod', 'sentient', '300', 'green, brown, tan', 'n/a', 'yellow, red', '1000', 24, 'Huttese');
INSERT INTO public.normalized_species VALUES (5, 'https://swapi.dev/api/species/6/', 'Yoda''s species', 'mammal', 'sentient', '66', 'green, yellow', 'brown, white', 'brown, green, yellow', '900', 28, 'Galactic basic');
INSERT INTO public.normalized_species VALUES (6, 'https://swapi.dev/api/species/7/', 'Trandoshan', 'reptile', 'sentient', '200', 'brown, green', 'none', 'yellow, orange', 'unknown', 29, 'Dosh');
INSERT INTO public.normalized_species VALUES (7, 'https://swapi.dev/api/species/8/', 'Mon Calamari', 'amphibian', 'sentient', '160', 'red, blue, brown, magenta', 'none', 'yellow', 'unknown', 31, 'Mon Calamarian');
INSERT INTO public.normalized_species VALUES (8, 'https://swapi.dev/api/species/9/', 'Ewok', 'mammal', 'sentient', '100', 'brown', 'white, brown, black', 'orange, brown', 'unknown', 7, 'Ewokese');
INSERT INTO public.normalized_species VALUES (9, 'https://swapi.dev/api/species/10/', 'Sullustan', 'mammal', 'sentient', '180', 'pale', 'none', 'black', 'unknown', 33, 'Sullutese');
INSERT INTO public.normalized_species VALUES (10, 'https://swapi.dev/api/species/11/', 'Neimodian', 'unknown', 'sentient', '180', 'grey, green', 'none', 'red, pink', 'unknown', 18, 'Neimoidia');
INSERT INTO public.normalized_species VALUES (11, 'https://swapi.dev/api/species/12/', 'Gungan', 'amphibian', 'sentient', '190', 'brown, green', 'none', 'orange', 'unknown', 8, 'Gungan basic');
INSERT INTO public.normalized_species VALUES (12, 'https://swapi.dev/api/species/13/', 'Toydarian', 'mammal', 'sentient', '120', 'blue, green, grey', 'none', 'yellow', '91', 34, 'Toydarian');
INSERT INTO public.normalized_species VALUES (13, 'https://swapi.dev/api/species/14/', 'Dug', 'mammal', 'sentient', '100', 'brown, purple, grey, red', 'none', 'yellow, blue', 'unknown', 35, 'Dugese');
INSERT INTO public.normalized_species VALUES (14, 'https://swapi.dev/api/species/15/', 'Twi''lek', 'mammals', 'sentient', '200', 'orange, yellow, blue, green, pink, purple, tan', 'none', 'blue, brown, orange, pink', 'unknown', 37, 'Twi''leki');
INSERT INTO public.normalized_species VALUES (15, 'https://swapi.dev/api/species/16/', 'Aleena', 'reptile', 'sentient', '80', 'blue, gray', 'none', 'unknown', '79', 38, 'Aleena');
INSERT INTO public.normalized_species VALUES (16, 'https://swapi.dev/api/species/17/', 'Vulptereen', 'unknown', 'sentient', '100', 'grey', 'none', 'yellow', 'unknown', 39, 'vulpterish');
INSERT INTO public.normalized_species VALUES (17, 'https://swapi.dev/api/species/18/', 'Xexto', 'unknown', 'sentient', '125', 'grey, yellow, purple', 'none', 'black', 'unknown', 40, 'Xextese');
INSERT INTO public.normalized_species VALUES (18, 'https://swapi.dev/api/species/19/', 'Toong', 'unknown', 'sentient', '200', 'grey, green, yellow', 'none', 'orange', 'unknown', 41, 'Tundan');
INSERT INTO public.normalized_species VALUES (19, 'https://swapi.dev/api/species/20/', 'Cerean', 'mammal', 'sentient', '200', 'pale pink', 'red, blond, black, white', 'hazel', 'unknown', 43, 'Cerean');
INSERT INTO public.normalized_species VALUES (20, 'https://swapi.dev/api/species/21/', 'Nautolan', 'amphibian', 'sentient', '180', 'green, blue, brown, red', 'none', 'black', '70', 44, 'Nautila');
INSERT INTO public.normalized_species VALUES (21, 'https://swapi.dev/api/species/22/', 'Zabrak', 'mammal', 'sentient', '180', 'pale, brown, red, orange, yellow', 'black', 'brown, orange', 'unknown', 45, 'Zabraki');
INSERT INTO public.normalized_species VALUES (22, 'https://swapi.dev/api/species/23/', 'Tholothian', 'mammal', 'sentient', 'unknown', 'dark', 'unknown', 'blue, indigo', 'unknown', 46, 'unknown');
INSERT INTO public.normalized_species VALUES (23, 'https://swapi.dev/api/species/24/', 'Iktotchi', 'unknown', 'sentient', '180', 'pink', 'none', 'orange', 'unknown', 47, 'Iktotchese');
INSERT INTO public.normalized_species VALUES (24, 'https://swapi.dev/api/species/25/', 'Quermian', 'mammal', 'sentient', '240', 'white', 'none', 'yellow', '86', 48, 'Quermian');
INSERT INTO public.normalized_species VALUES (25, 'https://swapi.dev/api/species/26/', 'Kel Dor', 'unknown', 'sentient', '180', 'peach, orange, red', 'none', 'black, silver', '70', 49, 'Kel Dor');
INSERT INTO public.normalized_species VALUES (26, 'https://swapi.dev/api/species/27/', 'Chagrian', 'amphibian', 'sentient', '190', 'blue', 'none', 'blue', 'unknown', 50, 'Chagria');
INSERT INTO public.normalized_species VALUES (27, 'https://swapi.dev/api/species/28/', 'Geonosian', 'insectoid', 'sentient', '178', 'green, brown', 'none', 'green, hazel', 'unknown', 11, 'Geonosian');
INSERT INTO public.normalized_species VALUES (28, 'https://swapi.dev/api/species/29/', 'Mirialan', 'mammal', 'sentient', '180', 'yellow, green', 'black, brown', 'blue, green, red, yellow, brown, orange', 'unknown', 51, 'Mirialan');
INSERT INTO public.normalized_species VALUES (29, 'https://swapi.dev/api/species/30/', 'Clawdite', 'reptilian', 'sentient', '180', 'green, yellow', 'none', 'yellow', '70', 54, 'Clawdite');
INSERT INTO public.normalized_species VALUES (30, 'https://swapi.dev/api/species/31/', 'Besalisk', 'amphibian', 'sentient', '178', 'brown', 'none', 'yellow', '75', 55, 'besalisk');
INSERT INTO public.normalized_species VALUES (31, 'https://swapi.dev/api/species/32/', 'Kaminoan', 'amphibian', 'sentient', '220', 'grey, blue', 'none', 'black', '80', 10, 'Kaminoan');
INSERT INTO public.normalized_species VALUES (32, 'https://swapi.dev/api/species/33/', 'Skakoan', 'mammal', 'sentient', 'unknown', 'grey, green', 'none', 'unknown', 'unknown', 56, 'Skakoan');
INSERT INTO public.normalized_species VALUES (33, 'https://swapi.dev/api/species/34/', 'Muun', 'mammal', 'sentient', '190', 'grey, white', 'none', 'black', '100', 57, 'Muun');
INSERT INTO public.normalized_species VALUES (34, 'https://swapi.dev/api/species/35/', 'Togruta', 'mammal', 'sentient', '180', 'red, white, orange, yellow, green, blue', 'none', 'red, orange, yellow, green, blue, black', '94', 58, 'Togruti');
INSERT INTO public.normalized_species VALUES (35, 'https://swapi.dev/api/species/36/', 'Kaleesh', 'reptile', 'sentient', '170', 'brown, orange, tan', 'none', 'yellow', '80', 59, 'Kaleesh');
INSERT INTO public.normalized_species VALUES (36, 'https://swapi.dev/api/species/37/', 'Pau''an', 'mammal', 'sentient', '190', 'grey', 'none', 'black', '700', 12, 'Utapese');


--
-- TOC entry 5124 (class 0 OID 29584)
-- Dependencies: 234
-- Data for Name: normalized_star_wars_keywords; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.normalized_star_wars_keywords VALUES (207, 116);
INSERT INTO public.normalized_star_wars_keywords VALUES (207, 62);
INSERT INTO public.normalized_star_wars_keywords VALUES (207, 5);
INSERT INTO public.normalized_star_wars_keywords VALUES (207, 142);
INSERT INTO public.normalized_star_wars_keywords VALUES (207, 77);
INSERT INTO public.normalized_star_wars_keywords VALUES (207, 56);
INSERT INTO public.normalized_star_wars_keywords VALUES (207, 166);
INSERT INTO public.normalized_star_wars_keywords VALUES (207, 35);
INSERT INTO public.normalized_star_wars_keywords VALUES (207, 71);
INSERT INTO public.normalized_star_wars_keywords VALUES (207, 106);
INSERT INTO public.normalized_star_wars_keywords VALUES (207, 4);
INSERT INTO public.normalized_star_wars_keywords VALUES (207, 7);
INSERT INTO public.normalized_star_wars_keywords VALUES (207, 22);
INSERT INTO public.normalized_star_wars_keywords VALUES (207, 89);
INSERT INTO public.normalized_star_wars_keywords VALUES (207, 58);
INSERT INTO public.normalized_star_wars_keywords VALUES (207, 76);
INSERT INTO public.normalized_star_wars_keywords VALUES (207, 100);
INSERT INTO public.normalized_star_wars_keywords VALUES (227, 142);
INSERT INTO public.normalized_star_wars_keywords VALUES (227, 94);
INSERT INTO public.normalized_star_wars_keywords VALUES (227, 58);
INSERT INTO public.normalized_star_wars_keywords VALUES (283, 5);
INSERT INTO public.normalized_star_wars_keywords VALUES (283, 94);
INSERT INTO public.normalized_star_wars_keywords VALUES (283, 35);
INSERT INTO public.normalized_star_wars_keywords VALUES (283, 123);
INSERT INTO public.normalized_star_wars_keywords VALUES (283, 60);
INSERT INTO public.normalized_star_wars_keywords VALUES (283, 111);
INSERT INTO public.normalized_star_wars_keywords VALUES (283, 113);
INSERT INTO public.normalized_star_wars_keywords VALUES (283, 30);
INSERT INTO public.normalized_star_wars_keywords VALUES (283, 145);
INSERT INTO public.normalized_star_wars_keywords VALUES (283, 159);
INSERT INTO public.normalized_star_wars_keywords VALUES (283, 101);
INSERT INTO public.normalized_star_wars_keywords VALUES (283, 58);
INSERT INTO public.normalized_star_wars_keywords VALUES (283, 14);
INSERT INTO public.normalized_star_wars_keywords VALUES (283, 42);
INSERT INTO public.normalized_star_wars_keywords VALUES (283, 114);
INSERT INTO public.normalized_star_wars_keywords VALUES (293, 127);
INSERT INTO public.normalized_star_wars_keywords VALUES (293, 123);
INSERT INTO public.normalized_star_wars_keywords VALUES (293, 88);
INSERT INTO public.normalized_star_wars_keywords VALUES (293, 74);
INSERT INTO public.normalized_star_wars_keywords VALUES (293, 48);
INSERT INTO public.normalized_star_wars_keywords VALUES (293, 58);
INSERT INTO public.normalized_star_wars_keywords VALUES (293, 66);
INSERT INTO public.normalized_star_wars_keywords VALUES (148, 62);
INSERT INTO public.normalized_star_wars_keywords VALUES (148, 99);
INSERT INTO public.normalized_star_wars_keywords VALUES (148, 91);
INSERT INTO public.normalized_star_wars_keywords VALUES (148, 26);
INSERT INTO public.normalized_star_wars_keywords VALUES (148, 38);
INSERT INTO public.normalized_star_wars_keywords VALUES (148, 21);
INSERT INTO public.normalized_star_wars_keywords VALUES (148, 144);
INSERT INTO public.normalized_star_wars_keywords VALUES (148, 58);
INSERT INTO public.normalized_star_wars_keywords VALUES (286, 15);
INSERT INTO public.normalized_star_wars_keywords VALUES (286, 8);
INSERT INTO public.normalized_star_wars_keywords VALUES (286, 25);
INSERT INTO public.normalized_star_wars_keywords VALUES (286, 157);
INSERT INTO public.normalized_star_wars_keywords VALUES (286, 164);
INSERT INTO public.normalized_star_wars_keywords VALUES (286, 93);
INSERT INTO public.normalized_star_wars_keywords VALUES (286, 58);
INSERT INTO public.normalized_star_wars_keywords VALUES (286, 110);
INSERT INTO public.normalized_star_wars_keywords VALUES (224, 55);
INSERT INTO public.normalized_star_wars_keywords VALUES (224, 125);
INSERT INTO public.normalized_star_wars_keywords VALUES (224, 99);
INSERT INTO public.normalized_star_wars_keywords VALUES (224, 73);
INSERT INTO public.normalized_star_wars_keywords VALUES (224, 8);
INSERT INTO public.normalized_star_wars_keywords VALUES (224, 50);
INSERT INTO public.normalized_star_wars_keywords VALUES (224, 3);
INSERT INTO public.normalized_star_wars_keywords VALUES (224, 58);
INSERT INTO public.normalized_star_wars_keywords VALUES (224, 29);
INSERT INTO public.normalized_star_wars_keywords VALUES (224, 57);
INSERT INTO public.normalized_star_wars_keywords VALUES (224, 155);
INSERT INTO public.normalized_star_wars_keywords VALUES (224, 102);
INSERT INTO public.normalized_star_wars_keywords VALUES (224, 158);
INSERT INTO public.normalized_star_wars_keywords VALUES (183, 58);
INSERT INTO public.normalized_star_wars_keywords VALUES (272, 94);
INSERT INTO public.normalized_star_wars_keywords VALUES (272, 56);
INSERT INTO public.normalized_star_wars_keywords VALUES (272, 111);
INSERT INTO public.normalized_star_wars_keywords VALUES (272, 101);
INSERT INTO public.normalized_star_wars_keywords VALUES (272, 58);
INSERT INTO public.normalized_star_wars_keywords VALUES (115, 162);
INSERT INTO public.normalized_star_wars_keywords VALUES (115, 87);
INSERT INTO public.normalized_star_wars_keywords VALUES (115, 53);
INSERT INTO public.normalized_star_wars_keywords VALUES (115, 106);
INSERT INTO public.normalized_star_wars_keywords VALUES (115, 39);
INSERT INTO public.normalized_star_wars_keywords VALUES (115, 58);
INSERT INTO public.normalized_star_wars_keywords VALUES (115, 9);
INSERT INTO public.normalized_star_wars_keywords VALUES (44, 162);
INSERT INTO public.normalized_star_wars_keywords VALUES (44, 137);
INSERT INTO public.normalized_star_wars_keywords VALUES (44, 148);
INSERT INTO public.normalized_star_wars_keywords VALUES (44, 108);
INSERT INTO public.normalized_star_wars_keywords VALUES (266, 58);
INSERT INTO public.normalized_star_wars_keywords VALUES (45, 41);
INSERT INTO public.normalized_star_wars_keywords VALUES (45, 37);
INSERT INTO public.normalized_star_wars_keywords VALUES (45, 58);
INSERT INTO public.normalized_star_wars_keywords VALUES (45, 98);
INSERT INTO public.normalized_star_wars_keywords VALUES (25, 58);
INSERT INTO public.normalized_star_wars_keywords VALUES (25, 148);
INSERT INTO public.normalized_star_wars_keywords VALUES (253, 123);
INSERT INTO public.normalized_star_wars_keywords VALUES (253, 134);
INSERT INTO public.normalized_star_wars_keywords VALUES (128, 27);
INSERT INTO public.normalized_star_wars_keywords VALUES (180, 141);
INSERT INTO public.normalized_star_wars_keywords VALUES (180, 61);
INSERT INTO public.normalized_star_wars_keywords VALUES (40, 108);
INSERT INTO public.normalized_star_wars_keywords VALUES (147, 58);
INSERT INTO public.normalized_star_wars_keywords VALUES (147, 148);
INSERT INTO public.normalized_star_wars_keywords VALUES (147, 133);
INSERT INTO public.normalized_star_wars_keywords VALUES (87, 108);
INSERT INTO public.normalized_star_wars_keywords VALUES (119, 84);
INSERT INTO public.normalized_star_wars_keywords VALUES (119, 58);
INSERT INTO public.normalized_star_wars_keywords VALUES (119, 104);
INSERT INTO public.normalized_star_wars_keywords VALUES (104, 58);
INSERT INTO public.normalized_star_wars_keywords VALUES (10, 123);
INSERT INTO public.normalized_star_wars_keywords VALUES (10, 79);
INSERT INTO public.normalized_star_wars_keywords VALUES (10, 12);
INSERT INTO public.normalized_star_wars_keywords VALUES (10, 139);
INSERT INTO public.normalized_star_wars_keywords VALUES (10, 117);
INSERT INTO public.normalized_star_wars_keywords VALUES (277, 161);
INSERT INTO public.normalized_star_wars_keywords VALUES (277, 75);
INSERT INTO public.normalized_star_wars_keywords VALUES (8, 103);
INSERT INTO public.normalized_star_wars_keywords VALUES (212, 142);
INSERT INTO public.normalized_star_wars_keywords VALUES (212, 58);
INSERT INTO public.normalized_star_wars_keywords VALUES (56, 65);
INSERT INTO public.normalized_star_wars_keywords VALUES (229, 58);
INSERT INTO public.normalized_star_wars_keywords VALUES (150, 129);
INSERT INTO public.normalized_star_wars_keywords VALUES (150, 160);
INSERT INTO public.normalized_star_wars_keywords VALUES (150, 151);
INSERT INTO public.normalized_star_wars_keywords VALUES (150, 63);
INSERT INTO public.normalized_star_wars_keywords VALUES (150, 36);
INSERT INTO public.normalized_star_wars_keywords VALUES (150, 54);
INSERT INTO public.normalized_star_wars_keywords VALUES (150, 82);
INSERT INTO public.normalized_star_wars_keywords VALUES (150, 10);
INSERT INTO public.normalized_star_wars_keywords VALUES (116, 61);
INSERT INTO public.normalized_star_wars_keywords VALUES (29, 143);
INSERT INTO public.normalized_star_wars_keywords VALUES (29, 20);
INSERT INTO public.normalized_star_wars_keywords VALUES (29, 124);
INSERT INTO public.normalized_star_wars_keywords VALUES (29, 103);
INSERT INTO public.normalized_star_wars_keywords VALUES (114, 130);
INSERT INTO public.normalized_star_wars_keywords VALUES (114, 131);
INSERT INTO public.normalized_star_wars_keywords VALUES (114, 167);
INSERT INTO public.normalized_star_wars_keywords VALUES (114, 72);
INSERT INTO public.normalized_star_wars_keywords VALUES (114, 138);
INSERT INTO public.normalized_star_wars_keywords VALUES (114, 61);
INSERT INTO public.normalized_star_wars_keywords VALUES (114, 46);
INSERT INTO public.normalized_star_wars_keywords VALUES (114, 165);
INSERT INTO public.normalized_star_wars_keywords VALUES (114, 132);
INSERT INTO public.normalized_star_wars_keywords VALUES (114, 51);
INSERT INTO public.normalized_star_wars_keywords VALUES (273, 58);
INSERT INTO public.normalized_star_wars_keywords VALUES (18, 142);
INSERT INTO public.normalized_star_wars_keywords VALUES (18, 58);
INSERT INTO public.normalized_star_wars_keywords VALUES (18, 68);
INSERT INTO public.normalized_star_wars_keywords VALUES (174, 20);
INSERT INTO public.normalized_star_wars_keywords VALUES (14, 58);
INSERT INTO public.normalized_star_wars_keywords VALUES (68, 58);
INSERT INTO public.normalized_star_wars_keywords VALUES (70, 20);
INSERT INTO public.normalized_star_wars_keywords VALUES (70, 58);
INSERT INTO public.normalized_star_wars_keywords VALUES (285, 107);
INSERT INTO public.normalized_star_wars_keywords VALUES (285, 10);
INSERT INTO public.normalized_star_wars_keywords VALUES (285, 70);
INSERT INTO public.normalized_star_wars_keywords VALUES (285, 126);
INSERT INTO public.normalized_star_wars_keywords VALUES (144, 81);
INSERT INTO public.normalized_star_wars_keywords VALUES (144, 143);
INSERT INTO public.normalized_star_wars_keywords VALUES (144, 78);
INSERT INTO public.normalized_star_wars_keywords VALUES (144, 28);
INSERT INTO public.normalized_star_wars_keywords VALUES (144, 96);
INSERT INTO public.normalized_star_wars_keywords VALUES (144, 97);
INSERT INTO public.normalized_star_wars_keywords VALUES (218, 142);
INSERT INTO public.normalized_star_wars_keywords VALUES (218, 58);
INSERT INTO public.normalized_star_wars_keywords VALUES (218, 68);
INSERT INTO public.normalized_star_wars_keywords VALUES (292, 167);
INSERT INTO public.normalized_star_wars_keywords VALUES (292, 33);
INSERT INTO public.normalized_star_wars_keywords VALUES (292, 52);
INSERT INTO public.normalized_star_wars_keywords VALUES (292, 40);
INSERT INTO public.normalized_star_wars_keywords VALUES (292, 61);
INSERT INTO public.normalized_star_wars_keywords VALUES (292, 135);
INSERT INTO public.normalized_star_wars_keywords VALUES (292, 165);
INSERT INTO public.normalized_star_wars_keywords VALUES (292, 2);
INSERT INTO public.normalized_star_wars_keywords VALUES (292, 95);
INSERT INTO public.normalized_star_wars_keywords VALUES (292, 17);
INSERT INTO public.normalized_star_wars_keywords VALUES (292, 105);
INSERT INTO public.normalized_star_wars_keywords VALUES (292, 146);
INSERT INTO public.normalized_star_wars_keywords VALUES (268, 84);
INSERT INTO public.normalized_star_wars_keywords VALUES (268, 58);
INSERT INTO public.normalized_star_wars_keywords VALUES (36, 67);
INSERT INTO public.normalized_star_wars_keywords VALUES (36, 20);
INSERT INTO public.normalized_star_wars_keywords VALUES (36, 163);
INSERT INTO public.normalized_star_wars_keywords VALUES (36, 120);
INSERT INTO public.normalized_star_wars_keywords VALUES (36, 122);
INSERT INTO public.normalized_star_wars_keywords VALUES (36, 59);
INSERT INTO public.normalized_star_wars_keywords VALUES (36, 24);
INSERT INTO public.normalized_star_wars_keywords VALUES (47, 121);
INSERT INTO public.normalized_star_wars_keywords VALUES (47, 13);
INSERT INTO public.normalized_star_wars_keywords VALUES (185, 33);
INSERT INTO public.normalized_star_wars_keywords VALUES (185, 140);
INSERT INTO public.normalized_star_wars_keywords VALUES (185, 147);
INSERT INTO public.normalized_star_wars_keywords VALUES (185, 49);
INSERT INTO public.normalized_star_wars_keywords VALUES (185, 23);
INSERT INTO public.normalized_star_wars_keywords VALUES (21, 32);
INSERT INTO public.normalized_star_wars_keywords VALUES (21, 13);
INSERT INTO public.normalized_star_wars_keywords VALUES (158, 61);
INSERT INTO public.normalized_star_wars_keywords VALUES (158, 146);
INSERT INTO public.normalized_star_wars_keywords VALUES (265, 83);
INSERT INTO public.normalized_star_wars_keywords VALUES (50, 44);
INSERT INTO public.normalized_star_wars_keywords VALUES (50, 79);
INSERT INTO public.normalized_star_wars_keywords VALUES (50, 47);
INSERT INTO public.normalized_star_wars_keywords VALUES (50, 108);
INSERT INTO public.normalized_star_wars_keywords VALUES (193, 90);
INSERT INTO public.normalized_star_wars_keywords VALUES (95, 103);
INSERT INTO public.normalized_star_wars_keywords VALUES (95, 43);
INSERT INTO public.normalized_star_wars_keywords VALUES (95, 6);
INSERT INTO public.normalized_star_wars_keywords VALUES (69, 33);
INSERT INTO public.normalized_star_wars_keywords VALUES (69, 126);
INSERT INTO public.normalized_star_wars_keywords VALUES (205, 119);
INSERT INTO public.normalized_star_wars_keywords VALUES (205, 126);
INSERT INTO public.normalized_star_wars_keywords VALUES (31, 85);
INSERT INTO public.normalized_star_wars_keywords VALUES (19, 20);
INSERT INTO public.normalized_star_wars_keywords VALUES (19, 103);
INSERT INTO public.normalized_star_wars_keywords VALUES (73, 109);
INSERT INTO public.normalized_star_wars_keywords VALUES (73, 153);
INSERT INTO public.normalized_star_wars_keywords VALUES (73, 80);
INSERT INTO public.normalized_star_wars_keywords VALUES (73, 92);
INSERT INTO public.normalized_star_wars_keywords VALUES (80, 12);
INSERT INTO public.normalized_star_wars_keywords VALUES (80, 10);
INSERT INTO public.normalized_star_wars_keywords VALUES (80, 19);
INSERT INTO public.normalized_star_wars_keywords VALUES (80, 1);
INSERT INTO public.normalized_star_wars_keywords VALUES (80, 49);
INSERT INTO public.normalized_star_wars_keywords VALUES (251, 86);
INSERT INTO public.normalized_star_wars_keywords VALUES (251, 13);
INSERT INTO public.normalized_star_wars_keywords VALUES (278, 86);
INSERT INTO public.normalized_star_wars_keywords VALUES (22, 136);
INSERT INTO public.normalized_star_wars_keywords VALUES (22, 34);
INSERT INTO public.normalized_star_wars_keywords VALUES (22, 31);
INSERT INTO public.normalized_star_wars_keywords VALUES (22, 69);
INSERT INTO public.normalized_star_wars_keywords VALUES (175, 83);
INSERT INTO public.normalized_star_wars_keywords VALUES (175, 86);
INSERT INTO public.normalized_star_wars_keywords VALUES (175, 148);
INSERT INTO public.normalized_star_wars_keywords VALUES (235, 150);
INSERT INTO public.normalized_star_wars_keywords VALUES (235, 149);
INSERT INTO public.normalized_star_wars_keywords VALUES (234, 156);
INSERT INTO public.normalized_star_wars_keywords VALUES (164, 112);
INSERT INTO public.normalized_star_wars_keywords VALUES (79, 58);
INSERT INTO public.normalized_star_wars_keywords VALUES (203, 104);
INSERT INTO public.normalized_star_wars_keywords VALUES (82, 128);
INSERT INTO public.normalized_star_wars_keywords VALUES (82, 115);
INSERT INTO public.normalized_star_wars_keywords VALUES (82, 64);
INSERT INTO public.normalized_star_wars_keywords VALUES (82, 16);
INSERT INTO public.normalized_star_wars_keywords VALUES (82, 11);
INSERT INTO public.normalized_star_wars_keywords VALUES (82, 154);


--
-- TOC entry 5133 (class 0 OID 29672)
-- Dependencies: 243
-- Data for Name: normalized_starships; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.normalized_starships VALUES (1, 'https://swapi.dev/api/starships/2/', 'CR90 corvette', 'CR90 corvette', 'Corellian Engineering Corporation', '3500000', '150', '950', '30-165', '600', '3000000', '1 year', '2.0', '60', 'corvette');
INSERT INTO public.normalized_starships VALUES (2, 'https://swapi.dev/api/starships/3/', 'Star Destroyer', 'Imperial I-class Star Destroyer', 'Kuat Drive Yards', '150000000', '1,600', '975', '47,060', 'n/a', '36000000', '2 years', '2.0', '60', 'Star Destroyer');
INSERT INTO public.normalized_starships VALUES (3, 'https://swapi.dev/api/starships/5/', 'Sentinel-class landing craft', 'Sentinel-class landing craft', 'Sienar Fleet Systems, Cyngus Spaceworks', '240000', '38', '1000', '5', '75', '180000', '1 month', '1.0', '70', 'landing craft');
INSERT INTO public.normalized_starships VALUES (4, 'https://swapi.dev/api/starships/9/', 'Death Star', 'DS-1 Orbital Battle Station', 'Imperial Department of Military Research, Sienar Fleet Systems', '1000000000000', '120000', 'n/a', '342,953', '843,342', '1000000000000', '3 years', '4.0', '10', 'Deep Space Mobile Battlestation');
INSERT INTO public.normalized_starships VALUES (5, 'https://swapi.dev/api/starships/10/', 'Millennium Falcon', 'YT-1300 light freighter', 'Corellian Engineering Corporation', '100000', '34.37', '1050', '4', '6', '100000', '2 months', '0.5', '75', 'Light freighter');
INSERT INTO public.normalized_starships VALUES (6, 'https://swapi.dev/api/starships/11/', 'Y-wing', 'BTL Y-wing', 'Koensayr Manufacturing', '134999', '14', '1000km', '2', '0', '110', '1 week', '1.0', '80', 'assault starfighter');
INSERT INTO public.normalized_starships VALUES (7, 'https://swapi.dev/api/starships/12/', 'X-wing', 'T-65 X-wing', 'Incom Corporation', '149999', '12.5', '1050', '1', '0', '110', '1 week', '1.0', '100', 'Starfighter');
INSERT INTO public.normalized_starships VALUES (8, 'https://swapi.dev/api/starships/13/', 'TIE Advanced x1', 'Twin Ion Engine Advanced x1', 'Sienar Fleet Systems', 'unknown', '9.2', '1200', '1', '0', '150', '5 days', '1.0', '105', 'Starfighter');
INSERT INTO public.normalized_starships VALUES (9, 'https://swapi.dev/api/starships/15/', 'Executor', 'Executor-class star dreadnought', 'Kuat Drive Yards, Fondor Shipyards', '1143350000', '19000', 'n/a', '279,144', '38000', '250000000', '6 years', '2.0', '40', 'Star dreadnought');
INSERT INTO public.normalized_starships VALUES (10, 'https://swapi.dev/api/starships/17/', 'Rebel transport', 'GR-75 medium transport', 'Gallofree Yards, Inc.', 'unknown', '90', '650', '6', '90', '19000000', '6 months', '4.0', '20', 'Medium transport');
INSERT INTO public.normalized_starships VALUES (11, 'https://swapi.dev/api/starships/21/', 'Slave 1', 'Firespray-31-class patrol and attack', 'Kuat Systems Engineering', 'unknown', '21.5', '1000', '1', '6', '70000', '1 month', '3.0', '70', 'Patrol craft');
INSERT INTO public.normalized_starships VALUES (12, 'https://swapi.dev/api/starships/22/', 'Imperial shuttle', 'Lambda-class T-4a shuttle', 'Sienar Fleet Systems', '240000', '20', '850', '6', '20', '80000', '2 months', '1.0', '50', 'Armed government transport');
INSERT INTO public.normalized_starships VALUES (13, 'https://swapi.dev/api/starships/23/', 'EF76 Nebulon-B escort frigate', 'EF76 Nebulon-B escort frigate', 'Kuat Drive Yards', '8500000', '300', '800', '854', '75', '6000000', '2 years', '2.0', '40', 'Escort ship');
INSERT INTO public.normalized_starships VALUES (14, 'https://swapi.dev/api/starships/27/', 'Calamari Cruiser', 'MC80 Liberty type Star Cruiser', 'Mon Calamari shipyards', '104000000', '1200', 'n/a', '5400', '1200', 'unknown', '2 years', '1.0', '60', 'Star Cruiser');
INSERT INTO public.normalized_starships VALUES (15, 'https://swapi.dev/api/starships/28/', 'A-wing', 'RZ-1 A-wing Interceptor', 'Alliance Underground Engineering, Incom Corporation', '175000', '9.6', '1300', '1', '0', '40', '1 week', '1.0', '120', 'Starfighter');
INSERT INTO public.normalized_starships VALUES (16, 'https://swapi.dev/api/starships/29/', 'B-wing', 'A/SF-01 B-wing starfighter', 'Slayn & Korpil', '220000', '16.9', '950', '1', '0', '45', '1 week', '2.0', '91', 'Assault Starfighter');
INSERT INTO public.normalized_starships VALUES (17, 'https://swapi.dev/api/starships/31/', 'Republic Cruiser', 'Consular-class cruiser', 'Corellian Engineering Corporation', 'unknown', '115', '900', '9', '16', 'unknown', 'unknown', '2.0', 'unknown', 'Space cruiser');
INSERT INTO public.normalized_starships VALUES (18, 'https://swapi.dev/api/starships/32/', 'Droid control ship', 'Lucrehulk-class Droid Control Ship', 'Hoersch-Kessel Drive, Inc.', 'unknown', '3170', 'n/a', '175', '139000', '4000000000', '500 days', '2.0', 'unknown', 'Droid control ship');
INSERT INTO public.normalized_starships VALUES (19, 'https://swapi.dev/api/starships/39/', 'Naboo fighter', 'N-1 starfighter', 'Theed Palace Space Vessel Engineering Corps', '200000', '11', '1100', '1', '0', '65', '7 days', '1.0', 'unknown', 'Starfighter');
INSERT INTO public.normalized_starships VALUES (20, 'https://swapi.dev/api/starships/40/', 'Naboo Royal Starship', 'J-type 327 Nubian royal starship', 'Theed Palace Space Vessel Engineering Corps, Nubia Star Drives', 'unknown', '76', '920', '8', 'unknown', 'unknown', 'unknown', '1.8', 'unknown', 'yacht');
INSERT INTO public.normalized_starships VALUES (21, 'https://swapi.dev/api/starships/41/', 'Scimitar', 'Star Courier', 'Republic Sienar Systems', '55000000', '26.5', '1180', '1', '6', '2500000', '30 days', '1.5', 'unknown', 'Space Transport');
INSERT INTO public.normalized_starships VALUES (22, 'https://swapi.dev/api/starships/43/', 'J-type diplomatic barge', 'J-type diplomatic barge', 'Theed Palace Space Vessel Engineering Corps, Nubia Star Drives', '2000000', '39', '2000', '5', '10', 'unknown', '1 year', '0.7', 'unknown', 'Diplomatic barge');
INSERT INTO public.normalized_starships VALUES (23, 'https://swapi.dev/api/starships/47/', 'AA-9 Coruscant freighter', 'Botajef AA-9 Freighter-Liner', 'Botajef Shipyards', 'unknown', '390', 'unknown', 'unknown', '30000', 'unknown', 'unknown', 'unknown', 'unknown', 'freighter');
INSERT INTO public.normalized_starships VALUES (24, 'https://swapi.dev/api/starships/48/', 'Jedi starfighter', 'Delta-7 Aethersprite-class interceptor', 'Kuat Systems Engineering', '180000', '8', '1150', '1', '0', '60', '7 days', '1.0', 'unknown', 'Starfighter');
INSERT INTO public.normalized_starships VALUES (25, 'https://swapi.dev/api/starships/49/', 'H-type Nubian yacht', 'H-type Nubian yacht', 'Theed Palace Space Vessel Engineering Corps', 'unknown', '47.9', '8000', '4', 'unknown', 'unknown', 'unknown', '0.9', 'unknown', 'yacht');
INSERT INTO public.normalized_starships VALUES (26, 'https://swapi.dev/api/starships/52/', 'Republic Assault ship', 'Acclamator I-class assault ship', 'Rothana Heavy Engineering', 'unknown', '752', 'unknown', '700', '16000', '11250000', '2 years', '0.6', 'unknown', 'assault ship');
INSERT INTO public.normalized_starships VALUES (27, 'https://swapi.dev/api/starships/58/', 'Solar Sailer', 'Punworcca 116-class interstellar sloop', 'Huppla Pasa Tisc Shipwrights Collective', '35700', '15.2', '1600', '3', '11', '240', '7 days', '1.5', 'unknown', 'yacht');
INSERT INTO public.normalized_starships VALUES (28, 'https://swapi.dev/api/starships/59/', 'Trade Federation cruiser', 'Providence-class carrier/destroyer', 'Rendili StarDrive, Free Dac Volunteers Engineering corps.', '125000000', '1088', '1050', '600', '48247', '50000000', '4 years', '1.5', 'unknown', 'capital ship');
INSERT INTO public.normalized_starships VALUES (29, 'https://swapi.dev/api/starships/61/', 'Theta-class T-2c shuttle', 'Theta-class T-2c shuttle', 'Cygnus Spaceworks', '1000000', '18.5', '2000', '5', '16', '50000', '56 days', '1.0', 'unknown', 'transport');
INSERT INTO public.normalized_starships VALUES (30, 'https://swapi.dev/api/starships/63/', 'Republic attack cruiser', 'Senator-class Star Destroyer', 'Kuat Drive Yards, Allanteen Six shipyards', '59000000', '1137', '975', '7400', '2000', '20000000', '2 years', '1.0', 'unknown', 'star destroyer');
INSERT INTO public.normalized_starships VALUES (31, 'https://swapi.dev/api/starships/64/', 'Naboo star skiff', 'J-type star skiff', 'Theed Palace Space Vessel Engineering Corps/Nubia Star Drives, Incorporated', 'unknown', '29.2', '1050', '3', '3', 'unknown', 'unknown', '0.5', 'unknown', 'yacht');
INSERT INTO public.normalized_starships VALUES (32, 'https://swapi.dev/api/starships/65/', 'Jedi Interceptor', 'Eta-2 Actis-class light interceptor', 'Kuat Systems Engineering', '320000', '5.47', '1500', '1', '0', '60', '2 days', '1.0', 'unknown', 'starfighter');
INSERT INTO public.normalized_starships VALUES (33, 'https://swapi.dev/api/starships/66/', 'arc-170', 'Aggressive Reconnaissance-170 starfighte', 'Incom Corporation, Subpro Corporation', '155000', '14.5', '1000', '3', '0', '110', '5 days', '1.0', '100', 'starfighter');
INSERT INTO public.normalized_starships VALUES (34, 'https://swapi.dev/api/starships/68/', 'Banking clan frigte', 'Munificent-class star frigate', 'Hoersch-Kessel Drive, Inc, Gwori Revolutionary Industries', '57000000', '825', 'unknown', '200', 'unknown', '40000000', '2 years', '1.0', 'unknown', 'cruiser');
INSERT INTO public.normalized_starships VALUES (35, 'https://swapi.dev/api/starships/74/', 'Belbullab-22 starfighter', 'Belbullab-22 starfighter', 'Feethan Ottraw Scalable Assemblies', '168000', '6.71', '1100', '1', '0', '140', '7 days', '6', 'unknown', 'starfighter');
INSERT INTO public.normalized_starships VALUES (36, 'https://swapi.dev/api/starships/75/', 'V-wing', 'Alpha-3 Nimbus-class V-wing starfighter', 'Kuat Systems Engineering', '102500', '7.9', '1050', '1', '0', '60', '15 hours', '1.0', 'unknown', 'starfighter');


--
-- TOC entry 5138 (class 0 OID 29723)
-- Dependencies: 248
-- Data for Name: normalized_vehicle_pilots; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.normalized_vehicle_pilots VALUES (5, 1);
INSERT INTO public.normalized_vehicle_pilots VALUES (5, 17);
INSERT INTO public.normalized_vehicle_pilots VALUES (8, 13);
INSERT INTO public.normalized_vehicle_pilots VALUES (13, 1);
INSERT INTO public.normalized_vehicle_pilots VALUES (13, 5);
INSERT INTO public.normalized_vehicle_pilots VALUES (19, 10);
INSERT INTO public.normalized_vehicle_pilots VALUES (19, 31);
INSERT INTO public.normalized_vehicle_pilots VALUES (20, 43);
INSERT INTO public.normalized_vehicle_pilots VALUES (21, 11);
INSERT INTO public.normalized_vehicle_pilots VALUES (22, 69);
INSERT INTO public.normalized_vehicle_pilots VALUES (23, 11);
INSERT INTO public.normalized_vehicle_pilots VALUES (28, 66);
INSERT INTO public.normalized_vehicle_pilots VALUES (31, 78);


--
-- TOC entry 5137 (class 0 OID 29713)
-- Dependencies: 247
-- Data for Name: normalized_vehicles; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.normalized_vehicles VALUES (1, 'https://swapi.dev/api/vehicles/4/', 'Sand Crawler', 'Digger Crawler', 'Corellia Mining Corporation', '150000', '36.8 ', '30', '46', '30', '50000', '2 months', 'wheeled');
INSERT INTO public.normalized_vehicles VALUES (2, 'https://swapi.dev/api/vehicles/6/', 'T-16 skyhopper', 'T-16 skyhopper', 'Incom Corporation', '14500', '10.4 ', '1200', '1', '1', '50', '0', 'repulsorcraft');
INSERT INTO public.normalized_vehicles VALUES (3, 'https://swapi.dev/api/vehicles/7/', 'X-34 landspeeder', 'X-34 landspeeder', 'SoroSuub Corporation', '10550', '3.4 ', '250', '1', '1', '5', 'unknown', 'repulsorcraft');
INSERT INTO public.normalized_vehicles VALUES (4, 'https://swapi.dev/api/vehicles/8/', 'TIE/LN starfighter', 'Twin Ion Engine/Ln Starfighter', 'Sienar Fleet Systems', 'unknown', '6.4', '1200', '1', '0', '65', '2 days', 'starfighter');
INSERT INTO public.normalized_vehicles VALUES (5, 'https://swapi.dev/api/vehicles/14/', 'Snowspeeder', 't-47 airspeeder', 'Incom corporation', 'unknown', '4.5', '650', '2', '0', '10', 'none', 'airspeeder');
INSERT INTO public.normalized_vehicles VALUES (6, 'https://swapi.dev/api/vehicles/16/', 'TIE bomber', 'TIE/sa bomber', 'Sienar Fleet Systems', 'unknown', '7.8', '850', '1', '0', 'none', '2 days', 'space/planetary bomber');
INSERT INTO public.normalized_vehicles VALUES (7, 'https://swapi.dev/api/vehicles/18/', 'AT-AT', 'All Terrain Armored Transport', 'Kuat Drive Yards, Imperial Department of Military Research', 'unknown', '20', '60', '5', '40', '1000', 'unknown', 'assault walker');
INSERT INTO public.normalized_vehicles VALUES (8, 'https://swapi.dev/api/vehicles/19/', 'AT-ST', 'All Terrain Scout Transport', 'Kuat Drive Yards, Imperial Department of Military Research', 'unknown', '2', '90', '2', '0', '200', 'none', 'walker');
INSERT INTO public.normalized_vehicles VALUES (9, 'https://swapi.dev/api/vehicles/20/', 'Storm IV Twin-Pod cloud car', 'Storm IV Twin-Pod', 'Bespin Motors', '75000', '7', '1500', '2', '0', '10', '1 day', 'repulsorcraft');
INSERT INTO public.normalized_vehicles VALUES (10, 'https://swapi.dev/api/vehicles/24/', 'Sail barge', 'Modified Luxury Sail Barge', 'Ubrikkian Industries Custom Vehicle Division', '285000', '30', '100', '26', '500', '2000000', 'Live food tanks', 'sail barge');
INSERT INTO public.normalized_vehicles VALUES (11, 'https://swapi.dev/api/vehicles/25/', 'Bantha-II cargo skiff', 'Bantha-II', 'Ubrikkian Industries', '8000', '9.5', '250', '5', '16', '135000', '1 day', 'repulsorcraft cargo skiff');
INSERT INTO public.normalized_vehicles VALUES (12, 'https://swapi.dev/api/vehicles/26/', 'TIE/IN interceptor', 'Twin Ion Engine Interceptor', 'Sienar Fleet Systems', 'unknown', '9.6', '1250', '1', '0', '75', '2 days', 'starfighter');
INSERT INTO public.normalized_vehicles VALUES (13, 'https://swapi.dev/api/vehicles/30/', 'Imperial Speeder Bike', '74-Z speeder bike', 'Aratech Repulsor Company', '8000', '3', '360', '1', '1', '4', '1 day', 'speeder');
INSERT INTO public.normalized_vehicles VALUES (14, 'https://swapi.dev/api/vehicles/33/', 'Vulture Droid', 'Vulture-class droid starfighter', 'Haor Chall Engineering, Baktoid Armor Workshop', 'unknown', '3.5', '1200', '0', '0', '0', 'none', 'starfighter');
INSERT INTO public.normalized_vehicles VALUES (15, 'https://swapi.dev/api/vehicles/34/', 'Multi-Troop Transport', 'Multi-Troop Transport', 'Baktoid Armor Workshop', '138000', '31', '35', '4', '112', '12000', 'unknown', 'repulsorcraft');
INSERT INTO public.normalized_vehicles VALUES (16, 'https://swapi.dev/api/vehicles/35/', 'Armored Assault Tank', 'Armoured Assault Tank', 'Baktoid Armor Workshop', 'unknown', '9.75', '55', '4', '6', 'unknown', 'unknown', 'repulsorcraft');
INSERT INTO public.normalized_vehicles VALUES (17, 'https://swapi.dev/api/vehicles/36/', 'Single Trooper Aerial Platform', 'Single Trooper Aerial Platform', 'Baktoid Armor Workshop', '2500', '2', '400', '1', '0', 'none', 'none', 'repulsorcraft');
INSERT INTO public.normalized_vehicles VALUES (18, 'https://swapi.dev/api/vehicles/37/', 'C-9979 landing craft', 'C-9979 landing craft', 'Haor Chall Engineering', '200000', '210', '587', '140', '284', '1800000', '1 day', 'landing craft');
INSERT INTO public.normalized_vehicles VALUES (19, 'https://swapi.dev/api/vehicles/38/', 'Tribubble bongo', 'Tribubble bongo', 'Otoh Gunga Bongameken Cooperative', 'unknown', '15', '85', '1', '2', '1600', 'unknown', 'submarine');
INSERT INTO public.normalized_vehicles VALUES (20, 'https://swapi.dev/api/vehicles/42/', 'Sith speeder', 'FC-20 speeder bike', 'Razalon', '4000', '1.5', '180', '1', '0', '2', 'unknown', 'speeder');
INSERT INTO public.normalized_vehicles VALUES (21, 'https://swapi.dev/api/vehicles/44/', 'Zephyr-G swoop bike', 'Zephyr-G swoop bike', 'Mobquet Swoops and Speeders', '5750', '3.68', '350', '1', '1', '200', 'none', 'repulsorcraft');
INSERT INTO public.normalized_vehicles VALUES (22, 'https://swapi.dev/api/vehicles/45/', 'Koro-2 Exodrive airspeeder', 'Koro-2 Exodrive airspeeder', 'Desler Gizh Outworld Mobility Corporation', 'unknown', '6.6', '800', '1', '1', '80', 'unknown', 'airspeeder');
INSERT INTO public.normalized_vehicles VALUES (23, 'https://swapi.dev/api/vehicles/46/', 'XJ-6 airspeeder', 'XJ-6 airspeeder', 'Narglatch AirTech prefabricated kit', 'unknown', '6.23', '720', '1', '1', 'unknown', 'unknown', 'airspeeder');
INSERT INTO public.normalized_vehicles VALUES (24, 'https://swapi.dev/api/vehicles/50/', 'LAAT/i', 'Low Altitude Assault Transport/infrantry', 'Rothana Heavy Engineering', 'unknown', '17.4', '620', '6', '30', '170', 'unknown', 'gunship');
INSERT INTO public.normalized_vehicles VALUES (25, 'https://swapi.dev/api/vehicles/51/', 'LAAT/c', 'Low Altitude Assault Transport/carrier', 'Rothana Heavy Engineering', 'unknown', '28.82', '620', '1', '0', '40000', 'unknown', 'gunship');
INSERT INTO public.normalized_vehicles VALUES (26, 'https://swapi.dev/api/vehicles/53/', 'AT-TE', 'All Terrain Tactical Enforcer', 'Rothana Heavy Engineering, Kuat Drive Yards', 'unknown', '13.2', '60', '6', '36', '10000', '21 days', 'walker');
INSERT INTO public.normalized_vehicles VALUES (27, 'https://swapi.dev/api/vehicles/54/', 'SPHA', 'Self-Propelled Heavy Artillery', 'Rothana Heavy Engineering', 'unknown', '140', '35', '25', '30', '500', '7 days', 'walker');
INSERT INTO public.normalized_vehicles VALUES (28, 'https://swapi.dev/api/vehicles/55/', 'Flitknot speeder', 'Flitknot speeder', 'Huppla Pasa Tisc Shipwrights Collective', '8000', '2', '634', '1', '0', 'unknown', 'unknown', 'speeder');
INSERT INTO public.normalized_vehicles VALUES (29, 'https://swapi.dev/api/vehicles/56/', 'Neimoidian shuttle', 'Sheathipede-class transport shuttle', 'Haor Chall Engineering', 'unknown', '20', '880', '2', '6', '1000', '7 days', 'transport');
INSERT INTO public.normalized_vehicles VALUES (30, 'https://swapi.dev/api/vehicles/57/', 'Geonosian starfighter', 'Nantex-class territorial defense', 'Huppla Pasa Tisc Shipwrights Collective', 'unknown', '9.8', '20000', '1', '0', 'unknown', 'unknown', 'starfighter');
INSERT INTO public.normalized_vehicles VALUES (31, 'https://swapi.dev/api/vehicles/60/', 'Tsmeu-6 personal wheel bike', 'Tsmeu-6 personal wheel bike', 'Z-Gomot Ternbuell Guppat Corporation', '15000', '3.5', '330', '1', '1', '10', 'none', 'wheeled walker');
INSERT INTO public.normalized_vehicles VALUES (32, 'https://swapi.dev/api/vehicles/62/', 'Emergency Firespeeder', 'Fire suppression speeder', 'unknown', 'unknown', 'unknown', 'unknown', '2', 'unknown', 'unknown', 'unknown', 'fire suppression ship');
INSERT INTO public.normalized_vehicles VALUES (33, 'https://swapi.dev/api/vehicles/67/', 'Droid tri-fighter', 'tri-fighter', 'Colla Designs, Phlac-Arphocc Automata Industries', '20000', '5.4', '1180', '1', '0', '0', 'none', 'droid starfighter');
INSERT INTO public.normalized_vehicles VALUES (34, 'https://swapi.dev/api/vehicles/69/', 'Oevvaor jet catamaran', 'Oevvaor jet catamaran', 'Appazanna Engineering Works', '12125', '15.1', '420', '2', '2', '50', '3 days', 'airspeeder');
INSERT INTO public.normalized_vehicles VALUES (35, 'https://swapi.dev/api/vehicles/70/', 'Raddaugh Gnasp fluttercraft', 'Raddaugh Gnasp fluttercraft', 'Appazanna Engineering Works', '14750', '7', '310', '2', '0', '20', 'none', 'air speeder');
INSERT INTO public.normalized_vehicles VALUES (36, 'https://swapi.dev/api/vehicles/71/', 'Clone turbo tank', 'HAVw A6 Juggernaut', 'Kuat Drive Yards', '350000', '49.4', '160', '20', '300', '30000', '20 days', 'wheeled walker');
INSERT INTO public.normalized_vehicles VALUES (37, 'https://swapi.dev/api/vehicles/72/', 'Corporate Alliance tank droid', 'NR-N99 Persuader-class droid enforcer', 'Techno Union', '49000', '10.96', '100', '0', '4', 'none', 'none', 'droid tank');
INSERT INTO public.normalized_vehicles VALUES (38, 'https://swapi.dev/api/vehicles/73/', 'Droid gunship', 'HMP droid gunship', 'Baktoid Fleet Ordnance, Haor Chall Engineering', '60000', '12.3', '820', '0', '0', '0', 'none', 'airspeeder');
INSERT INTO public.normalized_vehicles VALUES (39, 'https://swapi.dev/api/vehicles/76/', 'AT-RT', 'All Terrain Recon Transport', 'Kuat Drive Yards', '40000', '3.2', '90', '1', '0', '20', '1 day', 'walker');


--
-- TOC entry 5115 (class 0 OID 29506)
-- Dependencies: 225
-- Data for Name: producers; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.producers VALUES (1, 'Gary Kurtz');
INSERT INTO public.producers VALUES (2, 'Rick McCallum');
INSERT INTO public.producers VALUES (3, 'Howard G. Kazanjian');
INSERT INTO public.producers VALUES (4, 'George Lucas');


--
-- TOC entry 5107 (class 0 OID 24600)
-- Dependencies: 217
-- Data for Name: star_wars_popularity; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.star_wars_popularity VALUES (11, 'Star Wars', 88.559);
INSERT INTO public.star_wars_popularity VALUES (140607, 'Star Wars: The Force Awakens', 66.772);
INSERT INTO public.star_wars_popularity VALUES (330459, 'Rogue One: A Star Wars Story', 33.1);
INSERT INTO public.star_wars_popularity VALUES (181808, 'Star Wars: The Last Jedi', 47.241);
INSERT INTO public.star_wars_popularity VALUES (1893, 'Star Wars: Episode I - The Phantom Menace', 46.845);
INSERT INTO public.star_wars_popularity VALUES (1895, 'Star Wars: Episode III - Revenge of the Sith', 41.215);
INSERT INTO public.star_wars_popularity VALUES (1894, 'Star Wars: Episode II - Attack of the Clones', 42.55);
INSERT INTO public.star_wars_popularity VALUES (181812, 'Star Wars: The Rise of Skywalker', 89.699);
INSERT INTO public.star_wars_popularity VALUES (348350, 'Solo: A Star Wars Story', 55.759);
INSERT INTO public.star_wars_popularity VALUES (12180, 'Star Wars: The Clone Wars', 19.221);
INSERT INTO public.star_wars_popularity VALUES (74849, 'The Star Wars Holiday Special', 11.853);
INSERT INTO public.star_wars_popularity VALUES (732670, 'LEGO Star Wars Holiday Special', 12.071);
INSERT INTO public.star_wars_popularity VALUES (42979, 'Robot Chicken: Star Wars', 6.272);
INSERT INTO public.star_wars_popularity VALUES (857702, 'LEGO Star Wars Terrifying Tales', 15.58);
INSERT INTO public.star_wars_popularity VALUES (392216, 'Phineas and Ferb: Star Wars', 11.461);
INSERT INTO public.star_wars_popularity VALUES (76180, 'Empire of Dreams: The Story of the Star Wars Trilogy', 10.191);
INSERT INTO public.star_wars_popularity VALUES (51888, 'Robot Chicken: Star Wars Episode III', 6.542);
INSERT INTO public.star_wars_popularity VALUES (287663, 'Star Wars Rebels: Spark of Rebellion', 8.233);
INSERT INTO public.star_wars_popularity VALUES (70608, 'LEGO Star Wars: The Padawan Menace', 7.124);
INSERT INTO public.star_wars_popularity VALUES (42982, 'Robot Chicken: Star Wars Episode II', 6.848);
INSERT INTO public.star_wars_popularity VALUES (782054, 'Doraemon: Nobita''s Little Star Wars 2021', 14.778);
INSERT INTO public.star_wars_popularity VALUES (136406, 'LEGO Star Wars: The Empire Strikes Out', 7.995);
INSERT INTO public.star_wars_popularity VALUES (337755, 'Star Wars Rebels: The Siege of Lothal', 6.756);
INSERT INTO public.star_wars_popularity VALUES (980804, 'LEGO Star Wars Summer Vacation', 12.282);
INSERT INTO public.star_wars_popularity VALUES (825647, 'Star Wars Biomes', 6.491);
INSERT INTO public.star_wars_popularity VALUES (128295, 'Star Wars: The Legacy Revealed', 3.689);
INSERT INTO public.star_wars_popularity VALUES (418363, 'Star Wars Rebels: Steps Into Shadow', 7.189);
INSERT INTO public.star_wars_popularity VALUES (667574, 'Battle Star Wars', 4.99);
INSERT INTO public.star_wars_popularity VALUES (72694, 'The Making of Star Wars', 5.655);
INSERT INTO public.star_wars_popularity VALUES (161704, 'Doraemon: Nobita''s Little Star Wars', 6.69);
INSERT INTO public.star_wars_popularity VALUES (96697, 'Star Wars XXX: A Porn Parody', 14.017);
INSERT INTO public.star_wars_popularity VALUES (81233, 'LEGO Star Wars: The Quest for R2-D2', 3.318);
INSERT INTO public.star_wars_popularity VALUES (378386, 'Star Wars: Greatest Moments', 2.643);
INSERT INTO public.star_wars_popularity VALUES (81234, 'LEGO Star Wars: Revenge of The Brick', 2.911);
INSERT INTO public.star_wars_popularity VALUES (79158, 'LEGO Star Wars: Bombad Bounty', 2.201);
INSERT INTO public.star_wars_popularity VALUES (253150, 'Plastic Galaxy: The Story of Star Wars Toys', 3.097);
INSERT INTO public.star_wars_popularity VALUES (184902, 'Star Wars: The Clone Wars - Darth Maul Returns', 3.633);
INSERT INTO public.star_wars_popularity VALUES (435365, 'The Story of Star Wars', 2.135);
INSERT INTO public.star_wars_popularity VALUES (432134, 'Star Wars: Heroes & Villains', 1.312);
INSERT INTO public.star_wars_popularity VALUES (35795, 'From ''Star Wars'' to ''Jedi'' : The Making of a Saga', 2.785);
INSERT INTO public.star_wars_popularity VALUES (81418, 'Star Wars: Deleted Magic', 1.699);
INSERT INTO public.star_wars_popularity VALUES (72513, 'Star Wars: Within a Minute - The Making of Episode III', 1.95);
INSERT INTO public.star_wars_popularity VALUES (72448, 'Star Wars: A Musical Journey', 2.147);
INSERT INTO public.star_wars_popularity VALUES (248931, 'Star Wars: Droids - The Great Heep', 1.812);
INSERT INTO public.star_wars_popularity VALUES (515773, 'Star Wars Spoofs', 1.325);
INSERT INTO public.star_wars_popularity VALUES (376798, 'Star Wars: Evolution of the Lightsaber Duel', 2.149);
INSERT INTO public.star_wars_popularity VALUES (956879, 'Star Wars Kid: The Rise of the Digital Shadows', 1.4);
INSERT INTO public.star_wars_popularity VALUES (358536, 'When Star Wars Ruled the World', 3.135);
INSERT INTO public.star_wars_popularity VALUES (513406, 'Star Wars: The Last Temptation', 2.183);
INSERT INTO public.star_wars_popularity VALUES (486000, 'The Characters of Star Wars', 1.751);
INSERT INTO public.star_wars_popularity VALUES (154452, 'Star Wars Tech', 2.044);
INSERT INTO public.star_wars_popularity VALUES (430339, 'Star Wars Underworld: A XXX Parody', 4.074);
INSERT INTO public.star_wars_popularity VALUES (102817, 'Quentin Tarantino''s Star Wars', 0.84);
INSERT INTO public.star_wars_popularity VALUES (533721, 'The Stories: The Making of ''Rogue One: A Star Wars Story''', 2.681);
INSERT INTO public.star_wars_popularity VALUES (436621, 'Star Wars : L''incroyable Légende', 1.756);
INSERT INTO public.star_wars_popularity VALUES (292410, 'Star Wars: Ewoks - Tales from the Endor Woods', 1.534);
INSERT INTO public.star_wars_popularity VALUES (207950, 'Star Wars: Droids - Treasure of the Hidden Planet', 1.163);
INSERT INTO public.star_wars_popularity VALUES (277499, 'From Star Wars to Star Wars: The Story of Industrial Light & Magic', 1.892);
INSERT INTO public.star_wars_popularity VALUES (363132, 'Star Wars Begins: A Filmumentary', 1.033);
INSERT INTO public.star_wars_popularity VALUES (624371, 'Star Wars: Galaxy''s Edge - Adventure Awaits', 1.886);
INSERT INTO public.star_wars_popularity VALUES (292404, 'Star Wars: Ewoks - The Haunted Village', 1.226);
INSERT INTO public.star_wars_popularity VALUES (501244, 'Star wars 40 ans', 0.6);
INSERT INTO public.star_wars_popularity VALUES (700448, 'Star Wars: The Clone Wars - The Nightsisters Trilogy', 0.6);
INSERT INTO public.star_wars_popularity VALUES (405572, 'Ken Loach''s Star Wars', 0.959);
INSERT INTO public.star_wars_popularity VALUES (372906, 'The Definitive History of Star Wars', 0.824);
INSERT INTO public.star_wars_popularity VALUES (219566, 'Star Wars: Music by John Williams', 1.563);
INSERT INTO public.star_wars_popularity VALUES (515580, 'How Star Wars Was Saved in the Edit', 0.725);
INSERT INTO public.star_wars_popularity VALUES (482287, 'The Stars of Star Wars', 0.6);
INSERT INTO public.star_wars_popularity VALUES (778612, 'WCCW Christmas Star Wars ''84', 1.4);
INSERT INTO public.star_wars_popularity VALUES (659114, 'The Mythology of Star Wars', 0.757);
INSERT INTO public.star_wars_popularity VALUES (207949, 'Star Wars: Droids - The Pirates and the Prince', 0.919);
INSERT INTO public.star_wars_popularity VALUES (701034, 'Star Wars : La Révolution Visuelle', 0.6);
INSERT INTO public.star_wars_popularity VALUES (412984, 'Star Wars: A XXX Gay Parody', 2.421);
INSERT INTO public.star_wars_popularity VALUES (412561, 'The Secret of Star Wars', 0.6);
INSERT INTO public.star_wars_popularity VALUES (372909, 'How Star Wars Changed the World', 0.985);
INSERT INTO public.star_wars_popularity VALUES (654663, 'Robot Chicken: Star Wars Trilogy', 0.653);
INSERT INTO public.star_wars_popularity VALUES (657296, 'Star Wars Dreams', 0.6);
INSERT INTO public.star_wars_popularity VALUES (658336, 'The Galaxy Britain Built: The British Force Behind Star Wars', 1.216);
INSERT INTO public.star_wars_popularity VALUES (777740, 'WCCW Star Wars (February 1981)', 0.919);
INSERT INTO public.star_wars_popularity VALUES (935022, 'The Unauthorized ''Star Wars'' Story', 0.73);
INSERT INTO public.star_wars_popularity VALUES (1295292, 'A Star Wars Story - Collection', 1.4);
INSERT INTO public.star_wars_popularity VALUES (528694, 'K-1 Star Wars ''96', 0.6);
INSERT INTO public.star_wars_popularity VALUES (1328024, 'Star Wars: The Acolyte', 1.4);
INSERT INTO public.star_wars_popularity VALUES (1212347, 'Star Wars: Macbeth', 0);
INSERT INTO public.star_wars_popularity VALUES (765673, 'A Disturbance in the Force: How the Star Wars Holiday Special Happened', 1.794);
INSERT INTO public.star_wars_popularity VALUES (1206751, 'Star Wars: Rebels', 0);
INSERT INTO public.star_wars_popularity VALUES (426860, 'Pro Wrestling USA: Star Wars 1985', 0.6);
INSERT INTO public.star_wars_popularity VALUES (1205833, 'Star Wars: The Clone Wars', 0);
INSERT INTO public.star_wars_popularity VALUES (1291011, 'Star Wars Comedy Skit', 0.6);
INSERT INTO public.star_wars_popularity VALUES (721334, 'Star Wars: Episode III - Making the Game', 0.6);
INSERT INTO public.star_wars_popularity VALUES (1227481, 'Harmy''s Despecialized Edition: Star Wars', 0.6);
INSERT INTO public.star_wars_popularity VALUES (1120151, 'Star Wars: The Force and the Fury', 0.627);
INSERT INTO public.star_wars_popularity VALUES (1131702, 'Star Wars: Threads of Destiny', 1.374);
INSERT INTO public.star_wars_popularity VALUES (713695, 'Star Wars vs. Star Trek: The Rivalry Continues', 0.993);
INSERT INTO public.star_wars_popularity VALUES (988510, 'Star Wars: Droids - The Battle Against Sise Fromm', 0.742);
INSERT INTO public.star_wars_popularity VALUES (1385827, 'KENOBI - A Star Wars Story', 0.6);
INSERT INTO public.star_wars_popularity VALUES (1358444, 'STAR WARS: OUTSIDER', 0.6);
INSERT INTO public.star_wars_popularity VALUES (1446796, 'Star Wars SC 38 Reimagined', 0.6);
INSERT INTO public.star_wars_popularity VALUES (294822, 'Hollywood Rivals: Star Wars vs. Star Trek', 0.6);
INSERT INTO public.star_wars_popularity VALUES (1163982, 'Icons Unearthed: Star Wars', 0.6);
INSERT INTO public.star_wars_popularity VALUES (1011601, 'Star Wars: The Gay Force Awakens', 0.6);
INSERT INTO public.star_wars_popularity VALUES (1152950, 'The Making of Star Wars - The Phantom Menace', 0.6);
INSERT INTO public.star_wars_popularity VALUES (1152956, 'The Making of Star Wars Attack of the Clones', 0.6);
INSERT INTO public.star_wars_popularity VALUES (1152962, 'Making of Star Wars Revenge of the Sith', 0.6);
INSERT INTO public.star_wars_popularity VALUES (1156076, 'Star Wars: Rebels - Art Attack', 1.113);
INSERT INTO public.star_wars_popularity VALUES (1151018, 'Musk Vs Bezos: The New Star Wars', 0.6);
INSERT INTO public.star_wars_popularity VALUES (1154600, 'LEGO Star Wars: Mandoween - Celebrate The Season', 0.804);
INSERT INTO public.star_wars_popularity VALUES (1148426, 'Star Wars Episode V 1/2: The Han Solo Affair', 0.6);
INSERT INTO public.star_wars_popularity VALUES (1188078, 'Disney Gallery - Star Wars: The Mandalorian Making Season 2', 2.437);
INSERT INTO public.star_wars_popularity VALUES (1232256, 'Star Wars: The Acolyte', 0);
INSERT INTO public.star_wars_popularity VALUES (1188079, 'Disney Gallery - Star Wars: The Mandalorian Making Season 3', 2.936);
INSERT INTO public.star_wars_popularity VALUES (1188496, 'Star Wars Dreams', 0.6);
INSERT INTO public.star_wars_popularity VALUES (1183093, 'Star Wars: Squadrons - Hunted', 0.6);
INSERT INTO public.star_wars_popularity VALUES (989991, 'PWUSA Star Wars', 0.6);
INSERT INTO public.star_wars_popularity VALUES (988904, 'Built by Jedi - The Making of Star Wars Jedi: Fallen Order', 0.646);
INSERT INTO public.star_wars_popularity VALUES (1183724, 'Last trial: A Star Wars collateral story', 1.4);
INSERT INTO public.star_wars_popularity VALUES (988689, 'Pro Wrestling USA Star Wars: December 1984', 0.6);
INSERT INTO public.star_wars_popularity VALUES (1170650, 'Hollywood''s Master of Myth: Joseph Campbell - The Force Behind Star Wars', 0.841);
INSERT INTO public.star_wars_popularity VALUES (1170485, 'Star Wars Episode III - Revenge of the Sith Ultimate Edition', 0.6);
INSERT INTO public.star_wars_popularity VALUES (1170847, 'Star Wars: Revelations', 0.627);
INSERT INTO public.star_wars_popularity VALUES (1166659, 'Saving Star Wars', 0.6);
INSERT INTO public.star_wars_popularity VALUES (998492, 'WCCW Christmas Star Wars ''83', 0.6);
INSERT INTO public.star_wars_popularity VALUES (998503, 'WCCW Thanksgiving Star Wars ''84', 0.6);
INSERT INTO public.star_wars_popularity VALUES (1178539, 'Star Wars: Lando', 0.84);
INSERT INTO public.star_wars_popularity VALUES (1177895, 'Star Wars Rebels: Heroes of Mandalore', 1.532);
INSERT INTO public.star_wars_popularity VALUES (1179333, 'All My Star Wars Cards', 0.6);
INSERT INTO public.star_wars_popularity VALUES (1175409, 'Star Wars at the BBC', 0.6);
INSERT INTO public.star_wars_popularity VALUES (993314, 'The Untitled Star Wars Mockumentary', 0.6);
INSERT INTO public.star_wars_popularity VALUES (1098229, 'Star Wars : Hunter''s Revenge', 0.6);
INSERT INTO public.star_wars_popularity VALUES (1097693, 'Star Wars Resistance: The Recruit', 0.6);
INSERT INTO public.star_wars_popularity VALUES (1093325, 'Star Wars Episode II.I: Attack of the Phantom', 1.09);
INSERT INTO public.star_wars_popularity VALUES (1093323, 'Star Wars Episode I.I: The Phantom Edit', 0.6);
INSERT INTO public.star_wars_popularity VALUES (1045923, 'Untitled Shawn Levy Star Wars Film', 0.6);
INSERT INTO public.star_wars_popularity VALUES (1081071, 'First Order, Last Jedi - A Star Wars Story', 0.6);
INSERT INTO public.star_wars_popularity VALUES (1074529, 'The Dark Resurgence: A Star Wars Story', 0.6);
INSERT INTO public.star_wars_popularity VALUES (1073068, 'Star Wars The Bounty', 0.6);
INSERT INTO public.star_wars_popularity VALUES (1077143, 'Star Wars - The Race', 0.6);
INSERT INTO public.star_wars_popularity VALUES (1083829, 'Star Wars Episode X The Spiked Menace', 0.6);
INSERT INTO public.star_wars_popularity VALUES (1082090, 'Guardian of the star wars village', 0.6);
INSERT INTO public.star_wars_popularity VALUES (1110112, 'Untitled New Republic Era Star Wars Film', 0.6);
INSERT INTO public.star_wars_popularity VALUES (1110063, 'Untitled "First Force Users" Star Wars Film', 0.6);
INSERT INTO public.star_wars_popularity VALUES (1364740, 'Star Wars: Sons of Rebellion', 1.4);
INSERT INTO public.star_wars_popularity VALUES (1354772, 'Star Wars Protector', 0);
INSERT INTO public.star_wars_popularity VALUES (1360132, 'Star Wars Ahsoka - The Patterson Cut', 1.4);
INSERT INTO public.star_wars_popularity VALUES (1358836, 'Star Wars: Deleted Magic', 0.901);
INSERT INTO public.star_wars_popularity VALUES (1378863, 'Scout: A Star Wars Story', 0.656);
INSERT INTO public.star_wars_popularity VALUES (1384337, 'Untitled Simon Kinberg Star Wars Film 1', 0.6);
INSERT INTO public.star_wars_popularity VALUES (1384339, 'Untitled Simon Kinberg Star Wars Film 2', 0.6);
INSERT INTO public.star_wars_popularity VALUES (1384341, 'Untitled Simon Kinberg Star Wars Film 3', 0.6);
INSERT INTO public.star_wars_popularity VALUES (1381563, 'Star Wars 10K', 0.6);
INSERT INTO public.star_wars_popularity VALUES (1374199, 'Star Wars: Rise of the Resistance', 0.6);
INSERT INTO public.star_wars_popularity VALUES (1374196, 'Star Wars: Millennium Falcon - Smuggler''s Run', 0.6);
INSERT INTO public.star_wars_popularity VALUES (1325284, 'The Lost Relic: A Star Wars Story', 0.6);
INSERT INTO public.star_wars_popularity VALUES (1321686, 'Star Wars: The Acolyte - Advanced Fan Screening', 0);
INSERT INTO public.star_wars_popularity VALUES (1326341, 'Star Wars: Andor', 0);
INSERT INTO public.star_wars_popularity VALUES (1325828, 'Tim vs. Star Wars: Episode I', 0);
INSERT INTO public.star_wars_popularity VALUES (1325829, 'Tim vs. Star Wars: Episode II', 0);
INSERT INTO public.star_wars_popularity VALUES (1325831, 'Tim vs. Star Wars: Episode III', 0);
INSERT INTO public.star_wars_popularity VALUES (1351768, 'Echoes of the Force: A Star Wars Fan Film', 0.6);
INSERT INTO public.star_wars_popularity VALUES (1353181, 'Star Wars: Clone Wars - Volume One', 0.6);
INSERT INTO public.star_wars_popularity VALUES (1353183, 'Star Wars: Clone Wars - Volume Two', 0.6);
INSERT INTO public.star_wars_popularity VALUES (1338547, 'RiffTrax: Star Wars: The Force Awakens', 0.65);
INSERT INTO public.star_wars_popularity VALUES (1340866, 'The Spectacular Failure of the Star Wars Hotel', 0);
INSERT INTO public.star_wars_popularity VALUES (1426722, 'DOOKU A Star Wars Story: Becoming Darth Tyranus', 0);
INSERT INTO public.star_wars_popularity VALUES (1424436, 'Star Wars: The Clone Wars - The Lost Missions', 0);
INSERT INTO public.star_wars_popularity VALUES (1423891, 'Robert Guenette''s Star Wars Original Trilogy Documentaries', 0);
INSERT INTO public.star_wars_popularity VALUES (1424925, 'Star Wars: Revelations', 0);
INSERT INTO public.star_wars_popularity VALUES (1431195, 'STAR WARS 10KK', 1.4);
INSERT INTO public.star_wars_popularity VALUES (1417668, 'Untitled Shawn Levy Star Wars Film', 1.4);
INSERT INTO public.star_wars_popularity VALUES (1422397, 'Untitled Kevin Feige Star Wars Film', 0.921);
INSERT INTO public.star_wars_popularity VALUES (1423305, 'Dynasty Typewriter''s Live Stage Reading of Star Wars Collection', 0);
INSERT INTO public.star_wars_popularity VALUES (1442357, 'STAR WARS The 212th', 0.6);
INSERT INTO public.star_wars_popularity VALUES (1444727, 'Lego Star Wars: The Yoda Chronicles: Mini Movies', 0.6);
INSERT INTO public.star_wars_popularity VALUES (1444730, 'Lego Star Wars: The Yoda Chronicles: The Phantom Clone', 0.6);
INSERT INTO public.star_wars_popularity VALUES (1444731, 'Lego Star Wars: The Yoda Chronicles: Menace of the Sith', 0.6);
INSERT INTO public.star_wars_popularity VALUES (1444734, 'Lego Star Wars: The Yoda Chronicles: Attack of the Jedi', 0.6);
INSERT INTO public.star_wars_popularity VALUES (1444738, 'Lego Star Wars: The Yoda Chronicles', 0.6);
INSERT INTO public.star_wars_popularity VALUES (1444816, 'Lego Star Wars: The New Yoda Chronicles: Escape from the Jedi Temple', 0.6);
INSERT INTO public.star_wars_popularity VALUES (1444820, 'Lego Star Wars: The New Yoda Chronicles: Race for the Holocrons', 0.6);
INSERT INTO public.star_wars_popularity VALUES (1434178, 'STAR WARS 10K - Episode spécial Saint Valentin', 1.4);
INSERT INTO public.star_wars_popularity VALUES (1433099, 'STAR WARS 10K', 0);
INSERT INTO public.star_wars_popularity VALUES (1438078, 'Untitled Shawn levy Star Wars movie', 0.6);
INSERT INTO public.star_wars_popularity VALUES (1437354, 'Star Wars: Episode IV -  A New Hope', 0.6);
INSERT INTO public.star_wars_popularity VALUES (1438815, 'Fallen Angel: A Star Wars Story', 0.6);
INSERT INTO public.star_wars_popularity VALUES (1435406, 'Rifftrax : Star Wars Episode V: The Empire Strikes Back', 0.65);
INSERT INTO public.star_wars_popularity VALUES (1397512, 'Making Of à la manière de Star Wars: La Guerre Des Peaux', 0.6);
INSERT INTO public.star_wars_popularity VALUES (1386412, 'Star Wars The Clone Wars: The Siege Of Mandalore Arc', 0.6);
INSERT INTO public.star_wars_popularity VALUES (1385959, 'Star Wars Uncut', 0);
INSERT INTO public.star_wars_popularity VALUES (1391175, 'WCCW Christmas Star Wars 1981', 0.6);
INSERT INTO public.star_wars_popularity VALUES (1391641, 'Star Wars: Clone Wars Volume Two', 0.6);
INSERT INTO public.star_wars_popularity VALUES (1391989, 'The Spectacular Failure of the Star Wars Hotel', 0);
INSERT INTO public.star_wars_popularity VALUES (1390592, 'Star Wars: Clone Wars Volume One', 1.4);
INSERT INTO public.star_wars_popularity VALUES (1408682, 'Star Wars Rebels (Shorts)', 0);
INSERT INTO public.star_wars_popularity VALUES (1408459, 'Star Wars Episode I.I: The Phantom Edit', 0.6);
INSERT INTO public.star_wars_popularity VALUES (1415299, 'Star Wars Concert', 0);
INSERT INTO public.star_wars_popularity VALUES (1400813, 'Star Wars: Tales of the Twin Suns, Episode One: Birth of a Monster', 0.6);
INSERT INTO public.star_wars_popularity VALUES (1400687, 'Star Wars: Origins', 0.909);
INSERT INTO public.star_wars_popularity VALUES (1401964, 'Mustafar Takes Los Angeles: An All-Star Live Reading of Star Wars Episode III: Revenge of the Sith', 0);
INSERT INTO public.star_wars_popularity VALUES (1406616, 'Star Wars Rebels: Art Attack', 0);
INSERT INTO public.star_wars_popularity VALUES (1406617, 'Star Wars Rebels: Entanglement', 0);
INSERT INTO public.star_wars_popularity VALUES (1406619, 'Star Wars Rebels: Property of Ezra Bridger', 0);
INSERT INTO public.star_wars_popularity VALUES (1406612, 'Star Wars Rebels: The Machine in the Ghost', 0);
INSERT INTO public.star_wars_popularity VALUES (1404950, 'STAR WARS RED: A Star Wars Fan Film', 1.4);
INSERT INTO public.star_wars_popularity VALUES (1238806, 'Star Wars: Despecialized Collection', 0);
INSERT INTO public.star_wars_popularity VALUES (1243349, 'Star Wars The Old Republic: Return', 0.6);
INSERT INTO public.star_wars_popularity VALUES (1243353, 'Star Wars The Old Republic: Hope', 0.6);
INSERT INTO public.star_wars_popularity VALUES (1243638, 'Star Wars Episode IV: A New Hope - The Collection', 0);
INSERT INTO public.star_wars_popularity VALUES (1243562, 'Star Wars: Anatomy Of A Dewback', 0);
INSERT INTO public.star_wars_popularity VALUES (1243566, 'Star Wars: Archive Fly-Through', 0);
INSERT INTO public.star_wars_popularity VALUES (1243549, 'Star Wars: Discoveries From Inside - Weapons & The First Lightsaber', 0);
INSERT INTO public.star_wars_popularity VALUES (1243545, 'Star Wars: Conversations - Creating A Universe', 0);
INSERT INTO public.star_wars_popularity VALUES (1243580, 'Star Wars Episode IV: A New Hope - Interviews', 0);
INSERT INTO public.star_wars_popularity VALUES (1230608, 'Star Wars: The Clone Wars', 0);
INSERT INTO public.star_wars_popularity VALUES (1230948, 'Wingman - An X-Wing Story | Star Wars Fan Film', 0);
INSERT INTO public.star_wars_popularity VALUES (1232403, 'Star Wars Extended Collection', 0);
INSERT INTO public.star_wars_popularity VALUES (1230347, 'Star Wars in Real Life II.V: Shadows of the Past', 0.6);
INSERT INTO public.star_wars_popularity VALUES (1230335, 'Star Wars in Real Life II: Attack of the Empire', 0.6);
INSERT INTO public.star_wars_popularity VALUES (1230339, 'Star Wars in Real Life III: Revenge of the Jedi', 0.6);
INSERT INTO public.star_wars_popularity VALUES (1230315, 'Star Wars in Real Life I: A New Menace', 0.6);
INSERT INTO public.star_wars_popularity VALUES (1229556, 'Star Wars Rebels', 0);
INSERT INTO public.star_wars_popularity VALUES (1233860, 'Star Wars: Rogue Squadron', 0);
INSERT INTO public.star_wars_popularity VALUES (1258052, 'Star Wars Pathways: Chapter I - Path of Betrayal', 0);
INSERT INTO public.star_wars_popularity VALUES (1244183, 'Star Wars: Conversations - The Lost Interviews', 0.6);
INSERT INTO public.star_wars_popularity VALUES (1244188, 'Star Wars: Discoveries From Inside - Matte Paintings Unveiled', 0.6);
INSERT INTO public.star_wars_popularity VALUES (1250155, 'Star Wars: The Siege of Mandalore', 0);
INSERT INTO public.star_wars_popularity VALUES (1248021, 'Star Wars Kabuki — Rennosuke and the Three Light Sabers', 0);
INSERT INTO public.star_wars_popularity VALUES (1208003, 'Darkness Within: A Star Wars Short Story', 0.6);
INSERT INTO public.star_wars_popularity VALUES (1212500, 'Voice of a Star Wars Fan', 0);
INSERT INTO public.star_wars_popularity VALUES (1210123, 'Star Wars: The Equilibrium Knight', 0);
INSERT INTO public.star_wars_popularity VALUES (1210319, 'Star Wars: The Equilibrium Knight II- The Cast of Shadows', 1.094);
INSERT INTO public.star_wars_popularity VALUES (1204019, 'Star Wars bonus trilogie IV-VI', 0.75);
INSERT INTO public.star_wars_popularity VALUES (1204002, 'Star Wars L''intrégale de la saga  bonus I-III archives', 0.6);
INSERT INTO public.star_wars_popularity VALUES (1204008, 'Star Wars épisode IV despecialized édition', 0.75);
INSERT INTO public.star_wars_popularity VALUES (1204011, 'Star Wars l''intégrale de la saga bonus IV-VI archives', 0);
INSERT INTO public.star_wars_popularity VALUES (1204014, 'Star Wars l''intégrale de la saga Documentaires et parodies', 0);
INSERT INTO public.star_wars_popularity VALUES (1204760, 'Cuarto Milenio. Especial Star Wars', 0.6);
INSERT INTO public.star_wars_popularity VALUES (1202114, 'Star Wars: Battle of the Bay', 0);
INSERT INTO public.star_wars_popularity VALUES (1224389, 'CLONE WARS: BATTLE OF THE HEROES - A Star Wars Fan Animation', 0);
INSERT INTO public.star_wars_popularity VALUES (1221763, 'Next Star Wars', 0);
INSERT INTO public.star_wars_popularity VALUES (1221076, 'The Patrick (H) Willems Star Wars Holiday Special', 1.96);
INSERT INTO public.star_wars_popularity VALUES (1228365, 'From the Ashes: A LEGO Star Wars Story', 0);
INSERT INTO public.star_wars_popularity VALUES (1215960, 'LEGO Star Wars Droid Tales', 0);
INSERT INTO public.star_wars_popularity VALUES (1214027, 'Star Wars Project 4K77', 0);
INSERT INTO public.star_wars_popularity VALUES (1298902, 'Star Wars: The Lone Wanderer', 0);
INSERT INTO public.star_wars_popularity VALUES (1299243, 'Star Wars Episode I: Betrayal Of The Force', 0.6);
INSERT INTO public.star_wars_popularity VALUES (1305004, 'Angry Birds Star Wars', 0.653);
INSERT INTO public.star_wars_popularity VALUES (1305051, 'Angry Birds Star Wars II: Join the Pork Side', 0.904);
INSERT INTO public.star_wars_popularity VALUES (1304905, 'Star Wars Galactic Heroes', 0);
INSERT INTO public.star_wars_popularity VALUES (1305176, 'Angry Birds Star Wars II Rebels: Villain of the Year', 0);
INSERT INTO public.star_wars_popularity VALUES (1305172, 'Angry Birds Star Wars: Boba''s Delivery', 0);
INSERT INTO public.star_wars_popularity VALUES (1302290, 'The Naboo Movie: A Live Staged Reading of Star Wars: The Phantom Menace', 0);
INSERT INTO public.star_wars_popularity VALUES (1303551, 'DOOKU A Star Wars Story: Becoming Darth Tyranus', 0);
INSERT INTO public.star_wars_popularity VALUES (1303565, 'Star Wars: Despecialized Edition', 0);
INSERT INTO public.star_wars_popularity VALUES (1303477, 'Dark of the Storm: A Star Wars Fan Film', 0.6);
INSERT INTO public.star_wars_popularity VALUES (1292774, 'Star Wars: Gray Trials the Movie ( An Old Republic Fan Film)', 0);
INSERT INTO public.star_wars_popularity VALUES (1293877, 'Star Wars: X-Wing | A Star Wars Fan Film', 0);
INSERT INTO public.star_wars_popularity VALUES (1291775, 'A Star Wars Story Collection', 0);
INSERT INTO public.star_wars_popularity VALUES (1297143, 'The Spectacular Failure of the Star Wars Hotel', 0);
INSERT INTO public.star_wars_popularity VALUES (1297992, 'The Spectacular Failure of the Star Wars Hotel', 0);
INSERT INTO public.star_wars_popularity VALUES (1294962, 'The Spectacular Failure of the Star Wars Hotel', 0);
INSERT INTO public.star_wars_popularity VALUES (1295802, 'The Spectacular Failure of the Star Wars Hotel', 1.4);
INSERT INTO public.star_wars_popularity VALUES (1316506, 'Star Wars Jedi Survivor', 0.6);
INSERT INTO public.star_wars_popularity VALUES (1316455, 'Untitled Star Wars Trilogy by Rian Johnson', 0.84);
INSERT INTO public.star_wars_popularity VALUES (1316456, 'Untitled Star Wars/Exegol Project', 0.84);
INSERT INTO public.star_wars_popularity VALUES (1319172, 'Star Wars: Battlefront II', 0);
INSERT INTO public.star_wars_popularity VALUES (1319173, 'Star Wars: Eclipse', 0);
INSERT INTO public.star_wars_popularity VALUES (1319174, 'Star Wars Jedi: Fallen Order', 0);
INSERT INTO public.star_wars_popularity VALUES (1319175, 'Star Wars: Squadrons', 0);
INSERT INTO public.star_wars_popularity VALUES (1319176, 'Star Wars: Tales from the Galaxy''s Edge', 0);
INSERT INTO public.star_wars_popularity VALUES (1319177, 'Star Wars: Tales from the Galaxy''s Edge - Last Call', 0);
INSERT INTO public.star_wars_popularity VALUES (1319178, 'Star Wars: The Old Republic - Legacy of the Sith', 0);
INSERT INTO public.star_wars_popularity VALUES (1319179, 'Vader Immortal: A Star Wars VR Series - Episode I', 0);
INSERT INTO public.star_wars_popularity VALUES (1319181, 'Vader Immortal: A Star Wars VR Series - Episode II', 0);
INSERT INTO public.star_wars_popularity VALUES (1319182, 'Vader Immortal: A Star Wars VR Series - Episode III', 0);
INSERT INTO public.star_wars_popularity VALUES (1319050, 'The Acolyte: A Star Wars Fan Film', 0);
INSERT INTO public.star_wars_popularity VALUES (1309646, 'Star Wars: The Bad Batch | Featurette - Now', 0);
INSERT INTO public.star_wars_popularity VALUES (1312110, 'Some Star Wars-Influenced 8mm Production', 0);
INSERT INTO public.star_wars_popularity VALUES (1313267, 'Star Wars: The Force and the Fury', 0.6);
INSERT INTO public.star_wars_popularity VALUES (1274133, 'The Mandalorian A Star Wars Story', 1.4);
INSERT INTO public.star_wars_popularity VALUES (1264491, 'LEGO the Mandalorian: Daddy Strikes Back - A Star Wars Story', 0);
INSERT INTO public.star_wars_popularity VALUES (1264503, 'LEGO the Mandalorian: Trouble Wif'' Daddy - A Star Wars Story', 0);
INSERT INTO public.star_wars_popularity VALUES (1285081, 'Star Wars: Vengeance', 1.4);
INSERT INTO public.star_wars_popularity VALUES (1285993, 'LEGO Star Wars: Rebuild the Galaxy', 0);
INSERT INTO public.star_wars_popularity VALUES (1283185, 'Star Wars: Knights of the Old Republic II Episode IV - Rise of the Sith Lords', 0);
INSERT INTO public.star_wars_popularity VALUES (1283169, 'Star Wars: Knights of the Old Republic Episode I - A Familiar Path', 0);
INSERT INTO public.star_wars_popularity VALUES (1283173, 'Star Wars: Knights of the Old Republic Episode II - Veil of the Dark Side', 0);
INSERT INTO public.star_wars_popularity VALUES (1283177, 'Star Wars: Knights of the Old Republic Episode III - The Circle of Fate', 0);
INSERT INTO public.star_wars_popularity VALUES (1284260, 'Star Wars: I-III Archives', 0);
INSERT INTO public.star_wars_popularity VALUES (1284262, 'The Star Wars Documentaries', 0);
INSERT INTO public.star_wars_popularity VALUES (1284258, 'Star Wars: IV-VI Archives', 0);
INSERT INTO public.star_wars_popularity VALUES (1288611, 'Star Wars: Machete Order', 0);
INSERT INTO public.star_wars_popularity VALUES (1290475, 'LEGO Star Wars - Clone Trooper Orchestra', 0.6);
INSERT INTO public.star_wars_popularity VALUES (1286885, 'Star Wars: The Clone Wars', 0.6);
INSERT INTO public.star_wars_popularity VALUES (1288547, 'Star Wars (1977) - Project 4K77 Edition', 0);
INSERT INTO public.star_wars_popularity VALUES (1278584, 'In The Lone Star Wars State', 0.6);
INSERT INTO public.star_wars_popularity VALUES (1276766, 'Showdown auf dem Schmugglermond - Lego Star Wars Brickfilm', 0);
INSERT INTO public.star_wars_popularity VALUES (1282527, 'RiffTrax: The Star Wars Holiday Special', 0);
INSERT INTO public.star_wars_popularity VALUES (509770, 'The Star Wars Suite – The Danish National Symphony Orchestra', 0.6);
INSERT INTO public.star_wars_popularity VALUES (485997, 'Star Wars: The Magic & the Mystery', 1.042);
INSERT INTO public.star_wars_popularity VALUES (949966, 'Untitled Star Wars "New Jedi Order" Film', 1.4);
INSERT INTO public.star_wars_popularity VALUES (935642, 'WCCW Thanksgiving Star Wars 1985', 0.6);
INSERT INTO public.star_wars_popularity VALUES (700330, 'Untitled Taika Waititi Star Wars Film', 1.503);
INSERT INTO public.star_wars_popularity VALUES (656161, 'Toy Empire: The British Force Behind Star Wars Toys', 0.6);
INSERT INTO public.star_wars_popularity VALUES (777744, 'WCCW Christmas Star Wars ''81', 0.84);
INSERT INTO public.star_wars_popularity VALUES (778961, 'WCCW Labor Day Star Wars ''86', 0.947);
INSERT INTO public.star_wars_popularity VALUES (778832, 'WCCW Christmas Star Wars ''85', 0.6);
INSERT INTO public.star_wars_popularity VALUES (779205, 'WCCW Christmas Star Wars ''87', 0.84);
INSERT INTO public.star_wars_popularity VALUES (778215, 'WCCW Star Wars (August 1982)', 0.626);
INSERT INTO public.star_wars_popularity VALUES (778586, 'WCCW Christmas Star Wars ''82', 0.6);
INSERT INTO public.star_wars_popularity VALUES (778592, 'WCCW Star Wars (June 1983)', 0.6);
INSERT INTO public.star_wars_popularity VALUES (811318, 'WCCW Thanksgiving Star Wars ''83', 0.6);


--
-- TOC entry 5110 (class 0 OID 29469)
-- Dependencies: 220
-- Data for Name: swapi_films_details; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.swapi_films_details VALUES (1, 4, 'It is a period of civil war.
Rebel spaceships, striking
from a hidden base, have won
their first victory against
the evil Galactic Empire.

During the battle, Rebel
spies managed to steal secret
plans to the Empire''s
ultimate weapon, the DEATH
STAR, an armored space
station with enough power
to destroy an entire planet.

Pursued by the Empire''s
sinister agents, Princess
Leia races home aboard her
starship, custodian of the
stolen plans that can save her
people and restore
freedom to the galaxy....', '1977-05-25', 'https://swapi.dev/api/films/1/');
INSERT INTO public.swapi_films_details VALUES (2, 5, 'It is a dark time for the
Rebellion. Although the Death
Star has been destroyed,
Imperial troops have driven the
Rebel forces from their hidden
base and pursued them across
the galaxy.

Evading the dreaded Imperial
Starfleet, a group of freedom
fighters led by Luke Skywalker
has established a new secret
base on the remote ice world
of Hoth.

The evil lord Darth Vader,
obsessed with finding young
Skywalker, has dispatched
thousands of remote probes into
the far reaches of space....', '1980-05-17', 'https://swapi.dev/api/films/2/');
INSERT INTO public.swapi_films_details VALUES (3, 6, 'Luke Skywalker has returned to
his home planet of Tatooine in
an attempt to rescue his
friend Han Solo from the
clutches of the vile gangster
Jabba the Hutt.

Little does Luke know that the
GALACTIC EMPIRE has secretly
begun construction on a new
armored space station even
more powerful than the first
dreaded Death Star.

When completed, this ultimate
weapon will spell certain doom
for the small band of rebels
struggling to restore freedom
to the galaxy...', '1983-05-25', 'https://swapi.dev/api/films/3/');
INSERT INTO public.swapi_films_details VALUES (4, 1, 'Turmoil has engulfed the
Galactic Republic. The taxation
of trade routes to outlying star
systems is in dispute.

Hoping to resolve the matter
with a blockade of deadly
battleships, the greedy Trade
Federation has stopped all
shipping to the small planet
of Naboo.

While the Congress of the
Republic endlessly debates
this alarming chain of events,
the Supreme Chancellor has
secretly dispatched two Jedi
Knights, the guardians of
peace and justice in the
galaxy, to settle the conflict....', '1999-05-19', 'https://swapi.dev/api/films/4/');
INSERT INTO public.swapi_films_details VALUES (5, 2, 'There is unrest in the Galactic
Senate. Several thousand solar
systems have declared their
intentions to leave the Republic.

This separatist movement,
under the leadership of the
mysterious Count Dooku, has
made it difficult for the limited
number of Jedi Knights to maintain 
peace and order in the galaxy.

Senator Amidala, the former
Queen of Naboo, is returning
to the Galactic Senate to vote
on the critical issue of creating
an ARMY OF THE REPUBLIC
to assist the overwhelmed
Jedi....', '2002-05-16', 'https://swapi.dev/api/films/5/');
INSERT INTO public.swapi_films_details VALUES (6, 3, 'War! The Republic is crumbling
under attacks by the ruthless
Sith Lord, Count Dooku.
There are heroes on both sides.
Evil is everywhere.

In a stunning move, the
fiendish droid leader, General
Grievous, has swept into the
Republic capital and kidnapped
Chancellor Palpatine, leader of
the Galactic Senate.

As the Separatist Droid Army
attempts to flee the besieged
capital with their valuable
hostage, two Jedi Knights lead a
desperate mission to rescue the
captive Chancellor....', '2005-05-19', 'https://swapi.dev/api/films/6/');


--
-- TOC entry 5121 (class 0 OID 29561)
-- Dependencies: 231
-- Data for Name: tmdb_movie_ids; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.tmdb_movie_ids VALUES (67, 1227481);
INSERT INTO public.tmdb_movie_ids VALUES (23, 1302290);
INSERT INTO public.tmdb_movie_ids VALUES (136, 1340866);
INSERT INTO public.tmdb_movie_ids VALUES (154, 778961);
INSERT INTO public.tmdb_movie_ids VALUES (271, 1444734);
INSERT INTO public.tmdb_movie_ids VALUES (114, 430339);
INSERT INTO public.tmdb_movie_ids VALUES (125, 1319179);
INSERT INTO public.tmdb_movie_ids VALUES (198, 998503);
INSERT INTO public.tmdb_movie_ids VALUES (150, 956879);
INSERT INTO public.tmdb_movie_ids VALUES (276, 1232403);
INSERT INTO public.tmdb_movie_ids VALUES (289, 1400813);
INSERT INTO public.tmdb_movie_ids VALUES (25, 70608);
INSERT INTO public.tmdb_movie_ids VALUES (156, 1258052);
INSERT INTO public.tmdb_movie_ids VALUES (263, 1397512);
INSERT INTO public.tmdb_movie_ids VALUES (234, 1274133);
INSERT INTO public.tmdb_movie_ids VALUES (201, 713695);
INSERT INTO public.tmdb_movie_ids VALUES (259, 42979);
INSERT INTO public.tmdb_movie_ids VALUES (17, 949966);
INSERT INTO public.tmdb_movie_ids VALUES (60, 515580);
INSERT INTO public.tmdb_movie_ids VALUES (153, 1285993);
INSERT INTO public.tmdb_movie_ids VALUES (297, 1230347);
INSERT INTO public.tmdb_movie_ids VALUES (157, 1434178);
INSERT INTO public.tmdb_movie_ids VALUES (52, 1179333);
INSERT INTO public.tmdb_movie_ids VALUES (110, 1188079);
INSERT INTO public.tmdb_movie_ids VALUES (96, 1319181);
INSERT INTO public.tmdb_movie_ids VALUES (22, 1212500);
INSERT INTO public.tmdb_movie_ids VALUES (143, 1045923);
INSERT INTO public.tmdb_movie_ids VALUES (246, 1221763);
INSERT INTO public.tmdb_movie_ids VALUES (97, 1319177);
INSERT INTO public.tmdb_movie_ids VALUES (124, 935022);
INSERT INTO public.tmdb_movie_ids VALUES (213, 1230315);
INSERT INTO public.tmdb_movie_ids VALUES (193, 988904);
INSERT INTO public.tmdb_movie_ids VALUES (208, 782054);
INSERT INTO public.tmdb_movie_ids VALUES (36, 658336);
INSERT INTO public.tmdb_movie_ids VALUES (184, 1282527);
INSERT INTO public.tmdb_movie_ids VALUES (58, 779205);
INSERT INTO public.tmdb_movie_ids VALUES (105, 1401964);
INSERT INTO public.tmdb_movie_ids VALUES (237, 1353183);
INSERT INTO public.tmdb_movie_ids VALUES (64, 1384339);
INSERT INTO public.tmdb_movie_ids VALUES (27, 1221076);
INSERT INTO public.tmdb_movie_ids VALUES (92, 1313267);
INSERT INTO public.tmdb_movie_ids VALUES (244, 1156076);
INSERT INTO public.tmdb_movie_ids VALUES (9, 1224389);
INSERT INTO public.tmdb_movie_ids VALUES (81, 1444738);
INSERT INTO public.tmdb_movie_ids VALUES (78, 1303551);
INSERT INTO public.tmdb_movie_ids VALUES (148, 1893);
INSERT INTO public.tmdb_movie_ids VALUES (39, 1353181);
INSERT INTO public.tmdb_movie_ids VALUES (131, 436621);
INSERT INTO public.tmdb_movie_ids VALUES (225, 1360132);
INSERT INTO public.tmdb_movie_ids VALUES (145, 1384337);
INSERT INTO public.tmdb_movie_ids VALUES (159, 1319050);
INSERT INTO public.tmdb_movie_ids VALUES (261, 857702);
INSERT INTO public.tmdb_movie_ids VALUES (280, 533721);
INSERT INTO public.tmdb_movie_ids VALUES (16, 1206751);
INSERT INTO public.tmdb_movie_ids VALUES (253, 980804);
INSERT INTO public.tmdb_movie_ids VALUES (115, 74849);
INSERT INTO public.tmdb_movie_ids VALUES (133, 935642);
INSERT INTO public.tmdb_movie_ids VALUES (170, 1081071);
INSERT INTO public.tmdb_movie_ids VALUES (65, 765673);
INSERT INTO public.tmdb_movie_ids VALUES (218, 207949);
INSERT INTO public.tmdb_movie_ids VALUES (226, 1243549);
INSERT INTO public.tmdb_movie_ids VALUES (238, 1319182);
INSERT INTO public.tmdb_movie_ids VALUES (120, 1384341);
INSERT INTO public.tmdb_movie_ids VALUES (61, 1381563);
INSERT INTO public.tmdb_movie_ids VALUES (294, 1110112);
INSERT INTO public.tmdb_movie_ids VALUES (144, 659114);
INSERT INTO public.tmdb_movie_ids VALUES (227, 140607);
INSERT INTO public.tmdb_movie_ids VALUES (267, 1077143);
INSERT INTO public.tmdb_movie_ids VALUES (230, 1204760);
INSERT INTO public.tmdb_movie_ids VALUES (295, 1292774);
INSERT INTO public.tmdb_movie_ids VALUES (165, 1319176);
INSERT INTO public.tmdb_movie_ids VALUES (37, 1286885);
INSERT INTO public.tmdb_movie_ids VALUES (265, 1148426);
INSERT INTO public.tmdb_movie_ids VALUES (180, 96697);
INSERT INTO public.tmdb_movie_ids VALUES (59, 1424925);
INSERT INTO public.tmdb_movie_ids VALUES (119, 253150);
INSERT INTO public.tmdb_movie_ids VALUES (45, 76180);
INSERT INTO public.tmdb_movie_ids VALUES (179, 1183724);
INSERT INTO public.tmdb_movie_ids VALUES (68, 292404);
INSERT INTO public.tmdb_movie_ids VALUES (228, 1175409);
INSERT INTO public.tmdb_movie_ids VALUES (249, 1170485);
INSERT INTO public.tmdb_movie_ids VALUES (176, 1406617);
INSERT INTO public.tmdb_movie_ids VALUES (171, 1283185);
INSERT INTO public.tmdb_movie_ids VALUES (24, 811318);
INSERT INTO public.tmdb_movie_ids VALUES (264, 1293877);
INSERT INTO public.tmdb_movie_ids VALUES (240, 1422397);
INSERT INTO public.tmdb_movie_ids VALUES (172, 287663);
INSERT INTO public.tmdb_movie_ids VALUES (260, 154452);
INSERT INTO public.tmdb_movie_ids VALUES (63, 485997);
INSERT INTO public.tmdb_movie_ids VALUES (107, 1444731);
INSERT INTO public.tmdb_movie_ids VALUES (113, 1431195);
INSERT INTO public.tmdb_movie_ids VALUES (19, 1358836);
INSERT INTO public.tmdb_movie_ids VALUES (102, 1295292);
INSERT INTO public.tmdb_movie_ids VALUES (251, 1404950);
INSERT INTO public.tmdb_movie_ids VALUES (140, 1378863);
INSERT INTO public.tmdb_movie_ids VALUES (72, 1291775);
INSERT INTO public.tmdb_movie_ids VALUES (278, 1230948);
INSERT INTO public.tmdb_movie_ids VALUES (217, 1444820);
INSERT INTO public.tmdb_movie_ids VALUES (196, 1309646);
INSERT INTO public.tmdb_movie_ids VALUES (74, 1303477);
INSERT INTO public.tmdb_movie_ids VALUES (47, 1328024);
INSERT INTO public.tmdb_movie_ids VALUES (86, 1283173);
INSERT INTO public.tmdb_movie_ids VALUES (216, 1385959);
INSERT INTO public.tmdb_movie_ids VALUES (82, 778832);
INSERT INTO public.tmdb_movie_ids VALUES (298, 72694);
INSERT INTO public.tmdb_movie_ids VALUES (104, 184902);
INSERT INTO public.tmdb_movie_ids VALUES (146, 1178539);
INSERT INTO public.tmdb_movie_ids VALUES (282, 1316455);
INSERT INTO public.tmdb_movie_ids VALUES (206, 1423891);
INSERT INTO public.tmdb_movie_ids VALUES (71, 1154600);
INSERT INTO public.tmdb_movie_ids VALUES (235, 1299243);
INSERT INTO public.tmdb_movie_ids VALUES (66, 501244);
INSERT INTO public.tmdb_movie_ids VALUES (203, 656161);
INSERT INTO public.tmdb_movie_ids VALUES (48, 1151018);
INSERT INTO public.tmdb_movie_ids VALUES (122, 1233860);
INSERT INTO public.tmdb_movie_ids VALUES (296, 1250155);
INSERT INTO public.tmdb_movie_ids VALUES (55, 1243638);
INSERT INTO public.tmdb_movie_ids VALUES (163, 1243353);
INSERT INTO public.tmdb_movie_ids VALUES (116, 513406);
INSERT INTO public.tmdb_movie_ids VALUES (129, 1093323);
INSERT INTO public.tmdb_movie_ids VALUES (188, 721334);
INSERT INTO public.tmdb_movie_ids VALUES (223, 1097693);
INSERT INTO public.tmdb_movie_ids VALUES (274, 42982);
INSERT INTO public.tmdb_movie_ids VALUES (87, 79158);
INSERT INTO public.tmdb_movie_ids VALUES (241, 1177895);
INSERT INTO public.tmdb_movie_ids VALUES (257, 701034);
INSERT INTO public.tmdb_movie_ids VALUES (190, 667574);
INSERT INTO public.tmdb_movie_ids VALUES (103, 1131702);
INSERT INTO public.tmdb_movie_ids VALUES (132, 825647);
INSERT INTO public.tmdb_movie_ids VALUES (88, 1152956);
INSERT INTO public.tmdb_movie_ids VALUES (269, 1444730);
INSERT INTO public.tmdb_movie_ids VALUES (214, 778215);
INSERT INTO public.tmdb_movie_ids VALUES (127, 1082090);
INSERT INTO public.tmdb_movie_ids VALUES (32, 1244188);
INSERT INTO public.tmdb_movie_ids VALUES (199, 1319173);
INSERT INTO public.tmdb_movie_ids VALUES (101, 1406612);
INSERT INTO public.tmdb_movie_ids VALUES (287, 657296);
INSERT INTO public.tmdb_movie_ids VALUES (142, 1283169);
INSERT INTO public.tmdb_movie_ids VALUES (15, 1338547);
INSERT INTO public.tmdb_movie_ids VALUES (8, 72513);
INSERT INTO public.tmdb_movie_ids VALUES (236, 1243349);
INSERT INTO public.tmdb_movie_ids VALUES (175, 1228365);
INSERT INTO public.tmdb_movie_ids VALUES (255, 1442357);
INSERT INTO public.tmdb_movie_ids VALUES (106, 1238806);
INSERT INTO public.tmdb_movie_ids VALUES (43, 482287);
INSERT INTO public.tmdb_movie_ids VALUES (160, 136406);
INSERT INTO public.tmdb_movie_ids VALUES (53, 1243580);
INSERT INTO public.tmdb_movie_ids VALUES (247, 337755);
INSERT INTO public.tmdb_movie_ids VALUES (224, 1894);
INSERT INTO public.tmdb_movie_ids VALUES (270, 1248021);
INSERT INTO public.tmdb_movie_ids VALUES (85, 1364740);
INSERT INTO public.tmdb_movie_ids VALUES (290, 778612);
INSERT INTO public.tmdb_movie_ids VALUES (301, 988689);
INSERT INTO public.tmdb_movie_ids VALUES (220, 1444727);
INSERT INTO public.tmdb_movie_ids VALUES (80, 1391641);
INSERT INTO public.tmdb_movie_ids VALUES (187, 1278584);
INSERT INTO public.tmdb_movie_ids VALUES (94, 1243562);
INSERT INTO public.tmdb_movie_ids VALUES (42, 1325284);
INSERT INTO public.tmdb_movie_ids VALUES (40, 81233);
INSERT INTO public.tmdb_movie_ids VALUES (49, 1435406);
INSERT INTO public.tmdb_movie_ids VALUES (41, 1354772);
INSERT INTO public.tmdb_movie_ids VALUES (211, 1319175);
INSERT INTO public.tmdb_movie_ids VALUES (215, 1204008);
INSERT INTO public.tmdb_movie_ids VALUES (197, 1326341);
INSERT INTO public.tmdb_movie_ids VALUES (229, 376798);
INSERT INTO public.tmdb_movie_ids VALUES (13, 1284258);
INSERT INTO public.tmdb_movie_ids VALUES (76, 1284262);
INSERT INTO public.tmdb_movie_ids VALUES (14, 363132);
INSERT INTO public.tmdb_movie_ids VALUES (73, 1438815);
INSERT INTO public.tmdb_movie_ids VALUES (18, 207950);
INSERT INTO public.tmdb_movie_ids VALUES (147, 81234);
INSERT INTO public.tmdb_movie_ids VALUES (128, 161704);
INSERT INTO public.tmdb_movie_ids VALUES (93, 778592);
INSERT INTO public.tmdb_movie_ids VALUES (178, 1083829);
INSERT INTO public.tmdb_movie_ids VALUES (56, 515773);
INSERT INTO public.tmdb_movie_ids VALUES (232, 1325831);
INSERT INTO public.tmdb_movie_ids VALUES (177, 777740);
INSERT INTO public.tmdb_movie_ids VALUES (161, 1446796);
INSERT INTO public.tmdb_movie_ids VALUES (117, 528694);
INSERT INTO public.tmdb_movie_ids VALUES (239, 1298902);
INSERT INTO public.tmdb_movie_ids VALUES (245, 1073068);
INSERT INTO public.tmdb_movie_ids VALUES (181, 1074529);
INSERT INTO public.tmdb_movie_ids VALUES (185, 1291011);
INSERT INTO public.tmdb_movie_ids VALUES (77, 1264491);
INSERT INTO public.tmdb_movie_ids VALUES (121, 1303565);
INSERT INTO public.tmdb_movie_ids VALUES (243, 1188078);
INSERT INTO public.tmdb_movie_ids VALUES (266, 392216);
INSERT INTO public.tmdb_movie_ids VALUES (35, 1316506);
INSERT INTO public.tmdb_movie_ids VALUES (130, 1406616);
INSERT INTO public.tmdb_movie_ids VALUES (164, 509770);
INSERT INTO public.tmdb_movie_ids VALUES (51, 426860);
INSERT INTO public.tmdb_movie_ids VALUES (291, 1325828);
INSERT INTO public.tmdb_movie_ids VALUES (134, 778586);
INSERT INTO public.tmdb_movie_ids VALUES (174, 277499);
INSERT INTO public.tmdb_movie_ids VALUES (31, 1110063);
INSERT INTO public.tmdb_movie_ids VALUES (54, 1244183);
INSERT INTO public.tmdb_movie_ids VALUES (109, 405572);
INSERT INTO public.tmdb_movie_ids VALUES (205, 993314);
INSERT INTO public.tmdb_movie_ids VALUES (167, 988510);
INSERT INTO public.tmdb_movie_ids VALUES (108, 51888);
INSERT INTO public.tmdb_movie_ids VALUES (300, 1406619);
INSERT INTO public.tmdb_movie_ids VALUES (272, 348350);
INSERT INTO public.tmdb_movie_ids VALUES (221, 1391175);
INSERT INTO public.tmdb_movie_ids VALUES (268, 372909);
INSERT INTO public.tmdb_movie_ids VALUES (118, 1316456);
INSERT INTO public.tmdb_movie_ids VALUES (99, 1386412);
INSERT INTO public.tmdb_movie_ids VALUES (200, 1321686);
INSERT INTO public.tmdb_movie_ids VALUES (242, 1390592);
INSERT INTO public.tmdb_movie_ids VALUES (169, 1288611);
INSERT INTO public.tmdb_movie_ids VALUES (252, 1276766);
INSERT INTO public.tmdb_movie_ids VALUES (284, 998492);
INSERT INTO public.tmdb_movie_ids VALUES (254, 1305176);
INSERT INTO public.tmdb_movie_ids VALUES (286, 1895);
INSERT INTO public.tmdb_movie_ids VALUES (126, 1204014);
INSERT INTO public.tmdb_movie_ids VALUES (166, 1098229);
INSERT INTO public.tmdb_movie_ids VALUES (123, 654663);
INSERT INTO public.tmdb_movie_ids VALUES (162, 1290475);
INSERT INTO public.tmdb_movie_ids VALUES (262, 1284260);
INSERT INTO public.tmdb_movie_ids VALUES (219, 128295);
INSERT INTO public.tmdb_movie_ids VALUES (100, 1230335);
INSERT INTO public.tmdb_movie_ids VALUES (158, 1011601);
INSERT INTO public.tmdb_movie_ids VALUES (248, 624371);
INSERT INTO public.tmdb_movie_ids VALUES (281, 1264503);
INSERT INTO public.tmdb_movie_ids VALUES (189, 1415299);
INSERT INTO public.tmdb_movie_ids VALUES (195, 1400687);
INSERT INTO public.tmdb_movie_ids VALUES (210, 1319172);
INSERT INTO public.tmdb_movie_ids VALUES (191, 1423305);
INSERT INTO public.tmdb_movie_ids VALUES (207, 11);
INSERT INTO public.tmdb_movie_ids VALUES (141, 1208003);
INSERT INTO public.tmdb_movie_ids VALUES (11, 1433099);
INSERT INTO public.tmdb_movie_ids VALUES (279, 412561);
INSERT INTO public.tmdb_movie_ids VALUES (292, 412984);
INSERT INTO public.tmdb_movie_ids VALUES (69, 1166659);
INSERT INTO public.tmdb_movie_ids VALUES (204, 1358444);
INSERT INTO public.tmdb_movie_ids VALUES (212, 248931);
INSERT INTO public.tmdb_movie_ids VALUES (250, 989991);
INSERT INTO public.tmdb_movie_ids VALUES (209, 1204011);
INSERT INTO public.tmdb_movie_ids VALUES (10, 432134);
INSERT INTO public.tmdb_movie_ids VALUES (62, 1152962);
INSERT INTO public.tmdb_movie_ids VALUES (33, 1444816);
INSERT INTO public.tmdb_movie_ids VALUES (155, 294822);
INSERT INTO public.tmdb_movie_ids VALUES (44, 732670);
INSERT INTO public.tmdb_movie_ids VALUES (139, 1093325);
INSERT INTO public.tmdb_movie_ids VALUES (222, 1204002);
INSERT INTO public.tmdb_movie_ids VALUES (90, 102817);
INSERT INTO public.tmdb_movie_ids VALUES (29, 486000);
INSERT INTO public.tmdb_movie_ids VALUES (7, 1374199);
INSERT INTO public.tmdb_movie_ids VALUES (256, 1212347);
INSERT INTO public.tmdb_movie_ids VALUES (28, 1230339);
INSERT INTO public.tmdb_movie_ids VALUES (283, 330459);
INSERT INTO public.tmdb_movie_ids VALUES (275, 700448);
INSERT INTO public.tmdb_movie_ids VALUES (111, 1351768);
INSERT INTO public.tmdb_movie_ids VALUES (152, 1305051);
INSERT INTO public.tmdb_movie_ids VALUES (20, 1210123);
INSERT INTO public.tmdb_movie_ids VALUES (38, 1319174);
INSERT INTO public.tmdb_movie_ids VALUES (173, 72448);
INSERT INTO public.tmdb_movie_ids VALUES (149, 1204019);
INSERT INTO public.tmdb_movie_ids VALUES (89, 1163982);
INSERT INTO public.tmdb_movie_ids VALUES (233, 1325829);
INSERT INTO public.tmdb_movie_ids VALUES (192, 435365);
INSERT INTO public.tmdb_movie_ids VALUES (277, 35795);
INSERT INTO public.tmdb_movie_ids VALUES (137, 1243545);
INSERT INTO public.tmdb_movie_ids VALUES (186, 1319178);
INSERT INTO public.tmdb_movie_ids VALUES (46, 1285081);
INSERT INTO public.tmdb_movie_ids VALUES (151, 418363);
INSERT INTO public.tmdb_movie_ids VALUES (30, 1152950);
INSERT INTO public.tmdb_movie_ids VALUES (288, 1283177);
INSERT INTO public.tmdb_movie_ids VALUES (57, 1305172);
INSERT INTO public.tmdb_movie_ids VALUES (135, 1374196);
INSERT INTO public.tmdb_movie_ids VALUES (95, 1170650);
INSERT INTO public.tmdb_movie_ids VALUES (168, 1214027);
INSERT INTO public.tmdb_movie_ids VALUES (138, 1305004);
INSERT INTO public.tmdb_movie_ids VALUES (202, 1288547);
INSERT INTO public.tmdb_movie_ids VALUES (70, 372906);
INSERT INTO public.tmdb_movie_ids VALUES (112, 1243566);
INSERT INTO public.tmdb_movie_ids VALUES (183, 181812);
INSERT INTO public.tmdb_movie_ids VALUES (91, 1304905);
INSERT INTO public.tmdb_movie_ids VALUES (75, 1438078);
INSERT INTO public.tmdb_movie_ids VALUES (273, 292410);
INSERT INTO public.tmdb_movie_ids VALUES (299, 1210319);
INSERT INTO public.tmdb_movie_ids VALUES (21, 1385827);
INSERT INTO public.tmdb_movie_ids VALUES (285, 219566);
INSERT INTO public.tmdb_movie_ids VALUES (194, 358536);
INSERT INTO public.tmdb_movie_ids VALUES (34, 1202114);
INSERT INTO public.tmdb_movie_ids VALUES (83, 378386);
INSERT INTO public.tmdb_movie_ids VALUES (12, 777744);
INSERT INTO public.tmdb_movie_ids VALUES (84, 1408682);
INSERT INTO public.tmdb_movie_ids VALUES (79, 700330);
INSERT INTO public.tmdb_movie_ids VALUES (50, 1183093);
INSERT INTO public.tmdb_movie_ids VALUES (231, 1437354);
INSERT INTO public.tmdb_movie_ids VALUES (182, 1424436);
INSERT INTO public.tmdb_movie_ids VALUES (258, 1312110);
INSERT INTO public.tmdb_movie_ids VALUES (293, 181808);
INSERT INTO public.tmdb_movie_ids VALUES (26, 1215960);
INSERT INTO public.tmdb_movie_ids VALUES (98, 1229556);


--
-- TOC entry 5160 (class 0 OID 0)
-- Dependencies: 221
-- Name: directors_director_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.directors_director_id_seq', 3, true);


--
-- TOC entry 5161 (class 0 OID 0)
-- Dependencies: 218
-- Name: normalized_films_film_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.normalized_films_film_id_seq', 301, true);


--
-- TOC entry 5162 (class 0 OID 0)
-- Dependencies: 232
-- Name: normalized_keywords_keyword_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.normalized_keywords_keyword_id_seq', 167, true);


--
-- TOC entry 5163 (class 0 OID 0)
-- Dependencies: 237
-- Name: normalized_people_person_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.normalized_people_person_id_seq', 82, true);


--
-- TOC entry 5164 (class 0 OID 0)
-- Dependencies: 235
-- Name: normalized_planets_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.normalized_planets_planet_id_seq', 60, true);


--
-- TOC entry 5165 (class 0 OID 0)
-- Dependencies: 228
-- Name: normalized_rating_sources_rating_source_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.normalized_rating_sources_rating_source_id_seq', 5, true);


--
-- TOC entry 5166 (class 0 OID 0)
-- Dependencies: 250
-- Name: normalized_species_species_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.normalized_species_species_id_seq', 36, true);


--
-- TOC entry 5167 (class 0 OID 0)
-- Dependencies: 242
-- Name: normalized_starships_starship_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.normalized_starships_starship_id_seq', 36, true);


--
-- TOC entry 5168 (class 0 OID 0)
-- Dependencies: 246
-- Name: normalized_vehicles_vehicle_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.normalized_vehicles_vehicle_id_seq', 39, true);


--
-- TOC entry 5169 (class 0 OID 0)
-- Dependencies: 224
-- Name: producers_producer_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.producers_producer_id_seq', 4, true);


-- Completed on 2025-03-25 22:50:09

--
-- PostgreSQL database dump complete
--

