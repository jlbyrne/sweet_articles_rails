--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: articles; Type: TABLE; Schema: public; Owner: apprentice; Tablespace: 
--

CREATE TABLE articles (
    id integer NOT NULL,
    title character varying(255),
    description text,
    url character varying(255),
    category character varying(255),
    tags character varying(255)
);


ALTER TABLE public.articles OWNER TO apprentice;

--
-- Name: articles_id_seq; Type: SEQUENCE; Schema: public; Owner: apprentice
--

CREATE SEQUENCE articles_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.articles_id_seq OWNER TO apprentice;

--
-- Name: articles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: apprentice
--

ALTER SEQUENCE articles_id_seq OWNED BY articles.id;


--
-- Name: articles_tags; Type: TABLE; Schema: public; Owner: apprentice; Tablespace: 
--

CREATE TABLE articles_tags (
    id integer NOT NULL,
    article_id integer,
    tag_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.articles_tags OWNER TO apprentice;

--
-- Name: articles_tags_id_seq; Type: SEQUENCE; Schema: public; Owner: apprentice
--

CREATE SEQUENCE articles_tags_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.articles_tags_id_seq OWNER TO apprentice;

--
-- Name: articles_tags_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: apprentice
--

ALTER SEQUENCE articles_tags_id_seq OWNED BY articles_tags.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: apprentice; Tablespace: 
--

CREATE TABLE schema_migrations (
    version character varying(255) NOT NULL
);


ALTER TABLE public.schema_migrations OWNER TO apprentice;

--
-- Name: tags; Type: TABLE; Schema: public; Owner: apprentice; Tablespace: 
--

CREATE TABLE tags (
    id integer NOT NULL,
    name character varying(255),
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.tags OWNER TO apprentice;

--
-- Name: tags_id_seq; Type: SEQUENCE; Schema: public; Owner: apprentice
--

CREATE SEQUENCE tags_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tags_id_seq OWNER TO apprentice;

--
-- Name: tags_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: apprentice
--

ALTER SEQUENCE tags_id_seq OWNED BY tags.id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: apprentice
--

ALTER TABLE ONLY articles ALTER COLUMN id SET DEFAULT nextval('articles_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: apprentice
--

ALTER TABLE ONLY articles_tags ALTER COLUMN id SET DEFAULT nextval('articles_tags_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: apprentice
--

ALTER TABLE ONLY tags ALTER COLUMN id SET DEFAULT nextval('tags_id_seq'::regclass);


--
-- Data for Name: articles; Type: TABLE DATA; Schema: public; Owner: apprentice
--

COPY articles (id, title, description, url, category, tags) FROM stdin;
1	quo et ab	Maxime aut maiores nemo et enim perspiciatis. Sit deleniti numquam fuga dolor reiciendis natus. Maxime delectus ut consequuntur autem quasi. At in laboriosam cumque corporis assumenda nulla.	articles/4/30/2013/quo-et-ab	Sports	love, widget
2	voluptas beatae deleniti	Sint voluptatem placeat eum. Et et molestiae sit vel. Perspiciatis consequuntur molestiae recusandae quo provident nobis. Illum qui doloribus possimus et laudantium quam tenetur. Saepe perspiciatis id atque.	articles/4/30/2013/voluptas-beatae-deleniti	programming	
3	voluptates aut non	Qui nihil quia. Odio ratione ut illum doloremque et. Qui dolor minus. Est nemo placeat numquam.	articles/4/30/2013/voluptates-aut-non	computer-world	jquery, computer, tech
4	ipsa culpa vero	Velit dignissimos dolores eaque. Ut voluptate rerum quisquam. Doloribus aut corporis iste aut sint hic ea. Assumenda suscipit inventore illum.	articles/4/30/2013/ipsa-culpa-vero	Sports	love
5	esse perferendis ducimus	Autem ea nemo praesentium inventore quasi. Corrupti nostrum illo voluptate. Consequuntur dicta esse illo.	articles/4/30/2013/esse-perferendis-ducimus	HEALTH	music, random-tags, cloud
6	maiores est vitae	Veniam rem aut. Minus excepturi libero. Tenetur sit consectetur deserunt et nemo. Earum qui nemo natus officiis impedit.	articles/4/30/2013/maiores-est-vitae	business	
7	recusandae laboriosam voluptas	Ut hic perspiciatis voluptas. Omnis et harum autem quasi. Necessitatibus non commodi ut qui a sed perspiciatis. Reprehenderit accusantium minima cupiditate iste eos. Sunt dolorum sint neque qui autem.	articles/4/30/2013/recusandae-laboriosam-voluptas	sport	
8	id consequuntur aperiam	Dolores molestias enim excepturi. Quis iste hic dignissimos sit. Molestiae laboriosam nesciunt rerum et.	articles/4/30/2013/id-consequuntur-aperiam	Sports	
9	architecto hic illo	Omnis natus consequuntur aut laborum maiores necessitatibus mollitia. Dolorem vitae nulla atque et aliquid. Non itaque voluptatum. Eum vel pariatur et nesciunt qui.	articles/4/30/2013/architecto-hic-illo	computer world	
10	aut nostrum quas	Saepe aut omnis nostrum maiores repudiandae. Assumenda ab neque commodi tempora ut. Provident dolorum quia alias at expedita. Vel eum adipisci.	articles/4/30/2013/aut-nostrum-quas	Business	cloud, jquery
11	fugit aut tenetur	Eveniet laborum molestiae et ea. Consequatur a veniam nulla. Sed libero quia eligendi qui ut.	articles/4/30/2013/fugit-aut-tenetur	HEALTH	widget
12	sequi magnam rerum	Aliquid et cum harum enim. Sunt ut quia. Itaque nemo possimus labore recusandae. Architecto explicabo modi ut.	articles/4/30/2013/sequi-magnam-rerum	sport	cloud, rails, cloud
13	quod non odit	Error id velit. Aperiam adipisci cumque. Autem ea corporis recusandae provident aut. Voluptate itaque et est error quis consequatur aut. Occaecati error accusantium et.	articles/4/30/2013/quod-non-odit	programming	ruby
14	dicta et non	Dolore dolorem aut nesciunt et placeat. Aut sapiente omnis totam omnis quis qui. Rem incidunt eos exercitationem consequatur quo ut. Dolores temporibus quia similique rerum.	articles/4/30/2013/dicta-et-non	Sports	medicine, widget, rails
15	totam assumenda et	Est quod sunt. Laudantium atque enim in aut. Nemo est non consequatur autem. Corrupti voluptas recusandae aliquid.	articles/4/30/2013/totam-assumenda-et	programming	widget, music
16	expedita quae beatae	Nihil voluptas sunt praesentium officia. Nisi ut occaecati. Ducimus perferendis enim est laborum. Enim enim quaerat dolores quia alias beatae numquam. Molestiae minima sed delectus accusantium vero vitae.	articles/4/30/2013/expedita-quae-beatae	business	tech, cloud, rails
17	perspiciatis aspernatur excepturi	Dolor velit voluptas ex iste. Possimus illum provident doloribus debitis laudantium dignissimos quis. Omnis et libero in tempore qui rerum quia. Dolor iste pariatur reiciendis qui est dolorum. Natus reprehenderit dolorem debitis odit itaque enim.	articles/4/30/2013/perspiciatis-aspernatur-excepturi	programming	cloud, art
18	sit doloremque dolorum	Sunt consequatur cumque. Iusto laboriosam voluptas aut quas perferendis. Consequatur consequatur aut qui est nam. Cupiditate deleniti eaque distinctio nisi ab voluptas. Natus vitae fugiat quis et possimus sunt.	articles/4/30/2013/sit-doloremque-dolorum	programming	cloud, computer
19	veniam earum facilis	Ut dicta recusandae quo dolorem distinctio. Beatae amet suscipit consequatur sapiente. Nisi neque autem voluptatem. Dolor est voluptatem est. Quos voluptas reprehenderit dolores mollitia.	articles/4/30/2013/veniam-earum-facilis	sport	love, ruby
20	necessitatibus quae aperiam	Repellendus et sit eos. Natus non labore laboriosam non. Maxime minima atque rerum.	articles/4/30/2013/necessitatibus-quae-aperiam	HEALTH	ruby, music
21	odio facilis non	Quam architecto eveniet ea vitae. Reiciendis possimus unde. Natus numquam aut.	articles/4/30/2013/odio-facilis-non	computer-world	computer, random-tags, art
22	debitis omnis illum	Quidem numquam voluptatem distinctio in corporis rerum. Et minus eos provident veniam sunt. Velit non ea. Nesciunt corrupti qui excepturi.	articles/4/30/2013/debitis-omnis-illum	computer-world	jquery
23	et quo rerum	Ut rerum sit. Exercitationem distinctio ut iste omnis veniam id quia. Inventore ex aut non placeat. Omnis incidunt quas enim quibusdam corporis. Natus asperiores minima perspiciatis exercitationem impedit quia quod.	articles/4/30/2013/et-quo-rerum	computer world	random-tags
24	illo deleniti in	Dolorem eum vero reiciendis optio aut. Quae eius sed voluptatem sed. Eos fugit neque. Velit sequi voluptatum omnis. Voluptatem doloribus ea a.	articles/4/30/2013/illo-deleniti-in	computer-world	art
25	occaecati aspernatur consequatur	Voluptates porro expedita rerum laudantium. Atque occaecati velit id sit aut et ipsam. Eum quia eaque quia mollitia sint temporibus.	articles/4/30/2013/occaecati-aspernatur-consequatur	computer-world	
26	est est ipsam	Nostrum aut vitae consectetur error. Inventore error commodi quod. Sapiente aut similique consequatur et corrupti est quaerat. Ut quibusdam et iure adipisci nesciunt. Non magni tempore nam labore.	articles/4/30/2013/est-est-ipsam	programming	widget, art, jquery
27	et cupiditate eos	Ratione et maiores. Sed asperiores est recusandae eos id ut qui. Qui velit ut quae et.	articles/4/30/2013/et-cupiditate-eos	Business	ruby, music
28	ut quibusdam asperiores	Vero repudiandae voluptatibus ducimus modi dolor repellendus. Et qui quam voluptatum quidem nihil dolore. Placeat quidem maxime tempora quos omnis perferendis. Adipisci accusantium unde libero placeat minima incidunt asperiores.	articles/4/30/2013/ut-quibusdam-asperiores	computer world	jquery, medicine
29	laboriosam accusantium dolore	Modi dolor consectetur explicabo commodi alias. Nam iste odit quasi ut mollitia nihil. Quaerat modi similique animi enim. Veniam numquam in nobis dicta culpa molestiae. Accusamus earum molestiae dicta doloremque magni voluptatibus totam.	articles/4/30/2013/laboriosam-accusantium-dolore	HEALTH	computer, medicine
30	enim et repudiandae	Minima libero deleniti molestiae provident voluptatem nostrum. Commodi in mollitia sapiente omnis. Excepturi hic corporis dolorem.	articles/4/30/2013/enim-et-repudiandae	computer world	
31	cupiditate qui minus	Dolor aut ut. Tempora tenetur quas. Aut error ab voluptatem sed ipsam vitae. Enim nobis veniam nostrum ex minus accusamus.	articles/4/30/2013/cupiditate-qui-minus	sport	random-tags, jquery
32	et sit expedita	Fuga consequatur ex. Molestias cupiditate cum quia molestiae. Cum aut eveniet.	articles/4/30/2013/et-sit-expedita	computer world	computer, music
33	quo minima consequuntur	Dolor fuga quis. Quis cum officia aut est dolores qui. Laudantium cupiditate accusamus voluptate omnis voluptates nemo. Odio totam corporis rerum facere ullam ex. Officia quo unde totam architecto libero ipsa.	articles/4/30/2013/quo-minima-consequuntur	Sports	jquery
34	voluptatum et quas	Cum molestiae ipsa. Qui hic perspiciatis enim qui. Sed consequatur consectetur aliquid repellendus qui similique ipsum. Animi qui voluptatum sapiente voluptatem.	articles/4/30/2013/voluptatum-et-quas	sport	hate, cloud, art
35	quo qui et	Quas dignissimos atque quia pariatur. Tenetur nobis ipsum commodi quis quibusdam officia. Rerum expedita cum iure aliquid amet. Placeat ut adipisci temporibus expedita.	articles/4/30/2013/quo-qui-et	HEALTH	
36	voluptates minima voluptatum	Eius sed suscipit. Occaecati ut omnis eaque. Tenetur et modi autem vero.	articles/4/30/2013/voluptates-minima-voluptatum	computer-world	art, love, rails
37	dolor doloremque qui	Aliquam sunt atque qui ipsam hic. Aut perspiciatis magni. Accusantium voluptate soluta eum rerum commodi ut ullam. Itaque quia alias esse.	articles/4/30/2013/dolor-doloremque-qui	Sports	hate
38	atque totam ut	Quia in consectetur fuga soluta. Quos cupiditate quisquam reprehenderit quia. Quaerat aut maiores dignissimos officiis voluptatem fugit. Et minus ab iure natus recusandae vel.	articles/4/30/2013/atque-totam-ut	business	love, cloud
39	impedit quam omnis	Velit nihil provident recusandae officia a rerum. Nam sint unde ut aut aliquid nisi qui. Deleniti perspiciatis ut repellat magnam eveniet aut. Consequatur ducimus quidem itaque ea.	articles/4/30/2013/impedit-quam-omnis	computer-world	rails, widget, random
40	a nemo nostrum	Ducimus dolorum repellendus accusantium distinctio pariatur enim. Aut aut est mollitia qui. Distinctio possimus voluptates earum dolores nobis saepe. Molestiae ab debitis adipisci voluptatem rerum. Odio aut velit.	articles/4/30/2013/a-nemo-nostrum	HEALTH	love, music
41	occaecati voluptate eaque	Maxime dolor delectus tempore. Illum eum in rerum qui consequatur qui fugit. Suscipit qui ad accusamus ratione. Sapiente amet voluptas ad.	articles/4/30/2013/occaecati-voluptate-eaque	computer-world	
42	quis repellat rerum	Molestias eligendi pariatur voluptates. Neque similique ipsa doloremque rerum officiis asperiores. Repellat nulla tempora voluptas totam doloremque illo dolorem. Fuga consequatur dolore debitis nihil eveniet sequi. Dicta quibusdam ut ipsa culpa eum.	articles/4/30/2013/quis-repellat-rerum	computer-world	art
43	laboriosam soluta in	In sint id molestiae magnam. Quo natus debitis inventore. Enim voluptas non enim ipsum in a. Perspiciatis nisi vero magnam tempore autem illo. Est et adipisci labore officia.	articles/4/30/2013/laboriosam-soluta-in	Sports	jquery
44	libero illum explicabo	Laboriosam iure dolor maiores. Nam blanditiis explicabo commodi adipisci animi eaque. Odit est eaque explicabo.	articles/4/30/2013/libero-illum-explicabo	HEALTH	random-tags, music
45	quo quasi reiciendis	Eligendi sint rerum quasi adipisci. Dolorem sunt et. Nostrum eos est quos omnis. Vitae ea velit. Rerum magni laborum officia quaerat quisquam.	articles/4/30/2013/quo-quasi-reiciendis	computer world	random, cloud, tech
46	nihil omnis impedit	Deserunt libero ipsum illo quaerat. Autem ea odio officia sed illo explicabo nam. Amet enim veniam. Voluptatibus labore ut laudantium et. Et fuga quis cum.	articles/4/30/2013/nihil-omnis-impedit	programming	
47	iusto et placeat	Officia delectus porro mollitia blanditiis reprehenderit. Exercitationem quis libero ut cupiditate ut eum. Commodi facere cupiditate neque. Aliquam dolores tenetur sit soluta explicabo ea tempora.	articles/4/30/2013/iusto-et-placeat	business	jquery
48	saepe minima non	Incidunt harum sint hic assumenda sunt at temporibus. Cupiditate et fugit qui delectus. Est ea est. Est sapiente saepe eos ea eveniet.	articles/4/30/2013/saepe-minima-non	computer-world	random-tags
49	nihil eos saepe	Ut numquam et ea delectus veniam. Voluptas facere porro molestiae quaerat. Nobis sint nostrum doloremque. Error nam non sunt inventore iste doloribus.	articles/4/30/2013/nihil-eos-saepe	sport	cloud
50	vero dolores excepturi	Quae explicabo officia eaque. Reiciendis aut dolorem voluptas minima. Doloribus repellat reprehenderit voluptatem harum ipsam at beatae.	articles/4/30/2013/vero-dolores-excepturi	Sports	computer, ruby, random-tags
51	ex eum at	Aut qui vitae aliquid similique minima. Deleniti et et sed error libero. Illum omnis fuga vel mollitia.	articles/7/23/2013/ex-eum-at	HEALTH	art, music, medicine
52	tenetur sed nemo	Possimus a qui et aperiam quia. Architecto itaque sed culpa sed aperiam illo asperiores. Sint aut et voluptatum reiciendis. Amet in dolorem. Repellendus et eius ut recusandae rem consequatur.	articles/7/23/2013/tenetur-sed-nemo	computer world	random, random-tags
53	aperiam rerum ea	Et autem distinctio similique hic quo fugiat eaque. Excepturi sit et porro autem voluptas eos dicta. Autem ipsam ipsum dolor fuga accusamus quisquam et. Fuga et aut pariatur molestias.	articles/7/23/2013/aperiam-rerum-ea	business	ruby
54	hic qui aut	Facere aliquam quidem doloribus officia. Itaque nemo vel laboriosam aliquid voluptas. Veniam est ad sed voluptates quo alias iste. Nihil autem laudantium esse explicabo libero et omnis. Velit sunt incidunt autem.	articles/7/23/2013/hic-qui-aut	HEALTH	widget, computer
55	quisquam odit et	Provident voluptatem et ad quibusdam nostrum non vitae. Fuga nihil quo voluptate corporis. Dicta ut ut pariatur. Ullam a nesciunt non qui repudiandae culpa accusamus. Esse perferendis est dolores voluptatem.	articles/7/23/2013/quisquam-odit-et	computer-world	art, random, jquery
56	et autem optio	In voluptate ad eum similique autem dolore ipsam. Repellendus labore repellat. Sint et nesciunt adipisci quas itaque et aut. Consequatur eius adipisci.	articles/7/23/2013/et-autem-optio	business	rails, hate, computer
57	quisquam minus laboriosam	Error sunt tenetur laborum maxime repellendus molestiae. Voluptas aperiam molestias. Sed qui libero. Molestiae id omnis quam ut eos.	articles/7/23/2013/quisquam-minus-laboriosam	computer world	cloud
58	sed omnis deleniti	Soluta eum adipisci et repellat laboriosam eos officiis. Iusto odio possimus. Dicta impedit cupiditate sit et tenetur. Sapiente eveniet sed voluptates asperiores minus placeat consequuntur.	articles/7/23/2013/sed-omnis-deleniti	Sports	
59	vero voluptatem eveniet	Eaque expedita consequatur sint. Deserunt est soluta cum quos qui optio. Sed quidem sint quo accusamus earum.	articles/7/23/2013/vero-voluptatem-eveniet	sport	
60	sed officiis amet	A ipsam quo illum doloribus voluptatem quam. Ipsam quia sint adipisci voluptatem debitis at praesentium. Officia non et. Et est odit soluta culpa. Labore voluptatem omnis molestiae nihil.	articles/7/23/2013/sed-officiis-amet	computer world	jquery, music, cloud
61	earum vel repellat	Dolor qui quod. Saepe incidunt nam reiciendis cumque. Praesentium ea et amet esse laudantium dicta.	articles/7/23/2013/earum-vel-repellat	computer-world	cloud, widget, random-tags
62	corporis assumenda enim	Iure rerum est ullam distinctio ut. Magnam totam sint officiis doloremque ut blanditiis. Iste ex beatae minus sapiente voluptatem. Soluta impedit placeat sapiente.	articles/7/23/2013/corporis-assumenda-enim	Sports	random-tags, medicine, rails
63	debitis totam consequuntur	Repellendus atque est omnis laboriosam doloribus perferendis dolor. Maxime temporibus vitae omnis voluptatem. Ducimus quia debitis aliquam repellendus totam. Soluta sapiente voluptatibus ab distinctio et. Ut provident rerum.	articles/7/23/2013/debitis-totam-consequuntur	Business	cloud
64	laboriosam in facilis	Debitis enim aut qui excepturi et. Sunt cumque rerum quia quia aut architecto. Voluptas quia dolores ipsum omnis.	articles/7/23/2013/laboriosam-in-facilis	sport	hate, jquery, tech
65	voluptatibus optio beatae	Sit earum sit eum minima quisquam. Impedit nam quod. Ut eum non sed culpa voluptatem nemo. Fugiat accusamus qui magnam architecto officiis ut optio. Dolor dolorem mollitia ut sint vero.	articles/7/23/2013/voluptatibus-optio-beatae	Business	
66	quaerat impedit libero	Omnis accusantium suscipit autem. Porro vel laboriosam sint nam consequatur illo quas. Sit rerum odio est. Numquam quo qui sunt eaque. Quia aperiam numquam vel non dolorem illum ipsa.	articles/7/23/2013/quaerat-impedit-libero	HEALTH	medicine
67	quidem praesentium minus	Veritatis vel magni. Debitis officiis ea. Sunt veritatis velit illo voluptatum.	articles/7/23/2013/quidem-praesentium-minus	programming	computer, cloud, random-tags
68	eum odit ea	Et in amet est dolorum et. Eveniet sit rem dolores sed nobis. Aut dicta animi consequuntur nobis hic voluptatibus. Eaque harum ad atque ea nihil totam.	articles/7/23/2013/eum-odit-ea	Sports	computer, widget, music
69	dicta est illo	Porro quidem ad est eum consequatur ut. Enim odit qui sequi. Repellat vitae iste fugiat. Dicta autem consequuntur.	articles/7/23/2013/dicta-est-illo	computer world	random-tags
70	delectus et placeat	Assumenda minima omnis architecto quod. Et illum autem consectetur aliquid sit iste. Et maiores qui rem. Vitae omnis culpa impedit consectetur soluta rerum modi.	articles/7/23/2013/delectus-et-placeat	HEALTH	cloud, jquery
71	dignissimos dicta optio	Impedit consequatur accusantium voluptates. Laborum omnis rerum est voluptates iste. Laudantium rerum quis.	articles/7/23/2013/dignissimos-dicta-optio	sport	tech, love
72	adipisci est odit	Aut assumenda cupiditate dolorum inventore doloremque cum repellendus. Distinctio quaerat molestias ab id ut eligendi ipsa. Labore at quas eius eligendi.	articles/7/23/2013/adipisci-est-odit	Business	
73	veniam rerum nihil	Et quod beatae eveniet debitis minima. Ut sit aspernatur. Eaque voluptate esse velit ea eum quas et. Sint aut omnis ut provident officia.	articles/7/23/2013/veniam-rerum-nihil	programming	random, medicine
74	omnis voluptate aliquid	Non id iure natus in magni et. Dolorem labore quas omnis. Alias ut quaerat aut consequatur repellat esse a. Nam ab laudantium hic eum. Porro sunt asperiores neque cumque sapiente et qui.	articles/7/23/2013/omnis-voluptate-aliquid	Sports	ruby, medicine
75	sed iure sit	Dicta quidem sint qui possimus. Et officia ullam. Dolore aspernatur quidem adipisci nostrum quia quis consectetur.	articles/7/23/2013/sed-iure-sit	Business	love, rails
76	modi ea perferendis	Aut aliquam adipisci id aut. Inventore nisi est consectetur soluta est. Doloremque rerum magni quo libero reprehenderit. Non nihil hic quas ad.	articles/7/23/2013/modi-ea-perferendis	computer-world	music, widget, love
77	aliquam exercitationem consequuntur	Totam quos iste tempore occaecati odit consequatur. Id aut culpa ut voluptas voluptatibus expedita. Delectus quam qui perferendis nesciunt fugiat. Neque libero tenetur laudantium quos.	articles/7/23/2013/aliquam-exercitationem-consequuntur	Sports	hate, widget
78	id quibusdam corporis	Qui aliquam cumque sed. Deserunt suscipit nostrum delectus dolorum voluptatem rerum. Explicabo praesentium dolore earum consequatur.	articles/7/23/2013/id-quibusdam-corporis	Sports	jquery
79	ex commodi voluptatem	Ut ducimus est. Nulla mollitia sed dignissimos ratione quod. Corrupti harum nemo autem aut.	articles/7/23/2013/ex-commodi-voluptatem	programming	
80	est reiciendis et	Eius voluptatum officia quaerat maxime occaecati. Reiciendis eum harum voluptatem quia laborum explicabo. Non sit error.	articles/7/23/2013/est-reiciendis-et	Sports	
81	id repellat eaque	Commodi et similique suscipit dolore fugiat esse. Beatae rerum est neque praesentium occaecati. Id consequuntur fuga ullam vel tenetur reiciendis.	articles/7/23/2013/id-repellat-eaque	HEALTH	love, ruby
82	ullam velit blanditiis	Esse sed ipsa. Sunt unde incidunt est repellat. Nostrum ut repellat aut. Nemo molestiae minus nisi minima error. Sit inventore optio magnam qui id ut reiciendis.	articles/7/23/2013/ullam-velit-blanditiis	computer-world	medicine, love
83	maxime temporibus magni	Iure quos ut accusantium aspernatur veritatis. Sunt rem et enim et fugit. Amet ab est beatae sunt voluptatem rem. Nulla porro distinctio veniam sunt.	articles/7/23/2013/maxime-temporibus-magni	computer world	cloud, art
84	praesentium nulla at	Nobis et ea repellat deserunt modi sit veritatis. Sed eligendi cumque id expedita consequatur sapiente dolore. Voluptas ut molestiae itaque quis aspernatur omnis.	articles/7/23/2013/praesentium-nulla-at	computer-world	medicine, widget
85	quidem omnis sapiente	Voluptatem officia repellendus et adipisci animi. Provident exercitationem nam. Debitis aspernatur inventore. Nihil recusandae est et accusamus quis quasi. Consequuntur veritatis accusantium autem deserunt in.	articles/7/23/2013/quidem-omnis-sapiente	Business	
86	dolores amet vero	Laboriosam dolor facere totam cumque. Vel sunt consectetur assumenda. Veniam quis vel error unde odio ducimus. Velit soluta ipsa et ab ut aperiam velit. Consequuntur molestiae optio.	articles/7/23/2013/dolores-amet-vero	computer-world	art, random, medicine
87	sequi necessitatibus voluptate	Ex asperiores sunt. Voluptatem doloremque rerum. Impedit adipisci enim eum laborum ut ducimus.	articles/7/23/2013/sequi-necessitatibus-voluptate	business	love, random, computer
88	ipsam dolorem debitis	Nesciunt quia dolor velit et saepe rerum ut. Iusto aut occaecati unde excepturi eum est soluta. Explicabo nobis molestiae et et sit ab architecto.	articles/7/23/2013/ipsam-dolorem-debitis	business	ruby, jquery
89	sequi aut aspernatur	Voluptatem enim quaerat voluptas voluptate quia saepe dolorum. Maiores voluptatem in. Officia hic odit optio. Adipisci inventore illum excepturi voluptatum dignissimos.	articles/7/23/2013/sequi-aut-aspernatur	HEALTH	love, widget, computer
90	id quia expedita	Voluptate molestiae sed modi ab sunt eius. Consectetur officia ducimus unde. Rerum asperiores est.	articles/7/23/2013/id-quia-expedita	sport	computer, jquery
91	a enim et	Error optio consectetur quo neque vero nihil odio. Eum unde neque placeat blanditiis. Quo quo itaque ut praesentium fugit voluptatem.	articles/7/23/2013/a-enim-et	Sports	music, random-tags, widget
92	eum possimus fuga	Vel itaque sit assumenda. Quo eius nihil tenetur qui fugiat eveniet. Aut aut iure. Qui ipsum voluptatem sit deleniti. Temporibus architecto quaerat ea cupiditate.	articles/7/23/2013/eum-possimus-fuga	computer-world	cloud
93	ut autem quo	Eius earum sed deleniti et ipsa. Laboriosam libero doloremque dicta error molestiae aperiam. Ex illum soluta.	articles/7/23/2013/ut-autem-quo	programming	cloud, widget, computer
94	ipsa omnis unde	Minus et ut quidem ratione. Consequatur ullam repellendus. Facilis quo est. Qui et a quia.	articles/7/23/2013/ipsa-omnis-unde	Business	hate, art
95	numquam consequatur voluptatem	Rerum sint eligendi et ut. Recusandae eum tenetur omnis perspiciatis. Quae repellat voluptatem odio inventore eum sunt. Sit velit deserunt itaque qui voluptates ut.	articles/7/23/2013/numquam-consequatur-voluptatem	Sports	hate
96	ipsum voluptatem consequatur	Cupiditate consequatur necessitatibus ut. Consequatur omnis ut. Numquam dignissimos nobis. Vitae pariatur sit qui.	articles/7/23/2013/ipsum-voluptatem-consequatur	sport	
97	magni aut non	Autem fuga et. Voluptatem delectus sit. Quam enim asperiores labore iure eveniet ipsa aut.	articles/7/23/2013/magni-aut-non	programming	music, rails, jquery
98	nam fugiat placeat	Facere nemo perspiciatis quas aut voluptatem voluptate non. Ea et et praesentium sit corporis earum. Beatae placeat explicabo tenetur. Dignissimos cumque aliquam reprehenderit magnam. Facilis modi inventore unde ut ut voluptas doloremque.	articles/7/23/2013/nam-fugiat-placeat	programming	
99	pariatur explicabo nemo	Aut nemo libero quia incidunt tenetur qui quaerat. Officia minima consequatur explicabo suscipit sunt dolores omnis. Eum delectus tempora est.	articles/7/23/2013/pariatur-explicabo-nemo	computer world	
100	sunt sed deleniti	Aperiam facilis nisi quia illum dolorem. Autem qui velit nulla in et aut. Inventore omnis veritatis perspiciatis. Qui repellendus aliquam repudiandae quo.	articles/7/23/2013/sunt-sed-deleniti	HEALTH	medicine, computer, cloud
\.


--
-- Name: articles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: apprentice
--

SELECT pg_catalog.setval('articles_id_seq', 100, true);


--
-- Data for Name: articles_tags; Type: TABLE DATA; Schema: public; Owner: apprentice
--

COPY articles_tags (id, article_id, tag_id, created_at, updated_at) FROM stdin;
\.


--
-- Name: articles_tags_id_seq; Type: SEQUENCE SET; Schema: public; Owner: apprentice
--

SELECT pg_catalog.setval('articles_tags_id_seq', 1, false);


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: apprentice
--

COPY schema_migrations (version) FROM stdin;
20130311183138
20130501004105
20130501004617
20130501010603
\.


--
-- Data for Name: tags; Type: TABLE DATA; Schema: public; Owner: apprentice
--

COPY tags (id, name, created_at, updated_at) FROM stdin;
\.


--
-- Name: tags_id_seq; Type: SEQUENCE SET; Schema: public; Owner: apprentice
--

SELECT pg_catalog.setval('tags_id_seq', 1, false);


--
-- Name: articles_pkey; Type: CONSTRAINT; Schema: public; Owner: apprentice; Tablespace: 
--

ALTER TABLE ONLY articles
    ADD CONSTRAINT articles_pkey PRIMARY KEY (id);


--
-- Name: articles_tags_pkey; Type: CONSTRAINT; Schema: public; Owner: apprentice; Tablespace: 
--

ALTER TABLE ONLY articles_tags
    ADD CONSTRAINT articles_tags_pkey PRIMARY KEY (id);


--
-- Name: tags_pkey; Type: CONSTRAINT; Schema: public; Owner: apprentice; Tablespace: 
--

ALTER TABLE ONLY tags
    ADD CONSTRAINT tags_pkey PRIMARY KEY (id);


--
-- Name: unique_schema_migrations; Type: INDEX; Schema: public; Owner: apprentice; Tablespace: 
--

CREATE UNIQUE INDEX unique_schema_migrations ON schema_migrations USING btree (version);


--
-- Name: public; Type: ACL; Schema: -; Owner: apprentice
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM apprentice;
GRANT ALL ON SCHEMA public TO apprentice;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

