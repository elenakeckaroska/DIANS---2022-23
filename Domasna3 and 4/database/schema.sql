--
-- PostgreSQL database dump
--

-- Dumped from database version 15.1
-- Dumped by pg_dump version 15.1

-- Started on 2023-01-30 18:12:35

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
-- TOC entry 214 (class 1259 OID 16786)
-- Name: accommodation; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.accommodation (
    id bigint NOT NULL,
    city character varying(255),
    email character varying(255),
    house_number character varying(255),
    internet_access character varying(255),
    internet_access_fee character varying(255),
    latitude double precision,
    longitude double precision,
    municipality character varying(255),
    name character varying(255),
    phone character varying(255),
    postcode character varying(255),
    property_type character varying(255),
    rooms character varying(255),
    smoking character varying(255),
    stars character varying(255),
    street character varying(255),
    website character varying(255)
);


ALTER TABLE public.accommodation OWNER TO postgres;

--
-- TOC entry 215 (class 1259 OID 16793)
-- Name: user_accounts; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.user_accounts (
    username character varying(255) NOT NULL,
    name character varying(255),
    password character varying(255),
    surname character varying(255)
);


ALTER TABLE public.user_accounts OWNER TO postgres;

--
-- TOC entry 216 (class 1259 OID 16800)
-- Name: user_accounts_accommodations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.user_accounts_accommodations (
    user_username character varying(255) NOT NULL,
    accommodations_id bigint NOT NULL
);


ALTER TABLE public.user_accounts_accommodations OWNER TO postgres;

