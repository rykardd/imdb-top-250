--
-- PostgreSQL database dump
--

\restrict WldqP7elfpt45S2ipPhkur0WxGoravjpdDvzJJwslh2Rcuv5hWKcpI4EPTKp1K9

-- Dumped from database version 17.6
-- Dumped by pg_dump version 17.6

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
-- Name: hstore; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS hstore WITH SCHEMA public;


--
-- Name: EXTENSION hstore; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION hstore IS 'data type for storing sets of (key, value) pairs';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: imdb_250; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.imdb_250 (
    rank integer,
    name character varying(128),
    year integer,
    rating numeric(3,1),
    genre character varying(50),
    directors character varying(70),
    writers character varying(84)
);


ALTER TABLE public.imdb_250 OWNER TO postgres;

--
-- Name: masters; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.masters (
    master_id integer NOT NULL,
    master_name character varying(50),
    master_password character varying(50)
);


ALTER TABLE public.masters OWNER TO postgres;

--
-- Name: masters_master_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.masters_master_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.masters_master_id_seq OWNER TO postgres;

--
-- Name: masters_master_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.masters_master_id_seq OWNED BY public.masters.master_id;


--
-- Name: masters master_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.masters ALTER COLUMN master_id SET DEFAULT nextval('public.masters_master_id_seq'::regclass);