--
-- TOC entry 3328 (class 0 OID 16786)
-- Dependencies: 214
-- Data for Name: accommodation; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.accommodation (id, city, email, house_number, internet_access, internet_access_fee, latitude, longitude, municipality, name, phone, postcode, property_type, rooms, smoking, stars, street, website) FROM stdin;
0	Скопје	\N	\N	yes	yes	41.9766582	21.4087904	Општина Карпош;	Хотел Водно	\N	1000.0	hotel	\N	outside	5.0	R2138	http://hotelimakedonija.com.mk/mk/Hotel/57/Hotel-Vodno-Skopje
1	Скопје	\N	\N	yes	no	41.9761668	21.4358015	Општина Кисела Вода;	Hotel Imperial	\N	1054.0	hotel	\N	outside	3.0	Благоја Гојан	\N
2	Скопје	\N	\N	yes	no	41.9762321	21.4362154	Општина Кисела Вода;	Sun Hotel	\N	1054.0	hotel	\N	separated	3.0	Благоја Гојан	\N
3	Скопје	\N	\N	yes	yes	41.9899385	21.454931	Општина Аеродром;	hotel porta	\N	1001.0	hotel	\N	separated	5.0	Булевар Јане Сандански	http://www.hotelporta.com.mk/
4	Скопје	\N	28	yes	yes	41.9899482	21.4198508	Општина Центар;	Хотел 7	\N	1000.0	hotel	\N	outside	5.0	Булевар Мајка Тереза	\N
5	Скопје	\N	\N	yes	no	42.0037446	21.4244806	Општина Центар;	Канет	\N	1111.0	hotel	\N	separated	4.0	Наум Наумовски Борче	\N
6	Скопје	\N	\N	yes	no	41.9944128	21.4063454	Општина Карпош	Вук;Никем	\N	1020.0	hostel	\N	outside	2.0	Миле Поп Јорданов	\N
7	Скопје	info@orangeinn.com.mk	\N	no	no	41.980192	21.440152	Општина Кисела Вода;	Hotel Orange Inn	+38922772254	1001.0	hotel	\N	outside	2.0	Тодор Паница	https://www.booking.com/hotel/mk/orange-inn.en-gb.html?sid=1ddd35f0ef4f22510d37f152a78ce4a3
8	Скопје	\N	\N	yes	yes	41.9842736	21.4340308	Општина Кисела Вода;	Хостел Хостел	\N	1111.0	hostel	\N	outside	4.0	Антон Попов	\N
9	Скопје	\N	6	yes	no	41.9849555	21.4321318	Општина Кисела Вода;	Сити Хостел	+38970226165	1000.0	hostel	\N	outside	2.0	Томе Арсовски	\N
10	Скопје	\N	\N	yes	yes	41.9801123	21.4249793	Општина Центар;	Хотел Турена	\N	1000.0	hotel	\N	separated	1.0	Тодор Александров	\N
11	Скопје	\N	24	yes	no	41.9843835	21.4262323	Општина Центар;	Александар	\N	1000.0	hotel	\N	isolated	1.0	Востаничка	\N
12	Скопје	\N	\N	yes	no	41.9948912	21.4329531	Општина Центар;	Hotel City Central International	\N	1111.0	hotel	\N	outside	1.0	11 Октомври	\N
13	Скопје	\N	\N	yes	no	42.0055458	21.3755273	Општина Карпош;	Мрамор	\N	1060.0	hotel	\N	outside	5.0	Кленоец	\N
14	Скопје	\N	\N	yes	no	41.9941717	21.4068121	Општина Карпош;	Hotel Kapistec	\N	1020.0	hotel	\N	outside	1.0	Миле Поп Јорданов	\N
15	Скопје	\N	47	yes	no	41.9824332	21.4347873	Општина Кисела Вода;	Кастело	+38970631832	1111.0	hostel	\N	outside	4.0	Томе Арсовски	https://hostelkalonis.wordpress.com/
16	Скопје	\N	11	no	no	41.9921961	21.4208286	Општина Центар;	Rezidencija Ancevski	\N	1000.0	guest_house	\N	separated	3.0	Васил Ѓоргов	\N
17	Скопје	\N	2	no	no	41.9952955	21.4315713	Општина Центар;	Пелистер	\N	1000.0	hotel	\N	outside	5.0	11 Октомври	https://www.pelisterhotel.com.mk/
18	Скопје	info@hoteldekoka.mk	5	yes	no	41.9994486	21.4380987	Општина Чаир;	Hotel De KOKA	+38923112200	1111.0	hotel	36.0	separated	3.0	Krste Misirkov	www.hoteldekoka.mk
19	Скопје	contact@okhotel.mk	19	yes	no	41.9984102	21.3924091	Општина Карпош;	ОК Хотел	+38923067067	1000.0	hotel	\N	separated	4.0	Лондонска	http://www.okhotel.mk/
20	Скопје	\N	\N	yes	no	41.995617	21.4303313	Општина Центар;	Square	\N	1111.0	hotel	\N	separated	5.0	Никола Вапцаров	\N
21	Скопје	\N	38	yes	no	41.9945457	21.441776	Општина Центар;	Hotel Kej	\N	1001.0	hotel	\N	isolated	1.0	Кеј 13 Ноември	\N
22	Скопје	\N	бб	yes	yes	42.0020489	21.440168	Општина Чаир;	Султан	\N	1009.0	hotel	\N	separated	2.0	Булевар Крсте Мисирков	\N
23	Скопје	\N	13	yes	no	42.0021398	21.4401529	Општина Чаир;	Голд	\N	1009.0	hotel	\N	outside	3.0	Булевар Крсте Мисирков	http://www.hotelgold.mk/
24	Скопје	\N	\N	yes	no	42.0022531	21.438941	Општина Чаир;	Клан	\N	1009.0	hotel	\N	outside	1.0	Евлија Челебија	http://hotelimakedonija.com.mk/mk/Hotel/42/Hotel-Klan-Skopje
25	Скопје	\N	27	yes	no	42.0051439	21.4160939	Општина Карпош;	Скопје	\N	1000.0	hotel	\N	isolated	2.0	Андон Дуков	http://hotelimakedonija.com.mk/mk/Hotel/125/Hotel-Skopje-Skopje
26	Скопје	\N	\N	yes	yes	42.0073634	21.4871868	Општина Гази Баба;	Hunter’s Lodge “Kamnik”	\N	1001.0	hotel	\N	outside	5.0	Булевар Александар Македонски	http://www.kamnik.com.mk/
27	Скопје	\N	\N	yes	yes	42.0153336	21.4079869	Општина Карпош;	Вергина	\N	1020.0	hotel	\N	outside	3.0	8. Септември	http://www.hotelvergina.com/
28	Скопје	\N	28	yes	no	41.9870966	21.4201316	Општина Центар;	Тасино Чешмиче	\N	1000.0	hotel	\N	isolated	1.0	Белградска	\N
29	Скопје	\N	41a	yes	no	41.9901385	21.4061845	Општина Центар;	Арс	\N	1020.0	hostel	\N	outside	3.0	Загрепска	\N
30	Скопје	\N	15	yes	no	42.0112718	21.372544	Општина Карпош;	Feng Shui Apartments	\N	1060.0	guest_house	\N	outside	2.0	Фјодор Достоевски	\N
31	Скопје	\N	3	yes	no	41.9968442	21.4157891	Општина Центар;	Влахо	+38926092301	1000.0	hotel	\N	outside	5.0	9 Мај	\N
32	Скопје	\N	\N	yes	no	41.980734	21.4383615	Општина Кисела Вода;	Студентски дом Пелагонија	\N	1111.0	guest_house	\N	isolated	3.0	Божидар Аџија	\N
33	Скопје	\N	\N	yes	no	41.994574	21.4417693	Општина Центар;	kej	\N	1001.0	hostel	\N	separated	4.0	Кеј 13 Ноември	\N
34	Скопје	\N	1Б	no	no	41.9940541	21.407239	Општина Карпош;	Hotel Pine	\N	1000.0	hotel	\N	separated	3.0	Миле Поп Јорданов	\N
35	Скопје	\N	2	yes	no	41.9951281	21.4312446	Општина Центар;	ARSS Apartment Skopje Main Square	+38970332285	1000.0	guest_house	3.0	outside	3.0	11 Октомври	https://www.facebook.com/skopjeapartments
36	Скопје	\N	\N	yes	no	41.9816082	21.4215251	Општина Центар;	Хотел Скала	\N	1000.0	hotel	\N	outside	2.0	Тодор Александров	\N
38	Скопје	\N	\N	yes	no	41.9986179	21.416879	Општина Центар;	Hotel Elite Plaza	\N	1000.0	hotel	\N	separated	3.0	Владимир Полежановски	\N
39	Скопје	\N	38	yes	no	42.0026457	21.3630234	Општина Ѓорче Петров;	Колективен Објект за Димување - Зградс	\N	1060.0	guest_house	\N	outside	5.0	Булевар Македонска Војска	\N
40	Скопје	\N	\N	yes	yes	42.0117796	21.445242	Општина Чаир;	Alba Hotel	\N	1001.0	hotel	\N	separated	2.0	Сараевска	\N
41	Скопје	skopjehome@gmail.com	34	yes	no	42.0004589	21.4150646	Општина Центар;	Skopje Home Apartment	\N	1000.0	hotel	\N	outside	1.0	Булевар Партизански Одреди	http://www.skopjehome.com
42	Скопје	\N	\N	yes	no	41.9911246	21.4219417	Општина Центар;	The Comfy Hostel 2	\N	1000.0	hostel	3.0	outside	1.0	Булевар Мајка Тереза	\N
43	Скопје	\N	128	yes	yes	41.9788535	21.432752	Општина Кисела Вода;	Antigona Apartments	+38978866935	1000.0	guest_house	\N	isolated	5.0	Востаничка	\N
44	Скопје	\N	\N	yes	no	41.9930093	21.4295391	Општина Центар;	Hotel Elsa	\N	1111.0	hotel	\N	outside	3.0	Даме Груев	\N
45	Скопје	\N	\N	no	no	41.9926997	21.4199449	Општина Центар;	Queen’s Hotel	\N	1000.0	hotel	\N	separated	4.0	Васил Ѓоргов	http://www.queenshotel.com.mk
46	Скопје	\N	16	yes	yes	41.988699	21.457967	Општина Аеродром;	Дома	\N	1000.0	apartment	\N	outside	5.0	Булевар Јане Сандански	\N
47	Скопје	\N	1	no	no	41.9855516	21.4382328	Општина Кисела Вода;	Flatiron apartment	\N	1111.0	apartment	\N	separated	4.0	Борис Трајковски	\N
48	Скопје	\N	6	yes	yes	41.9854412	21.4320007	Општина Кисела Вода;	시티 호스텔	\N	1111.0	hostel	\N	outside	2.0	Томе Арсовски	\N
49	Скопје	\N	\N	yes	yes	41.9890144	21.4421007	Општина Центар;	Guest House Station	\N	1001.0	hostel	\N	outside	2.0	Мирче Ацев	\N
50	Скопје	\N	\N	yes	no	41.9891739	21.4432433	Општина Центар;	Valentin 2	\N	1001.0	hostel	\N	outside	5.0	Никола Карев	\N
51	Скопје	\N	\N	no	no	41.9890951	21.4284265	Општина Центар;	Sir Oliver Apartments	\N	1111.0	guest_house	\N	isolated	3.0	Димче Мирчев	\N
52	Скопје	\N	1	yes	no	41.9854542	21.4382952	Општина Кисела Вода;	Apartman Fandikaro	\N	1111.0	apartment	\N	separated	2.0	Борис Трајковски	\N
53	Скопје	\N	71	yes	yes	41.9844223	21.4214103	Општина Центар;	Салвадор Аљенде	\N	1000.0	apartment	\N	outside	1.0	Тодор Александров	\N
54	Скопје	\N	\N	yes	no	42.0009974	21.4380625	Општина Чаир;	Хотел Ален	\N	1009.0	hotel	\N	outside	2.0	191	\N
55	Скопје	\N	29	yes	no	41.9812959	21.4290454	Општина Кисела Вода;	Sirma's House	\N	1000.0	hostel	\N	separated	3.0	Банско	\N
56	Скопје	\N	40	yes	yes	41.9952645	21.415128	Општина Центар;	Vlez levo od Vasov elektrika	\N	1000.0	apartment	\N	outside	5.0	9 Мај	\N
57	Скопје	3m.apartment@gmail.com	29	yes	no	41.9977486	21.42885	Општина Центар;	3M Apartment Skopje Center	+38970821177	1000.0	apartment	2.0	outside	4.0	Васил Иљоски	https://www.facebook.com/3M.Apartment.Skopje.Center
58	Скопје	\N	292 А	yes	no	41.9586194	21.4421896	Општина Кисела Вода;	Residence	\N	1000.0	apartment	\N	outside	4.0	Христо Татарчев 24	\N
59	Скопје	\N	19	yes	no	41.9735902	21.4582502	Општина Кисела Вода;	Мако и Ања	+38977767272	1000.0	guest_house	\N	outside	3.0	Браќа Грим	\N
60	Скопје	\N	14a	no	no	41.999111	21.4159229	Општина Центар;	Nordic Hostel	\N	1000.0	hostel	\N	outside	1.0	Петар Поп Арсов	https://nordichostel.com
61	Скопје	\N	34	yes	no	42.000549	21.4151446	Општина Центар;	Pro fit	\N	1000.0	apartment	\N	separated	2.0	Булевар Партизански Одреди	\N
62	Скопје	\N	\N	yes	no	41.9856205	21.4185394	Општина Центар;	Villa Alexander	\N	1000.0	hotel	\N	outside	3.0	Ѓeорѓи Сkрижевски	\N
63	Скопје	\N	\N	yes	no	42.0010327	21.4366814	Општина Чаир;	RM	\N	1009.0	hotel	\N	outside	4.0	Леблебиџиска	\N
64	Скопје	\N	\N	yes	no	41.9996627	21.4375911	Општина Чаир;	De koka	\N	1009.0	hotel	\N	isolated	1.0	Битпазарска	\N
65	Скопје	\N	40	yes	yes	41.9866515	21.433766	Општина Кисела Вода;	Joan	\N	1111.0	apartment	\N	outside	2.0	Дренак	\N
66	Скопје	\N	1	yes	no	41.9973603	21.4344666	Општина Центар;	Stone Bridge	\N	1000.0	hotel	\N	isolated	5.0	Кеј Димитар Влахов	\N
67	Скопје	\N	\N	yes	no	41.9998152	21.4377681	Општина Чаир;	Hostel	\N	1111.0	hostel	\N	separated	2.0	Плоштад Скендербег	\N
68	Скопје	\N	\N	yes	no	41.9914244	21.4248673	Општина Центар;	per kurriz	\N	1000.0	apartment	\N	outside	4.0	Железничка	\N
70	Скопје	\N	\N	no	no	42.0044944	21.4619861	Општина Гази Баба;	Трифун Хаџи Јанев	\N	1000.0	apartment	\N	separated	2.0	Трифун Хаџијанев	\N
71	Скопје	\N	64    64Б	yes	no	41.9902902	21.4693383	Општина Аеродром;	DOMA	\N	1000.0	apartment	\N	outside	4.0	Булевар Асном	\N
72	Скопје	\N	20	yes	yes	41.9791271	21.4702172	Општина Аеродром;	20	\N	1001.0	apartment	\N	outside	1.0	Павел Шатев	\N
73	Скопје	\N	\N	yes	yes	42.0025725	21.3620267	Општина Ѓорче Петров;	Mice kozar 37	\N	1060.0	apartment	\N	isolated	2.0	Булевар Македонска Војска	\N
74	Скопје	\N	\N	yes	yes	42.0077019	21.3703494	Општина Карпош;	Bulevar Hotel	\N	1060.0	hotel	\N	outside	5.0	Булевар Партизански Одреди	\N
75	Скопје	\N	8	yes	no	42.0371952	21.4505652	Општина Бутел;	Резиденција Чапов	\N	1010.0	apartment	\N	outside	3.0	Приштинска	\N
76	Скопје	\N	77	yes	no	41.9834697	21.4208768	Општина Центар;	Панорама резиденс	\N	1000.0	apartment	\N	outside	2.0	Тодор Александров	\N
77	Скопје	\N	\N	yes	no	41.9974029	21.4234219	Општина Центар;	Ani	\N	1000.0	hotel	\N	separated	1.0	Борка Талески-Модерното	\N
78	Скопје	\N	\N	no	no	42.0006611	21.4380384	Општина Чаир;	Doa	\N	1009.0	hotel	\N	isolated	1.0	190	\N
79	Скопје	\N	84	yes	no	42.0004054	21.4253898	Општина Центар;	Villa Nina	\N	1000.0	hotel	\N	outside	5.0	Орце Николов	\N
80	Скопје	\N	\N	no	no	41.9955032	21.429975	Општина Центар;	Cara	\N	1111.0	hotel	\N	separated	5.0	Никола Вапцаров	\N
81	Скопје	\N	\N	no	no	42.0021157	21.4380515	Општина Чаир;	Santos	\N	1009.0	hotel	\N	separated	3.0	Бојаџиска	\N
82	Скопје	\N	46	yes	no	42.0008751	21.4150013	Општина Центар;	Dolce International Hotel	\N	1000.0	hotel	\N	isolated	3.0	Црвена Вода	https://www.hoteldolce.mk/
83	Скопје	\N	4	yes	no	42.0104341	21.3716663	Општина Карпош;	ул. 1606 бр. 4	\N	1000.0	apartment	\N	outside	2.0	Ацо Шопов	\N
84	Скопје	\N	14	yes	no	42.0083326	21.3916165	Општина Карпош;	Елема Лука Твинс	\N	1000.0	apartment	\N	separated	1.0	Љубљанска	\N
85	Скопје	\N	16	yes	no	42.0086725	21.3916879	Општина Карпош;	Елена Лука Твинс	\N	1000.0	apartment	\N	outside	3.0	Љубљанска	\N
86	Скопје	\N	\N	yes	no	41.9945949	21.3997882	Општина Карпош;	Living Rooms Hotel	+38975267999	1020.0	hotel	\N	separated	5.0	Џумајска	https://livingrooms.mk
87	Берово	\N	\N	yes	no	41.700628	22.8587642	Општина Берово;	Хотел Манастир	\N	2230.0	hotel	\N	separated	5.0	Моша Пијаде	\N
88	Берово	\N	\N	yes	no	41.6767336	22.896807	Општина Берово;	Вила Вакане	\N	2230.0	guest_house	\N	separated	4.0	R1310	\N
89	Берово	\N	\N	yes	no	41.6774869	22.8963993	Општина Берово;	Вила Фидански	\N	2230.0	guest_house	\N	isolated	3.0	R1310	\N
90	Берово	\N	\N	no	no	41.6783964	22.893422	Општина Берово;	Вила Нешо	\N	2230.0	guest_house	\N	outside	1.0	R1310	\N
91	Битола	\N	\N	yes	no	41.026562	21.3295834	Општина Битола;	Guesthouse	\N	7000.0	guest_house	\N	outside	1.0	Стефан Наумов-Стив	\N
92	Битола	\N	15	yes	no	41.0298294	21.3324955	Општина Битола;	Goldy Hostel Bitola	\N	7000.0	hostel	\N	separated	2.0	Славко Лумбарко	\N
93	Битола	\N	\N	yes	no	41.0276578	21.3372648	Општина Битола;	Tokin House	\N	7000.0	hotel	\N	separated	3.0	Маркс и Енгелс	www.tokin-house.com
94	Битола	\N	\N	no	no	41.0223734	21.3410777	Општина Битола;	Domestika Hostel	+38947230715	7000.0	hostel	\N	outside	3.0	Никола Тесла	http://hostel-domestika-bitola.eu/
95	Битола	\N	35	no	no	41.0256315	21.3312283	Општина Битола;	Hotel Teatar	\N	7000.0	hotel	\N	outside	3.0	Стефан Наумов-Стив	\N
96	Битола	\N	\N	yes	no	41.0157263	21.3475881	Општина Битола;	Eri corporation Bitola	\N	7000.0	apartment	\N	outside	2.0	Македонска Фаланга	\N
97	Гевгелија	\N	\N	yes	no	41.1414679	22.5042089	Општина Гевгелија;	Ашикот	\N	1480.0	hotel	\N	isolated	4.0	Гевгелиски Партизански одред	\N
98	Гевгелија	holidayhan@yahoo.com	110	yes	no	41.1405889	22.5048372	Општина Гевгелија;	Holiday Han	+38934611593	1480.0	hotel	\N	outside	4.0	Маршал Тито	http://holidayhan.com/
99	Гевгелија	\N	\N	yes	no	41.1411114	22.5038741	Општина Гевгелија;	Apollonia Hotel	\N	1480.0	hotel	\N	outside	1.0	Гевгелиски Партизански одред	\N
100	Гевгелија	\N	24	yes	no	41.1408672	22.5124945	Општина Гевгелија;	Magnolia Apartment	+38970740345	1480.0	apartment	\N	isolated	5.0	Железничка	\N
101	Гевгелија	\N	\N	yes	no	41.1464743	22.5047279	Општина Гевгелија;	Jana Apartments	\N	1480.0	guest_house	\N	outside	5.0	Булевар Гевгелија	\N
102	Гевгелија	\N	\N	yes	no	41.1357078	22.4908565	Општина Гевгелија;	Вила Катерина	\N	1480.0	guest_house	\N	outside	3.0	Моински пат	\N
103	Кавадарци	\N	\N	yes	yes	41.4440951	22.0082491	Општина Кавадарци;	Feni	\N	1430.0	hotel	\N	outside	2.0	Северен	\N
104	Кавадарци	\N	\N	yes	no	41.4397684	22.0103655	Општина Кавадарци;	UniPalas	\N	1430.0	hotel	\N	outside	3.0	Булевар Никола Минчев	\N
105	Кавадарци	\N	\N	yes	no	41.4415393	21.9977886	Општина Кавадарци;	Уни Палас 2	\N	1430.0	hotel	\N	outside	1.0	Моша Пијаде	\N
106	Куманово	\N	\N	yes	no	42.135611	21.7224017	Општина Куманово;	Apartman	078-277-048	1300.0	hotel	\N	outside	1.0	Иво Лола Рибар	https://www.pazar3.mk/mk/Listing/AdDetail/Index/1148323-LUKSUZNO-OPREMENI-STANOVI-APARTMANI
107	Куманово	\N	\N	yes	no	42.1534515	21.7301573	Општина Куманово;	Сателит	\N	1300.0	hotel	\N	separated	1.0	R2237	\N
108	Куманово	\N	\N	yes	no	42.1373916	21.7042207	Општина Куманово;	adra home	\N	1300.0	guest_house	\N	separated	1.0	Србо Томовиќ	\N
109	Куманово	adrsscreen@gmail.com	25/1-9	yes	no	42.137227	21.7043546	Општина Куманово;	adrsscreen home	+38971611422	1300.0	apartment	\N	separated	2.0	Србо Томовиќ	http://www.facebook.com
110	Куманово	\N	\N	yes	no	42.121535	21.7435248	Општина Куманово;	Kumanovo Spa	\N	1300.0	hotel	21.0	separated	2.0	Kumanovska Banja	\N
111	Охрид	\N	\N	no	no	41.1119117	20.7944769	Општина Охрид;	Вила Албина	\N	6000.0	guest_house	\N	separated	3.0	Илинденска	\N
112	Охрид	\N	\N	yes	no	41.1120923	20.8059275	Општина Охрид;	De Lux Apartments Ohrid	\N	6000.0	hotel	\N	outside	4.0	Серафим Китаноски	\N
113	Охрид	\N	\N	yes	yes	41.1056053	20.8082706	Општина Охрид;	HOTEL GARDEN	\N	6000.0	hotel	\N	outside	1.0	Кеј Македонија	\N
114	Охрид	\N	\N	no	no	41.1202504	20.7992249	Општина Охрид;	Apartmani Joce	\N	6000.0	guest_house	\N	outside	4.0	Дејан Војвода	\N
115	Охрид	\N	10	yes	no	41.1126572	20.7969076	Општина Охрид;	Вила Мал Свети Климент	+38946250655	6000.0	guest_house	\N	separated	2.0	Методи Патче	https://vilamalsvetikliment.com/
116	Охрид	\N	32	yes	no	41.114294	20.79913	Општина Охрид;	Apartments Stars	\N	6000.0	guest_house	\N	isolated	3.0	Климентов Универзитет	\N
117	Охрид	\N	\N	yes	yes	41.1129419	20.7988751	Општина Охрид;	Hostel di Angollo	\N	6000.0	hostel	\N	isolated	3.0	Цар Самоил	\N
118	Охрид	\N	\N	yes	no	41.1130555	20.8016699	Општина Охрид;	DJ Apartments	\N	6000.0	guest_house	\N	outside	2.0	Партизанска	\N
119	Охрид	\N	\N	yes	no	41.1108779	20.8038545	Општина Охрид;	Апартмани Симоноски	\N	6000.0	guest_house	\N	separated	4.0	Кеј Македонија	\N
120	Охрид	\N	\N	yes	yes	41.1121098	20.8016881	Општина Охрид;	Ривиера	\N	6000.0	hotel	\N	outside	2.0	Кузман Јосифоски-Питу	\N
121	Охрид	\N	\N	yes	no	41.1099144	20.8046742	Општина Охрид;	Сити Палас	\N	6000.0	hotel	\N	isolated	5.0	Кеј Македонија	\N
122	Охрид	\N	\N	no	no	41.1192679	20.7845353	Општина Охрид;	Мизо	\N	6000.0	hotel	\N	isolated	2.0	Васил Стефоски	\N
124	Охрид	\N	14	no	no	41.1130805	20.8121042	Општина Охрид;	House Nativa	\N	6000.0	guest_house	\N	separated	4.0	Лазо Трпоски	\N
125	Охрид	\N	96	yes	no	41.121256	20.813226	Општина Охрид;	Hostel Valentin 	\N	6000.0	hostel	\N	separated	5.0	Питу Гули	\N
126	Охрид	\N	\N	yes	no	41.1124995	20.7988026	Општина Охрид;	Villa Square Ohrid	\N	6000.0	hotel	\N	outside	5.0	Цар Самоил	\N
127	Охрид	\N	\N	yes	no	41.11257	20.7985193	Општина Охрид;	Villa Tabana	\N	6000.0	hotel	\N	outside	2.0	Цар Самоил	\N
128	Охрид	\N	\N	yes	no	41.1125176	20.7982936	Општина Охрид;	Villa Harmony	\N	6000.0	hotel	\N	outside	5.0	Цар Самоил	\N
129	Охрид	\N	\N	yes	yes	41.112593	20.798076	Општина Охрид;	Villa De Lago	\N	6000.0	hotel	\N	outside	1.0	Цар Самоил	\N
130	Охрид	\N	\N	yes	no	41.1125227	20.7978445	Општина Охрид;	Costa House	\N	6000.0	hotel	\N	separated	5.0	Цар Самоил	\N
131	Охрид	\N	\N	no	no	41.111887	20.7974658	Општина Охрид;	Вила Свети Никола	\N	6000.0	hotel	\N	separated	1.0	Коста Абраш	\N
133	Охрид	\N	34	yes	no	41.112396	20.797118	Општина Охрид;	Апартмани Марија	+38975285609	6000.0	hotel	\N	separated	2.0	Цар Самоил	\N
134	Охрид	\N	\N	yes	yes	41.1229582	20.8253145	Општина Охрид;	Doma	\N	6000.0	guest_house	\N	outside	1.0	Андреа Јовановски	\N
135	Охрид	hostelagarthaohrid@hotmail.com	39	yes	yes	41.1200679	20.8019743	Општина Охрид;	Agartha Hostel Ohrid	0038977644708	6000.0	hostel	\N	outside	2.0	Беќир Али Риза	http://www.hostelagartha.com
136	Охрид	\N	84	yes	no	41.1176909	20.8213829	Општина Охрид;	Guest House Hristiva	\N	6000.0	guest_house	\N	outside	5.0	Момчило Јорданоски	\N
137	Охрид	\N	\N	yes	no	41.1143441	20.8014261	Општина Охрид;	Ohrid City Center	\N	6000.0	apartment	\N	outside	1.0	Димитар Влахов	\N
138	Охрид	\N	\N	yes	no	41.1089237	20.8058802	Општина Охрид;	Тино	\N	6000.0	hotel	\N	separated	4.0	Спас Банџов	\N
139	Охрид	\N	3	yes	no	41.1114873	20.7939245	Општина Охрид;	Каневче	+38970424304	6000.0	guest_house	\N	isolated	4.0	Илинденска	\N
141	Охрид	\N	8	yes	no	41.119307	20.8054883	Општина Охрид;	Bitrak Guest House	\N	6000.0	guest_house	\N	outside	5.0	Беќир Али Риза	\N
142	Охрид	\N	\N	yes	no	41.1119258	20.8110564	Општина Охрид;	Вила Лука	\N	6000.0	guest_house	\N	outside	2.0	Лазо Трпоски	\N
143	Охрид	\N	\N	no	no	41.1070136	20.8152723	Општина Охрид;	Hotel International	\N	6000.0	hotel	\N	separated	4.0	R1301	\N
144	Охрид	\N	\N	yes	no	41.1131632	20.7970662	Општина Охрид;	Villa Lara	\N	6000.0	apartment	\N	outside	5.0	Климентов Универзитет	\N
145	Охрид	\N	\N	yes	no	41.1134447	20.7958948	Општина Охрид;	Villa Marto	\N	6000.0	apartment	\N	outside	2.0	Климентов Универзитет	\N
146	Охрид	\N	\N	yes	no	41.1138784	20.7980753	Општина Охрид;	Airbnb	\N	6000.0	apartment	\N	separated	3.0	11-ти Октомври	\N
147	Охрид	\N	\N	yes	no	41.1073783	20.8081499	Општина Охрид;	Hotel Villa Jordan	\N	6000.0	hotel	\N	outside	3.0	Кеј Македонија	http://villa-jordan-mk.book.direct/
148	Охрид	\N	396	no	no	41.1173197	20.8138456	Општина Охрид;	Villa Ohrid Anastasia	\N	6000.0	guest_house	\N	separated	3.0	Питу Гули	\N
149	Охрид	\N	\N	yes	no	41.1059047	20.8088539	Општина Охрид;	Апартман Николина	\N	6000.0	apartment	\N	separated	4.0	АСНОМ	\N
150	Охрид	\N	5	yes	yes	41.1124	20.7946683	Општина Охрид;	Jovanovic Guest House	\N	6000.0	guest_house	2.0	outside	2.0	Боро Шаин	\N
151	Охрид	\N	\N	yes	no	41.1128406	20.813958	Општина Охрид;	Villa Emilija	\N	6000.0	guest_house	\N	separated	3.0	Мирче Ацев	\N
152	Охрид	\N	\N	yes	no	41.0900379	20.7990804	Општина Охрид;	Hotel Park	\N	6000.0	hotel	\N	isolated	3.0	Булевар Свети Наум Охридски	\N
153	Охрид	\N	\N	no	no	41.1170005	20.8088839	Општина Охрид;	Hostel Veronika	\N	6000.0	hotel	\N	isolated	5.0	Даме Груев	\N
154	Охрид	\N	92	yes	no	41.1137277	20.7977018	Општина Охрид;	Bochar Hostel	\N	6000.0	hostel	\N	outside	3.0	Климентов Универзитет	\N
155	Охрид	\N	96	yes	yes	41.1074189	20.8079165	Општина Охрид;	Смакоски	\N	6000.0	guest_house	\N	isolated	1.0	Кеј Македонија	\N
156	Охрид	\N	\N	yes	no	41.1074146	20.8073612	Општина Охрид;	Villa Denarius	\N	6000.0	hotel	\N	isolated	1.0	Кеј Македонија	\N
157	Охрид	\N	\N	yes	no	41.1082348	20.8064785	Општина Охрид;	Жика	\N	6000.0	guest_house	\N	outside	5.0	Кеј Македонија	\N
158	Охрид	\N	\N	yes	no	41.108673	20.8092556	Општина Охрид;	Дудан	\N	6000.0	guest_house	\N	isolated	3.0	Славеј Планина	\N
159	Охрид	\N	10	yes	yes	41.1132292	20.7951271	Општина Охрид;	Apartment Ain	\N	6000.0	guest_house	\N	outside	5.0	Христо Узунов	\N
160	Охрид	\N	\N	yes	no	41.1181085	20.7997644	Општина Охрид;	Montenegrin Inn	\N	6000.0	hotel	\N	outside	4.0	Абас Емин	\N
161	Охрид	\N	99 A2	yes	no	41.1237285	20.7887576	Општина Охрид;	TA&TI	\N	6000.0	guest_house	\N	outside	1.0	Булевар Туристичка	\N
162	Охрид	\N	120a	no	no	41.1213876	20.8007499	Општина Охрид;	Вила Арсови	\N	6000.0	guest_house	\N	isolated	4.0	Дејан Војвода	\N
163	Охрид	\N	\N	no	no	41.1167879	20.7968031	Општина Охрид;	Center hostel	\N	6000.0	apartment	\N	separated	3.0	Андон Дуков	\N
164	Охрид	\N	\N	yes	no	41.1148214	20.799667	Општина Охрид;	Old Town Hostel	\N	6000.0	hostel	\N	outside	1.0	Аргир Маринчев	\N
165	Охрид	\N	\N	yes	no	41.1103782	20.8080677	Општина Охрид;	Breeze Dream Apartment	\N	6000.0	guest_house	\N	isolated	2.0	Славеј Планина	\N
166	Охрид	\N	\N	yes	no	41.1099389	20.8079597	Општина Охрид;	Breeze Dream Apartment	\N	6000.0	guest_house	\N	isolated	3.0	Славеј Планина	\N
167	Охрид	\N	54	yes	no	41.109198	20.8097851	Општина Охрид;	KARIA Apartments	+38970300188	6000.0	guest_house	\N	outside	2.0	Славеј Планина	\N
168	Охрид	\N	\N	no	no	41.1218586	20.7943777	Општина Охрид;	Hotel Flamengo	\N	6000.0	hotel	\N	outside	1.0	Булевар Туристичка	\N
169	Охрид	\N	5	yes	no	41.1191737	20.813904	Општина Охрид;	House Kostoski	\N	6000.0	apartment	\N	outside	4.0	Александар Гушо	\N
170	Охрид	\N	\N	no	no	41.1174368	20.8014938	Општина Охрид;	Sky Corner	\N	6000.0	hotel	\N	outside	1.0	Булевар Туристичка	\N
171	Охрид	\N	\N	yes	no	41.109396	20.8113131	Општина Охрид;	Art B&B	\N	6000.0	guest_house	\N	outside	5.0	Булевар Туристичка	\N
172	Охрид	\N	\N	yes	no	41.1278422	20.8029354	Општина Охрид;	Vila Lovec Ohrid	\N	6000.0	hotel	\N	outside	5.0	Железничка	\N
173	Охрид	\N	\N	yes	yes	41.1109682	20.8069062	Општина Охрид;	Bula matej	\N	6000.0	hostel	\N	separated	1.0	Јане Сандански	\N
174	Охрид	\N	\N	yes	no	41.1131079	20.8121636	Општина Охрид;	Teodora	+38970800631	6000.0	apartment	\N	separated	3.0	Ванчо Питошески	\N
175	Охрид	\N	\N	yes	no	41.1154855	20.812807	Општина Охрид;	Arena	\N	6000.0	hostel	\N	isolated	5.0	Јане Сандански	\N
176	Охрид	\N	\N	no	no	41.1114221	20.8072371	Општина Охрид;	Relax	\N	6000.0	apartment	\N	outside	5.0	Јане Сандански	\N
177	Охрид	\N	\N	yes	no	41.1122995	20.7984298	Општина Охрид;	Villa cun	\N	6000.0	hotel	\N	separated	5.0	Цар Самоил	\N
178	Охрид	\N	\N	yes	no	41.1116433	20.806372	Општина Охрид;	Laguna	+38975371647	6000.0	apartment	\N	isolated	2.0	Страшо Пинџур	\N
179	Охрид	\N	\N	no	no	41.1144885	20.7948983	Општина Охрид;	St. Dimitrij	\N	6000.0	apartment	\N	outside	5.0	Климентов Универзитет	\N
180	Охрид	\N	\N	yes	yes	41.1142862	20.7998194	Општина Охрид;	Central Palace Villa	\N	6000.0	hotel	\N	outside	5.0	Аргир Маринчев	\N
181	Охрид	\N	\N	yes	no	41.1222239	20.8091091	Општина Охрид;	Village	\N	6000.0	hotel	\N	outside	4.0	7-ми Ноември	\N
182	Охрид	\N	\N	yes	no	41.114856	20.8065821	Општина Охрид;	Boulevard	\N	6000.0	apartment	\N	outside	2.0	Булевар Туристичка	\N
183	Охрид	\N	\N	no	no	41.1070035	20.8095464	Општина Охрид;	Venco	\N	6000.0	apartment	\N	outside	5.0	Партизанска	\N
184	Охрид	\N	\N	no	no	41.107422	20.8095668	Општина Охрид;	Diplomat	\N	6000.0	hotel	\N	outside	1.0	Партизанска	\N
185	Охрид	\N	\N	yes	no	41.108265	20.8064014	Општина Охрид;	Villa maki	\N	6000.0	apartment	\N	isolated	1.0	Кеј Македонија	\N
186	Охрид	\N	\N	no	no	41.1174659	20.795174	Општина Охрид;	Sara Ga	\N	6000.0	apartment	\N	outside	3.0	Гоце Делчев	\N
187	Охрид	\N	\N	yes	no	41.108465	20.8113417	Општина Охрид;	Vila Niko	+38946260043	6000.0	hotel	\N	outside	2.0	Булевар Туристичка	\N
188	Охрид	\N	389	yes	yes	41.1250537	20.7712139	Општина Охрид;	Green Space Hotel	075344780	6000.0	hotel	\N	isolated	4.0	Гоце Делчев	\N
189	Охрид	\N	\N	no	no	41.1232873	20.8128669	Општина Охрид;	Fero metal Helios	\N	6000.0	apartment	\N	outside	5.0	Питу Гули	\N
190	Охрид	\N	\N	yes	no	41.126292	20.8056627	Општина Охрид;	Karmen Helios	\N	6000.0	apartment	\N	isolated	5.0	Железничка	\N
191	Охрид	\N	\N	yes	yes	41.1133302	20.8098928	Општина Охрид;	mravka helios	\N	6000.0	apartment	\N	isolated	1.0	Јане Сандански	\N
192	Охрид	\N	\N	yes	no	41.1137398	20.8079764	Општина Охрид;	Suna Helios	\N	6000.0	apartment	\N	separated	2.0	Караорман	\N
193	Охрид	contact@villavarosh.mk	15A	yes	no	41.1128514	20.7940292	Општина Охрид;	Villa Varosh	+38970258985	6000.0	hotel	8.0	outside	1.0	Боро Шаин	www.villavarsoh.mk
194	Охрид	\N	\N	no	no	41.1222715	20.7740558	Општина Охрид;	Далјан	\N	6000.0	hotel	\N	isolated	2.0	R1208	\N
195	Охрид	\N	\N	yes	no	41.1123019	20.798122	Општина Охрид;	Вила Коста Охрид	\N	6000.0	hotel	\N	separated	4.0	Цар Самоил	\N
196	Охрид	\N	\N	yes	no	41.084697	20.7972458	Општина Охрид;	Хотел Инекс Горица	\N	6000.0	hotel	\N	outside	4.0	Булевар Свети Наум Охридски	\N
197	Охрид	\N	\N	yes	no	41.1122203	20.7980025	Општина Охрид;	Хотел Алекандрија	\N	6000.0	hotel	\N	separated	1.0	Коста Абраш	\N
198	Охрид	\N	116e	yes	no	41.1211612	20.8009152	Општина Охрид;	Krstanoski	\N	6000.0	guest_house	\N	outside	4.0	Дејан Војвода	\N
199	Охрид	\N	\N	yes	yes	41.1160305	20.7998936	Општина Охрид;	Denicia	\N	6000.0	apartment	\N	outside	1.0	Гоце Делчев	\N
200	Охрид	\N	\N	no	no	41.1120589	20.8032726	Општина Охрид;	Grand Hotel Palace	\N	6000.0	hotel	\N	separated	2.0	Партизанска	\N
201	Охрид	\N	\N	yes	no	41.1097513	20.8050081	Општина Охрид;	Villa dea	\N	6000.0	apartment	\N	outside	2.0	Јане Сандански	\N
202	Охрид	\N	\N	yes	no	41.1152233	20.7989664	Општина Охрид;	Villa bella	\N	6000.0	hostel	\N	isolated	5.0	11-ти Октомври	http://www.villabella.com.mk
203	Охрид	\N	\N	no	no	41.1097127	20.805433	Општина Охрид;	Penelopa	\N	6000.0	apartment	\N	separated	2.0	Јане Сандански	\N
204	Охрид	97dimitrieska@gmail.com	24	yes	no	41.1123592	20.8147467	Општина Охрид;	DEMETRA Apartments	\N	6000.0	apartment	3.0	separated	4.0	Мирче Ацев	\N
205	Охрид	\N	93	yes	no	41.1077621	20.8080426	Општина Охрид;	Celus	+38970352138	6000.0	apartment	\N	outside	3.0	Кеј Македонија	\N
206	Прилеп	contact@hotelsalida.com.mk	\N	yes	no	41.3325976	21.5550545	Општина Прилеп;	Салида	+389(0)48400333	7500.0	hotel	\N	outside	2.0	Цар Самоил	https://www.hotelsalida.com.mk/
207	Прилеп	\N	15	yes	no	41.346345	21.5543245	Општина Прилеп	Атлас	+38948550700;+38948550702	7500.0	hotel	\N	separated	3.0	29. Ноември	http://www.atlasinvest.com.mk
208	Струмица	\N	\N	yes	no	41.4396276	22.6418073	Општина Струмица;	Hotel Tiveriopol	\N	2400.0	hotel	\N	outside	4.0	Братство и Единство	\N
209	Струмица	\N	\N	yes	no	41.436015	22.6431437	Општина Струмица;	Хотел Илинден	\N	2400.0	hotel	\N	separated	1.0	Гоце Делчев	\N
210	Струмица	\N	\N	yes	no	41.4368416	22.6379904	Општина Струмица;	Хотел Централ	\N	2400.0	hotel	\N	outside	4.0	Улица Маршал Тито	\N
211	Струмица	\N	\N	yes	no	41.4417498	22.6379903	Општина Струмица;	golf kurcenje	\N	2400.0	apartment	\N	outside	3.0	24 Октомври	\N
212	Струмица	\N	\N	yes	no	41.4512932	22.6471258	Општина Струмица;	Hotel Eterno	\N	2400.0	hotel	\N	separated	1.0	Leninova	\N
213	Тетово	\N	\N	no	no	41.9939913	21.0276195	Општина Тетово;	Петрол Компани	+38944378100	1200.0	hotel	\N	outside	4.0	Мајка Тереза	\N
214	Тетово	\N	\N	yes	no	42.0078524	20.9793686	Општина Тетово;	Dare promet Helios	\N	1200.0	apartment	\N	outside	1.0	120	\N
215	Тетово	\N	\N	yes	no	42.005877	20.9692186	Општина Тетово;	Aka Boja Helios	\N	1200.0	apartment	\N	outside	1.0	Ѓ. Стојчески	\N
216	Тетово	\N	\N	yes	no	42.0117514	20.9698559	Општина Тетово;	Standox 2000 Helios	\N	1200.0	apartment	\N	outside	3.0	Кузман Јосифовски Питу	\N
217	Тетово	\N	\N	no	no	42.0101572	20.9617237	Општина Тетово;	tepisoni	\N	1200.0	apartment	\N	separated	1.0	Питу Гули	\N
218	Струга	\N	Kej 8-mi noemvri	yes	no	41.1781482	20.6785228	Општина Струга;	Хотел Београд	\N	6330.0	hotel	\N	outside	3.0	8. Ноември	\N
219	Струга	\N	\N	yes	no	41.178763	20.6791191	Општина Струга;	Vila Perla	\N	6330.0	hotel	\N	separated	3.0	8. Ноември	\N
220	Струга	\N	\N	yes	no	41.179539	20.6790775	Општина Струга;	Hotel Arti	\N	6330.0	hotel	\N	outside	2.0	Амвроси Пантеќи	\N
221	Струга	\N	\N	yes	yes	41.1789398	20.6781683	Општина Струга;	Jovanoski Apartments	\N	6330.0	guest_house	\N	outside	3.0	8. Ноември	\N
222	Струга	\N	\N	yes	no	41.1746819	20.6721254	Општина Струга;	Marko apartments	\N	6330.0	apartment	\N	separated	2.0	Вељко Влаховиќ	\N
223	Струга	\N	\N	yes	no	41.1789002	20.6781903	Општина Струга;	jovanoski apartment	\N	6330.0	apartment	\N	outside	3.0	8. Ноември	\N
224	Струга	\N	\N	yes	no	41.1741883	20.6712235	Општина Струга;	EXCLUSIVE Apartments Struga	\N	6330.0	apartment	\N	outside	5.0	Вељко Влаховиќ	\N
225	Струга	\N	\N	yes	yes	41.1775853	20.675587	Општина Струга;	Freya	\N	6330.0	hotel	\N	isolated	4.0	Маршал Тито	\N
226	Струга	\N	\N	no	no	41.1774983	20.6768676	Општина Струга;	Villa Albi	\N	6330.0	apartment	\N	isolated	2.0	Маршал Тито	\N
69	Скопје	\N	\N	yes	no	41.9928201	21.430246	Општина Центар;	Skopje Deluxe Apartments	\N	1111.0	apartment	\N	separated	3.0	Македонија	\N
\.