--
-- Data for Name: imdb_250; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.imdb_250 (rank, name, year, rating, genre, directors, writers) FROM stdin;
1	The Shawshank Redemption	1994	9.3	Drama	Frank Darabont	Stephen King,Frank Darabont
2	The Godfather	1972	9.2	Crime,Drama	Francis Ford Coppola	Mario Puzo,Francis Ford Coppola
3	The Dark Knight	2008	9.0	Action,Crime,Drama	Christopher Nolan	Jonathan Nolan,Christopher Nolan,David S. Goyer
4	The Godfather Part II	1974	9.0	Crime,Drama	Francis Ford Coppola	Francis Ford Coppola,Mario Puzo
5	12 Angry Men	1957	9.0	Crime,Drama	Sidney Lumet	Reginald Rose
6	Schindler's List	1993	9.0	Biography,Drama,History	Steven Spielberg	Thomas Keneally,Steven Zaillian
7	The Lord of the Rings: The Return of the King	2003	9.0	Action,Adventure,Drama	Peter Jackson	J.R.R. Tolkien,Fran Walsh,Philippa Boyens
8	Pulp Fiction	1994	8.9	Crime,Drama	Quentin Tarantino	Quentin Tarantino,Roger Avary
9	The Lord of the Rings: The Fellowship of the Ring	2001	8.8	Action,Adventure,Drama	Peter Jackson	J.R.R. Tolkien,Fran Walsh,Philippa Boyens
10	The Good, the Bad and the Ugly	1966	8.8	Adventure,Western	Sergio Leone	Luciano Vincenzoni,Sergio Leone,Agenore Incrocci
11	Forrest Gump	1994	8.8	Drama,Romance	Robert Zemeckis	Winston Groom,Eric Roth
12	Fight Club	1999	8.8	Drama	David Fincher	Chuck Palahniuk,Jim Uhls
13	The Lord of the Rings: The Two Towers	2002	8.8	Action,Adventure,Drama	Peter Jackson	J.R.R. Tolkien,Fran Walsh,Philippa Boyens
14	Inception	2010	8.8	Action,Adventure,Sci-Fi	Christopher Nolan	Christopher Nolan
15	Star Wars: Episode V - The Empire Strikes Back	1980	8.7	Action,Adventure,Fantasy	Irvin Kershner	Leigh Brackett,Lawrence Kasdan,George Lucas
16	The Matrix	1999	8.7	Action,Sci-Fi	Lana Wachowski,Lilly Wachowski	Lilly Wachowski,Lana Wachowski
17	Goodfellas	1990	8.7	Biography,Crime,Drama	Martin Scorsese	Nicholas Pileggi,Martin Scorsese
18	One Flew Over the Cuckoo's Nest	1975	8.7	Drama	Milos Forman	Lawrence Hauben,Bo Goldman,Ken Kesey
19	Se7en	1995	8.6	Crime,Drama,Mystery	David Fincher	Andrew Kevin Walker
20	Seven Samurai	1954	8.6	Action,Drama	Akira Kurosawa	Akira Kurosawa,Shinobu Hashimoto,Hideo Oguni
21	It's a Wonderful Life	1946	8.6	Drama,Family,Fantasy	Frank Capra	Frances Goodrich,Albert Hackett,Frank Capra
22	The Silence of the Lambs	1991	8.6	Crime,Drama,Thriller	Jonathan Demme	Thomas Harris,Ted Tally
23	City of God	2002	8.6	Crime,Drama	Fernando Meirelles,Kátia Lund(co-director)	Paulo Lins,Bráulio Mantovani
24	Saving Private Ryan	1998	8.6	Drama,War	Steven Spielberg	Robert Rodat
25	Interstellar	2014	8.6	Adventure,Drama,Sci-Fi	Christopher Nolan	Jonathan Nolan,Christopher Nolan
26	Life Is Beautiful	1997	8.6	Comedy,Drama,Romance	Roberto Benigni	Vincenzo Cerami,Roberto Benigni
27	The Green Mile	1999	8.6	Crime,Drama,Fantasy	Frank Darabont	Stephen King,Frank Darabont
28	Star Wars: Episode IV - A New Hope	1977	8.6	Action,Adventure,Fantasy	George Lucas	George Lucas
29	Terminator 2: Judgment Day	1991	8.6	Action,Sci-Fi	James Cameron	James Cameron,William Wisher
30	Back to the Future	1985	8.5	Adventure,Comedy,Sci-Fi	Robert Zemeckis	Robert Zemeckis,Bob Gale
31	Spirited Away	2001	8.6	Animation,Adventure,Family	Hayao Miyazaki	Hayao Miyazaki
32	The Pianist	2002	8.5	Biography,Drama,Music	Roman Polanski	Ronald Harwood,Wladyslaw Szpilman
33	Psycho	1960	8.5	Horror,Mystery,Thriller	Alfred Hitchcock	Joseph Stefano,Robert Bloch
34	Parasite	2019	8.5	Drama,Thriller	Bong Joon Ho	Bong Joon Ho,Han Jin-won
35	Léon: The Professional	1994	8.5	Action,Crime,Drama	Luc Besson	Luc Besson
36	The Lion King	1994	8.5	Animation,Adventure,Drama	Roger Allers,Rob Minkoff	Irene Mecchi,Jonathan Roberts,Linda Woolverton
37	Gladiator	2000	8.5	Action,Adventure,Drama	Ridley Scott	David Franzoni,John Logan,William Nicholson
38	American History X	1998	8.5	Crime,Drama	Tony Kaye	David McKenna
39	The Departed	2006	8.5	Crime,Drama,Thriller	Martin Scorsese	William Monahan,Alan Mak,Felix Chong
40	The Usual Suspects	1995	8.5	Crime,Drama,Mystery	Bryan Singer	Christopher McQuarrie
41	The Prestige	2006	8.5	Drama,Mystery,Sci-Fi	Christopher Nolan	Jonathan Nolan,Christopher Nolan,Christopher Priest
42	Whiplash	2014	8.5	Drama,Music	Damien Chazelle	Damien Chazelle
43	Casablanca	1942	8.5	Drama,Romance,War	Michael Curtiz	Julius J. Epstein,Philip G. Epstein,Howard Koch
44	Grave of the Fireflies	1988	8.5	Animation,Drama,War	Isao Takahata	Akiyuki Nosaka,Isao Takahata
45	Harakiri	1962	8.6	Action,Drama,Mystery	Masaki Kobayashi	Yasuhiko Takiguchi,Shinobu Hashimoto
46	The Intouchables	2011	8.5	Biography,Comedy,Drama	Olivier Nakache,Éric Toledano	Olivier Nakache,Éric Toledano,Philippe Pozzo di Borgo
47	Modern Times	1936	8.5	Comedy,Drama,Romance	Charles Chaplin	Charles Chaplin
48	Once Upon a Time in the West	1968	8.5	Western	Sergio Leone	Sergio Donati,Sergio Leone,Dario Argento
49	Rear Window	1954	8.5	Mystery,Thriller	Alfred Hitchcock	John Michael Hayes,Cornell Woolrich
50	Cinema Paradiso	1988	8.5	Drama,Romance	Giuseppe Tornatore	Giuseppe Tornatore,Vanna Paoli
51	Alien	1979	8.5	Horror,Sci-Fi	Ridley Scott	Dan O'Bannon,Ronald Shusett
52	City Lights	1931	8.5	Comedy,Drama,Romance	Charles Chaplin	Charles Chaplin,Harry Carr,Harry Crocker
53	Apocalypse Now	1979	8.5	Drama,Mystery,War	Francis Ford Coppola	John Milius,Francis Ford Coppola,Michael Herr
54	Memento	2000	8.4	Mystery,Thriller	Christopher Nolan	Christopher Nolan,Jonathan Nolan
55	Django Unchained	2012	8.4	Drama,Western	Quentin Tarantino	Quentin Tarantino
56	Indiana Jones and the Raiders of the Lost Ark	1981	8.4	Action,Adventure	Steven Spielberg	Lawrence Kasdan,George Lucas,Philip Kaufman
57	WALL·E	2008	8.4	Animation,Adventure,Family	Andrew Stanton	Andrew Stanton,Pete Docter,Jim Reardon
58	The Lives of Others	2006	8.4	Drama,Mystery,Thriller	Florian Henckel von Donnersmarck	Florian Henckel von Donnersmarck
59	Sunset Blvd.	1950	8.4	Drama,Film-Noir	Billy Wilder	Charles Brackett,Billy Wilder,D.M. Marshman Jr.
60	Paths of Glory	1957	8.4	Drama,War	Stanley Kubrick	Stanley Kubrick,Calder Willingham,Jim Thompson
61	The Shining	1980	8.4	Drama,Horror	Stanley Kubrick	Stephen King,Stanley Kubrick,Diane Johnson
62	The Great Dictator	1940	8.4	Comedy,Drama,War	Charles Chaplin	Charles Chaplin
63	Avengers: Infinity War	2018	8.4	Action,Adventure,Sci-Fi	Anthony Russo,Joe Russo	Christopher Markus,Stephen McFeely,Stan Lee
64	Witness for the Prosecution	1957	8.4	Crime,Drama,Mystery	Billy Wilder	Agatha Christie,Billy Wilder,Harry Kurnitz
65	Aliens	1986	8.4	Action,Adventure,Sci-Fi	James Cameron	James Cameron,David Giler,Walter Hill
66	Spider-Man: Into the Spider-Verse	2018	8.4	Animation,Action,Adventure	Bob Persichetti,Peter Ramsey,Rodney Rothman	Phil Lord,Rodney Rothman
67	American Beauty	1999	8.4	Drama	Sam Mendes	Alan Ball
68	Dr. Strangelove or: How I Learned to Stop Worrying and Love the Bomb	1964	8.4	Comedy,War	Stanley Kubrick	Stanley Kubrick,Terry Southern,Peter George
69	The Dark Knight Rises	2012	8.4	Action,Drama	Christopher Nolan	Jonathan Nolan,Christopher Nolan,David S. Goyer
70	Oldboy	2003	8.4	Action,Drama,Mystery	Park Chan-wook	Garon Tsuchiya,Nobuaki Minegishi,Park Chan-wook
71	Inglourious Basterds	2009	8.3	Adventure,Drama,War	Quentin Tarantino	Quentin Tarantino
72	Amadeus	1984	8.4	Biography,Drama,Music	Milos Forman	Peter Shaffer,Zdenek Mahler
73	Coco	2017	8.4	Animation,Adventure,Comedy	Lee Unkrich,Adrian Molina(co-directed by)	Lee Unkrich,Jason Katz,Matthew Aldrich
74	Toy Story	1995	8.3	Animation,Adventure,Comedy	John Lasseter	John Lasseter,Pete Docter,Andrew Stanton
75	Joker	2019	8.4	Crime,Drama,Thriller	Todd Phillips	Todd Phillips,Scott Silver,Bob Kane
76	Braveheart	1995	8.4	Biography,Drama,History	Mel Gibson	Randall Wallace
77	The Boat	1981	8.4	Drama,War	Wolfgang Petersen	Wolfgang Petersen,Lothar G. Buchheim
78	Avengers: Endgame	2019	8.4	Action,Adventure,Drama	Anthony Russo,Joe Russo	Christopher Markus,Stephen McFeely,Stan Lee
79	Princess Mononoke	1997	8.4	Animation,Action,Adventure	Hayao Miyazaki	Hayao Miyazaki,Neil Gaiman
80	Once Upon a Time in America	1984	8.3	Crime,Drama	Sergio Leone	Harry Grey,Leonardo Benvenuti,Piero De Bernardi
81	Good Will Hunting	1997	8.3	Drama,Romance	Gus Van Sant	Matt Damon,Ben Affleck
82	Your Name.	2016	8.4	Animation,Drama,Fantasy	Makoto Shinkai	Makoto Shinkai,Clark Cheng
83	3 Idiots	2009	8.4	Comedy,Drama	Rajkumar Hirani	Rajkumar Hirani,Abhijat Joshi,Vidhu Vinod Chopra
84	Singin' in the Rain	1952	8.3	Comedy,Musical,Romance	Stanley Donen,Gene Kelly	Betty Comden,Adolph Green
85	Requiem for a Dream	2000	8.3	Drama	Darren Aronofsky	Hubert Selby Jr.,Darren Aronofsky
86	Toy Story 3	2010	8.3	Animation,Adventure,Comedy	Lee Unkrich	John Lasseter,Andrew Stanton,Lee Unkrich
87	High and Low	1963	8.4	Crime,Drama,Mystery	Akira Kurosawa	Hideo Oguni,Ryûzô Kikushima,Eijirô Hisaita
88	Capernaum	2018	8.4	Drama	Nadine Labaki	Nadine Labaki,Jihad Hojeily,Michelle Keserwany
89	Star Wars: Episode VI - Return of the Jedi	1983	8.3	Action,Adventure,Fantasy	Richard Marquand	Lawrence Kasdan,George Lucas
90	Eternal Sunshine of the Spotless Mind	2004	8.3	Drama,Romance,Sci-Fi	Michel Gondry	Charlie Kaufman,Michel Gondry,Pierre Bismuth
91	2001: A Space Odyssey	1968	8.3	Adventure,Sci-Fi	Stanley Kubrick	Stanley Kubrick,Arthur C. Clarke
92	Reservoir Dogs	1992	8.3	Crime,Thriller	Quentin Tarantino	Quentin Tarantino,Roger Avary
93	Come and See	1985	8.4	Drama,Thriller,War	Elem Klimov	Ales Adamovich,Elem Klimov
94	The Hunt	2012	8.3	Drama	Thomas Vinterberg	Thomas Vinterberg,Tobias Lindholm
95	Citizen Kane	1941	8.3	Drama,Mystery	Orson Welles	Herman J. Mankiewicz,Orson Welles,John Houseman
96	M	1931	8.3	Crime,Mystery,Thriller	Fritz Lang	Thea von Harbou,Fritz Lang,Egon Jacobsohn
97	Lawrence of Arabia	1962	8.3	Adventure,Biography,Drama	David Lean	Robert Bolt,Michael Wilson
98	North by Northwest	1959	8.3	Action,Adventure,Mystery	Alfred Hitchcock	Ernest Lehman
99	Vertigo	1958	8.3	Mystery,Romance,Thriller	Alfred Hitchcock	Alec Coppel,Samuel A. Taylor,Pierre Boileau
100	Ikiru	1952	8.3	Drama	Akira Kurosawa	Akira Kurosawa,Shinobu Hashimoto,Hideo Oguni
101	Amélie	2001	8.3	Comedy,Romance	Jean-Pierre Jeunet	Guillaume Laurant,Jean-Pierre Jeunet
102	The Apartment	1960	8.3	Comedy,Drama,Romance	Billy Wilder	Billy Wilder,I.A.L. Diamond
103	A Clockwork Orange	1971	8.3	Crime,Sci-Fi	Stanley Kubrick	Stanley Kubrick,Anthony Burgess
104	Double Indemnity	1944	8.3	Crime,Drama,Film-Noir	Billy Wilder	Billy Wilder,Raymond Chandler,James M. Cain
105	Full Metal Jacket	1987	8.3	Drama,War	Stanley Kubrick	Stanley Kubrick,Michael Herr,Gustav Hasford
106	Top Gun: Maverick	2022	8.3	Action,Drama	Joseph Kosinski	Jim Cash,Jack Epps Jr.,Peter Craig
107	Scarface	1983	8.3	Crime,Drama	Brian De Palma	Oliver Stone,Howard Hawks,Ben Hecht
108	Hamilton	2020	8.4	Biography,Drama,History	Thomas Kail	Lin-Manuel Miranda,Ron Chernow
109	Incendies	2010	8.3	Drama,Mystery	Denis Villeneuve	Denis Villeneuve,Wajdi Mouawad,Valérie Beaugrand-Champagne
110	To Kill a Mockingbird	1962	8.3	Crime,Drama	Robert Mulligan	Harper Lee,Horton Foote
111	Heat	1995	8.3	Action,Crime,Drama	Michael Mann	Michael Mann
112	The Sting	1973	8.3	Comedy,Crime,Drama	George Roy Hill	David S. Ward
113	Up	2009	8.3	Animation,Adventure,Comedy	Pete Docter,Bob Peterson(co-director)	Pete Docter,Bob Peterson,Tom McCarthy
114	A Separation	2011	8.3	Drama	Asghar Farhadi	Asghar Farhadi
115	Metropolis	1927	8.3	Drama,Sci-Fi	Fritz Lang	Thea von Harbou,Fritz Lang
116	Taxi Driver	1976	8.2	Crime,Drama	Martin Scorsese	Paul Schrader
117	L.A. Confidential	1997	8.2	Crime,Drama,Mystery	Curtis Hanson	James Ellroy,Brian Helgeland,Curtis Hanson
118	Die Hard	1988	8.2	Action,Thriller	John McTiernan	Roderick Thorp,Jeb Stuart,Steven E. de Souza
119	Snatch	2000	8.2	Comedy,Crime	Guy Ritchie	Guy Ritchie
120	Indiana Jones and the Last Crusade	1989	8.2	Action,Adventure	Steven Spielberg	Jeffrey Boam,George Lucas,Menno Meyjes
121	Bicycle Thieves	1948	8.3	Drama	Vittorio De Sica	Cesare Zavattini,Luigi Bartolini,Oreste Biancoli
122	Like Stars on Earth	2007	8.3	Drama,Family	Aamir Khan,Amole Gupte(uncredited)	Amole Gupte
123	1917	2019	8.2	Action,Drama,War	Sam Mendes	Sam Mendes,Krysty Wilson-Cairns
124	Downfall	2004	8.2	Biography,Drama,History	Oliver Hirschbiegel	Bernd Eichinger,Joachim Fest,Traudl Junge
125	Dangal	2016	8.3	Action,Biography,Drama	Nitesh Tiwari	Piyush Gupta,Shreyas Jain,Nikhil Mehrotra
126	For a Few Dollars More	1965	8.2	Western	Sergio Leone	Sergio Leone,Fulvio Morsella,Luciano Vincenzoni
127	Batman Begins	2005	8.2	Action,Crime,Drama	Christopher Nolan	Bob Kane,David S. Goyer,Christopher Nolan
128	The Kid	1921	8.3	Comedy,Drama,Family	Charles Chaplin	Charles Chaplin
129	Some Like It Hot	1959	8.2	Comedy,Music,Romance	Billy Wilder	Billy Wilder,I.A.L. Diamond,Robert Thoeren
130	The Father	2020	8.2	Drama,Mystery	Florian Zeller	Christopher Hampton,Florian Zeller
131	All About Eve	1950	8.2	Drama	Joseph L. Mankiewicz	Joseph L. Mankiewicz,Mary Orr
132	The Wolf of Wall Street	2013	8.2	Biography,Comedy,Crime	Martin Scorsese	Terence Winter,Jordan Belfort
133	Green Book	2018	8.2	Biography,Comedy,Drama	Peter Farrelly	Nick Vallelonga,Brian Hayes Currie,Peter Farrelly
134	Judgment at Nuremberg	1961	8.3	Drama,War	Stanley Kramer	Abby Mann,Montgomery Clift
135	Casino	1995	8.2	Crime,Drama	Martin Scorsese	Nicholas Pileggi,Martin Scorsese
136	Ran	1985	8.2	Action,Drama,War	Akira Kurosawa	Akira Kurosawa,Hideo Oguni,Masato Ide
137	Pan's Labyrinth	2006	8.2	Drama,Fantasy,War	Guillermo del Toro	Guillermo del Toro
138	The Truman Show	1998	8.2	Comedy,Drama	Peter Weir	Andrew Niccol
139	There Will Be Blood	2007	8.2	Drama	Paul Thomas Anderson	Paul Thomas Anderson,Upton Sinclair
140	Unforgiven	1992	8.2	Drama,Western	Clint Eastwood	David Webb Peoples
141	The Sixth Sense	1999	8.2	Drama,Mystery,Thriller	M. Night Shyamalan	M. Night Shyamalan
142	Shutter Island	2010	8.2	Mystery,Thriller	Martin Scorsese	Laeta Kalogridis,Dennis Lehane
143	A Beautiful Mind	2001	8.2	Biography,Drama	Ron Howard	Akiva Goldsman,Sylvia Nasar
144	Jurassic Park	1993	8.2	Action,Adventure,Sci-Fi	Steven Spielberg	Michael Crichton,David Koepp
145	Yojimbo	1961	8.2	Action,Drama,Thriller	Akira Kurosawa	Akira Kurosawa,Ryûzô Kikushima
146	The Treasure of the Sierra Madre	1948	8.2	Adventure,Drama,Western	John Huston	John Huston,B. Traven
147	Monty Python and the Holy Grail	1975	8.2	Adventure,Comedy,Fantasy	Terry Gilliam,Terry Jones	Graham Chapman,John Cleese,Eric Idle
148	The Great Escape	1963	8.2	Adventure,Drama,History	John Sturges	Paul Brickhill,James Clavell,W.R. Burnett
149	No Country for Old Men	2007	8.2	Crime,Drama,Thriller	Ethan Coen,Joel Coen	Joel Coen,Ethan Coen,Cormac McCarthy
150	Spider-Man: No Way Home	2021	8.2	Action,Adventure,Fantasy	Jon Watts	Chris McKenna,Erik Sommers,Stan Lee
151	Kill Bill: Vol. 1	2003	8.2	Action,Crime,Drama	Quentin Tarantino	Quentin Tarantino,Uma Thurman
152	Rashomon	1950	8.2	Crime,Drama,Mystery	Akira Kurosawa	Ryûnosuke Akutagawa,Akira Kurosawa,Shinobu Hashimoto
153	The Thing	1982	8.2	Horror,Mystery,Sci-Fi	John Carpenter	Bill Lancaster,John W. Campbell Jr.
154	Finding Nemo	2003	8.2	Animation,Adventure,Comedy	Andrew Stanton,Lee Unkrich(co-director)	Andrew Stanton,Bob Peterson,David Reynolds
155	The Elephant Man	1980	8.2	Biography,Drama	David Lynch	Christopher De Vore,Eric Bergren,David Lynch
156	Chinatown	1974	8.2	Drama,Mystery,Thriller	Roman Polanski	Robert Towne,Roman Polanski
157	Raging Bull	1980	8.2	Biography,Drama,Sport	Martin Scorsese	Jake LaMotta,Joseph Carter,Peter Savage
158	V for Vendetta	2005	8.2	Action,Drama,Sci-Fi	James McTeigue	Lilly Wachowski,Lana Wachowski,David Lloyd
159	Gone with the Wind	1939	8.2	Drama,Romance,War	Victor Fleming,George Cukor(uncredited),Sam Wood(uncredited)	Margaret Mitchell,Sidney Howard,Oliver H.P. Garrett
160	Lock, Stock and Two Smoking Barrels	1998	8.2	Action,Comedy,Crime	Guy Ritchie	Guy Ritchie
161	Inside Out	2015	8.2	Animation,Adventure,Comedy	Pete Docter,Ronnie Del Carmen(co-director)	Pete Docter,Ronnie Del Carmen,Meg LeFauve
162	Dial M for Murder	1954	8.2	Crime,Thriller	Alfred Hitchcock	Frederick Knott
163	The Secret in Their Eyes	2009	8.2	Drama,Mystery,Romance	Juan José Campanella	Eduardo Sacheri,Juan José Campanella
164	Howl's Moving Castle	2004	8.2	Animation,Adventure,Family	Hayao Miyazaki	Hayao Miyazaki,Diana Wynne Jones
165	Three Billboards Outside Ebbing, Missouri	2017	8.1	Comedy,Crime,Drama	Martin McDonagh	Martin McDonagh
166	The Bridge on the River Kwai	1957	8.2	Adventure,Drama,War	David Lean	Pierre Boulle,Carl Foreman,Michael Wilson
167	Trainspotting	1996	8.1	Drama	Danny Boyle	Irvine Welsh,John Hodge
168	Prisoners	2013	8.1	Crime,Drama,Mystery	Denis Villeneuve	Aaron Guzikowski
169	Warrior	2011	8.2	Action,Drama,Sport	Gavin O'Connor	Gavin O'Connor,Anthony Tambakis,Cliff Dorfman
170	Fargo	1996	8.1	Crime,Thriller	Joel Coen,Ethan Coen(uncredited)	Ethan Coen,Joel Coen
171	Gran Torino	2008	8.1	Drama	Clint Eastwood	Nick Schenk,Dave Johannson
172	My Neighbor Totoro	1988	8.1	Animation,Comedy,Family	Hayao Miyazaki	Hayao Miyazaki
173	Catch Me If You Can	2002	8.1	Biography,Crime,Drama	Steven Spielberg	Jeff Nathanson,Frank Abagnale Jr.,Stan Redding
174	Million Dollar Baby	2004	8.1	Drama,Sport	Clint Eastwood	Paul Haggis,F.X. Toole
175	Children of Heaven	1997	8.2	Drama,Family,Sport	Majid Majidi	Majid Majidi
176	Blade Runner	1982	8.1	Action,Drama,Sci-Fi	Ridley Scott	Hampton Fancher,David Webb Peoples,Philip K. Dick
177	The Gold Rush	1925	8.1	Adventure,Comedy,Drama	Charles Chaplin	Charles Chaplin
178	Before Sunrise	1995	8.1	Drama,Romance	Richard Linklater	Richard Linklater,Kim Krizan
179	12 Years a Slave	2013	8.1	Biography,Drama,History	Steve McQueen	John Ridley,Solomon Northup
180	Klaus	2019	8.2	Animation,Adventure,Comedy	Sergio Pablos,Carlos Martínez López(co-director)	Sergio Pablos,Jim Mahoney,Zach Lewis
181	Harry Potter and the Deathly Hallows: Part 2	2011	8.1	Adventure,Family,Fantasy	David Yates	Steve Kloves,J.K. Rowling
182	On the Waterfront	1954	8.1	Crime,Drama,Thriller	Elia Kazan	Budd Schulberg,Malcolm Johnson,Robert Siodmak
183	Ben-Hur	1959	8.1	Adventure,Drama	William Wyler	Lew Wallace,Karl Tunberg,Gore Vidal
184	Gone Girl	2014	8.1	Drama,Mystery,Thriller	David Fincher	Gillian Flynn
185	The Grand Budapest Hotel	2014	8.1	Adventure,Comedy,Crime	Wes Anderson	Stefan Zweig,Wes Anderson,Hugo Guinness
186	Wild Strawberries	1957	8.1	Drama,Romance	Ingmar Bergman	Ingmar Bergman
187	The General	1926	8.1	Action,Adventure,Comedy	Clyde Bruckman,Buster Keaton	Buster Keaton,Clyde Bruckman,Al Boasberg
188	The Third Man	1949	8.1	Film-Noir,Mystery,Thriller	Carol Reed	Graham Greene,Orson Welles,Alexander Korda
189	In the Name of the Father	1993	8.1	Biography,Crime,Drama	Jim Sheridan	Gerry Conlon,Terry George,Jim Sheridan
190	The Deer Hunter	1978	8.1	Drama,War	Michael Cimino	Michael Cimino,Deric Washburn,Louis Garfinkle
191	Barry Lyndon	1975	8.1	Adventure,Drama,War	Stanley Kubrick	Stanley Kubrick,William Makepeace Thackeray
192	Hacksaw Ridge	2016	8.1	Biography,Drama,History	Mel Gibson	Robert Schenkkan,Andrew Knight
193	The Wages of Fear	1953	8.2	Adventure,Drama,Thriller	Henri-Georges Clouzot	Georges Arnaud,Henri-Georges Clouzot,Jérôme Géronimi
194	Memories of Murder	2003	8.1	Crime,Drama,Mystery	Bong Joon Ho	Bong Joon Ho,Kwang-rim Kim,Sung-bo Shim
195	Sherlock Jr.	1924	8.2	Action,Comedy,Romance	Buster Keaton	Jean C. Havez,Joseph A. Mitchell,Clyde Bruckman
196	Wild Tales	2014	8.1	Comedy,Drama,Thriller	Damián Szifron	Germán Servidio,Damián Szifron
197	Mr. Smith Goes to Washington	1939	8.1	Comedy,Drama	Frank Capra	Sidney Buchman,Lewis R. Foster,Myles Connolly
198	Mad Max: Fury Road	2015	8.1	Action,Adventure,Sci-Fi	George Miller	George Miller,Brendan McCarthy,Nick Lathouris
199	The Seventh Seal	1957	8.1	Drama,Fantasy	Ingmar Bergman	Ingmar Bergman
200	Mary and Max	2009	8.1	Animation,Comedy,Drama	Adam Elliot	Adam Elliot
201	How to Train Your Dragon	2010	8.1	Animation,Action,Adventure	Dean DeBlois,Chris Sanders	Will Davies,Dean DeBlois,Chris Sanders
202	Room	2015	8.1	Drama,Thriller	Lenny Abrahamson	Emma Donoghue
203	Monsters, Inc.	2001	8.1	Animation,Adventure,Comedy	Pete Docter,David Silverman(co-director),Lee Unkrich(co-director)	Pete Docter,Jill Culton,Jeff Pidgeon
204	Jaws	1975	8.1	Adventure,Thriller	Steven Spielberg	Peter Benchley,Carl Gottlieb
205	Dead Poets Society	1989	8.1	Comedy,Drama	Peter Weir	Tom Schulman
206	The Big Lebowski	1998	8.1	Comedy,Crime	Joel Coen,Ethan Coen(uncredited)	Ethan Coen,Joel Coen
207	Tokyo Story	1953	8.2	Drama	Yasujirô Ozu	Kôgo Noda,Yasujirô Ozu
208	The Passion of Joan of Arc	1928	8.2	Biography,Drama,History	Carl Theodor Dreyer	Joseph Delteil,Carl Theodor Dreyer
209	Hotel Rwanda	2004	8.1	Biography,Drama,History	Terry George	Keir Pearson,Terry George
210	Ford v Ferrari	2019	8.1	Action,Biography,Drama	James Mangold	Jez Butterworth,John-Henry Butterworth,Jason Keller
211	Rocky	1976	8.1	Drama,Sport	John G. Avildsen	Sylvester Stallone
212	Platoon	1986	8.1	Drama,War	Oliver Stone	Oliver Stone
213	Ratatouille	2007	8.1	Animation,Adventure,Comedy	Brad Bird,Jan Pinkava(co-director)	Brad Bird,Jan Pinkava,Jim Capobianco
214	Spotlight	2015	8.1	Biography,Crime,Drama	Tom McCarthy	Josh Singer,Tom McCarthy
215	The Terminator	1984	8.1	Action,Sci-Fi	James Cameron	James Cameron,Gale Anne Hurd,William Wisher
216	Logan	2017	8.1	Action,Drama,Sci-Fi	James Mangold	James Mangold,Scott Frank,Michael Green
217	Stand by Me	1986	8.1	Adventure,Drama	Rob Reiner	Stephen King,Raynold Gideon,Bruce A. Evans
218	Rush	2013	8.1	Action,Biography,Drama	Ron Howard	Peter Morgan
219	Network	1976	8.1	Drama	Sidney Lumet	Paddy Chayefsky
220	Into the Wild	2007	8.1	Adventure,Biography,Drama	Sean Penn	Sean Penn,Jon Krakauer
221	Before Sunset	2004	8.1	Drama,Romance	Richard Linklater	Richard Linklater,Julie Delpy,Ethan Hawke
222	The Wizard of Oz	1939	8.1	Adventure,Family,Fantasy	Victor Fleming,George Cukor(uncredited),Mervyn LeRoy(uncredited)	Noel Langley,Florence Ryerson,Edgar Allan Woolf
223	Pather Panchali	1955	8.3	Drama	Satyajit Ray	Bibhutibhushan Bandyopadhyay,Satyajit Ray
224	Groundhog Day	1993	8.1	Comedy,Drama,Fantasy	Harold Ramis	Danny Rubin,Harold Ramis
225	The Best Years of Our Lives	1946	8.1	Drama,Romance,War	William Wyler	Robert E. Sherwood,MacKinlay Kantor
226	The Exorcist	1973	8.1	Horror	William Friedkin	William Peter Blatty
227	The Incredibles	2004	8.0	Animation,Action,Adventure	Brad Bird	Brad Bird
228	To Be or Not to Be	1942	8.2	Comedy,Romance,War	Ernst Lubitsch	Melchior Lengyel,Edwin Justus Mayer,Ernst Lubitsch
229	La haine	1995	8.1	Crime,Drama	Mathieu Kassovitz	Mathieu Kassovitz
230	The Battle of Algiers	1966	8.1	Drama,War	Gillo Pontecorvo	Franco Solinas,Gillo Pontecorvo
231	Pirates of the Caribbean: The Curse of the Black Pearl	2003	8.1	Action,Adventure,Fantasy	Gore Verbinski	Ted Elliott,Terry Rossio,Stuart Beattie
232	Hachi: A Dog's Tale	2009	8.1	Biography,Drama,Family	Lasse Hallström	Stephen P. Lindsey,Kaneto Shindô
233	The Grapes of Wrath	1940	8.1	Drama	John Ford	Nunnally Johnson,John Steinbeck
234	Jai Bhim	2021	8.8	Crime,Drama,Mystery	T.J. Gnanavel	T.J. Gnanavel,Rajendra Sapre
235	My Father and My Son	2005	8.2	Drama,Family	Çagan Irmak	Çagan Irmak
236	Amores Perros	2000	8.1	Drama,Thriller	Alejandro G. Iñárritu	Guillermo Arriaga
237	Rebecca	1940	8.1	Drama,Film-Noir,Mystery	Alfred Hitchcock	Daphne Du Maurier,Robert E. Sherwood,Joan Harrison
238	Cool Hand Luke	1967	8.1	Crime,Drama	Stuart Rosenberg	Donn Pearce,Frank Pierson,Hal Dresner
239	The Handmaiden	2016	8.1	Drama,Romance,Thriller	Park Chan-wook	Sarah Waters,Chung Seo-kyung,Park Chan-wook
240	The 400 Blows	1959	8.1	Crime,Drama	François Truffaut	François Truffaut,Marcel Moussy
241	The Sound of Music	1965	8.1	Biography,Drama,Family	Robert Wise	Georg Hurdalek,Howard Lindsay,Russel Crouse
242	It Happened One Night	1934	8.1	Comedy,Romance	Frank Capra	Robert Riskin,Samuel Hopkins Adams
243	Persona	1966	8.1	Drama,Thriller	Ingmar Bergman	Ingmar Bergman
244	Life of Brian	1979	8.0	Comedy	Terry Jones	Graham Chapman,John Cleese,Terry Gilliam
245	The Iron Giant	1999	8.1	Animation,Action,Adventure	Brad Bird	Tim McCanlies,Brad Bird,Ted Hughes
246	The Help	2011	8.1	Drama	Tate Taylor	Tate Taylor,Kathryn Stockett
247	Dersu Uzala	1975	8.2	Adventure,Biography,Drama	Akira Kurosawa	Akira Kurosawa,Yuriy Nagibin,Vladimir Arsenev
248	Aladdin	1992	8.0	Animation,Adventure,Comedy	Ron Clements,John Musker	Ron Clements,John Musker,Ted Elliott
249	Gandhi	1982	8.0	Biography,Drama,History	Richard Attenborough	John Briley
250	Dances with Wolves	1990	8.0	Adventure,Drama,Western	Kevin Costner	Michael Blake
\.


--
-- Data for Name: masters; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.masters (master_id, master_name, master_password) FROM stdin;
1	admin	passwd
\.


--
-- Name: masters_master_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.masters_master_id_seq', 1, true);


--
-- Name: masters masters_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.masters
    ADD CONSTRAINT masters_pkey PRIMARY KEY (master_id);


--
-- PostgreSQL database dump complete
--

\unrestrict WldqP7elfpt45S2ipPhkur0WxGoravjpdDvzJJwslh2Rcuv5hWKcpI4EPTKp1K9