--
-- TOC entry 3329 (class 0 OID 16793)
-- Dependencies: 215
-- Data for Name: user_accounts; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.user_accounts (username, name, password, surname) FROM stdin;
kiril.kovacheski	Kiril	kiril	Kovacheski
user	user	user	user
test	test	$2a$10$qtZKD32VpnwDV.3sDyBO..UX8Dth/PsHyMIgkRdFlwVCU8tj0BirG	test
\.


--
-- TOC entry 3330 (class 0 OID 16800)
-- Dependencies: 216
-- Data for Name: user_accounts_accommodations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.user_accounts_accommodations (user_username, accommodations_id) FROM stdin;
test	2
test	1
test	0
kiril.kovacheski	1
kiril.kovacheski	3
kiril.kovacheski	2
kiril.kovacheski	23
kiril.kovacheski	24
kiril.kovacheski	28
kiril.kovacheski	29
user	113
\.


--
-- TOC entry 3181 (class 2606 OID 16792)
-- Name: accommodation accommodation_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.accommodation
    ADD CONSTRAINT accommodation_pkey PRIMARY KEY (id);


--
-- TOC entry 3183 (class 2606 OID 16799)
-- Name: user_accounts user_accounts_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_accounts
    ADD CONSTRAINT user_accounts_pkey PRIMARY KEY (username);


--
-- TOC entry 3184 (class 2606 OID 16808)
-- Name: user_accounts_accommodations fkb0rnbc01bfr7bukud9khs992y; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_accounts_accommodations
    ADD CONSTRAINT fkb0rnbc01bfr7bukud9khs992y FOREIGN KEY (user_username) REFERENCES public.user_accounts(username);


--
-- TOC entry 3185 (class 2606 OID 16803)
-- Name: user_accounts_accommodations fksdygm309hulbxda2h3jlkr92a; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_accounts_accommodations
    ADD CONSTRAINT fksdygm309hulbxda2h3jlkr92a FOREIGN KEY (accommodations_id) REFERENCES public.accommodation(id);


-- Completed on 2023-01-30 18:12:35

--
-- PostgreSQL database dump complete
--

