-- DROP DATABASE "node-typescript-rest-api";

-- CREATE DATABASE "node-typescript-rest-api" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'en_IN' LC_CTYPE = 'en_IN';

-- \connect "node-typescript-rest-api"

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

--
-- TOC entry 197 (class 1259 OID 17419)

--

CREATE TABLE public."Courses" (
    id integer NOT NULL,
    description character varying(255),
    url character varying(255),
    "longDescription" text,
    "iconUrl" character varying(255),
    tags character varying(255),
    "channelTitle" character varying(255),
    "channelUrl" character varying(255),
    "channelId" character varying(255),
    "seqNo" integer,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);




--
-- TOC entry 196 (class 1259 OID 17417)

--

CREATE SEQUENCE public."Courses_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;




--
-- TOC entry 2930 (class 0 OID 0)
-- Dependencies: 196

--

ALTER SEQUENCE public."Courses_id_seq" OWNED BY public."Courses".id;


--
-- TOC entry 199 (class 1259 OID 17430)

--

CREATE TABLE public."Lessons" (
    id integer NOT NULL,
    url character varying(255),
    description text,
    "thumbnailUrl" character varying(255),
    title character varying(255),
    duration character varying(255),
    "seqNo" integer,
    "courseId" integer,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);




--
-- TOC entry 198 (class 1259 OID 17428)

--

CREATE SEQUENCE public."Lessons_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;




--
-- TOC entry 2931 (class 0 OID 0)
-- Dependencies: 198

--

ALTER SEQUENCE public."Lessons_id_seq" OWNED BY public."Lessons".id;


--
-- TOC entry 2792 (class 2604 OID 17422)

--

ALTER TABLE ONLY public."Courses" ALTER COLUMN id SET DEFAULT nextval('public."Courses_id_seq"'::regclass);


--
-- TOC entry 2793 (class 2604 OID 17433)

--

ALTER TABLE ONLY public."Lessons" ALTER COLUMN id SET DEFAULT nextval('public."Lessons_id_seq"'::regclass);


--
-- TOC entry 2921 (class 0 OID 17419)
-- Dependencies: 197

--

INSERT INTO public."Courses" (id, description, url, "longDescription", "iconUrl", tags, "channelTitle", "channelUrl", "channelId", "seqNo", "createdAt", "updatedAt") VALUES (1, '30 Days to Learn HTML & CSS (Full Course)', 'https://www.youtube.com/playlist?list=PLgGbWId6zgaWZkPFI4Sc9QXDmmOWa1v5F', 'Even if your goal is not to become a web designer, learning HTML and CSS can be an amazing tool to have in your skill-set – both in the workplace, and at home. If this has been on your to-do list for some time, why don’t you take thirty days and join me? Give me around ten minutes every day, and I’ll teach you the essentials of HTML and CSS.For more Web Design courses, see: https://webdesign.tutsplus.com/courses/', 'https://i.ytimg.com/vi/yTHTo28hwTQ/hqdefault.jpg?sqp=-oaymwEXCNACELwBSFryq4qpAwkIARUAAIhCGAE=&rs=AOn4CLDRRxEIZSv7coxKikXYwTz4bapQFQ', 'BEGINNER', 'Envato Tuts+', 'https://www.youtube.com/user/TutsPremium', 'UC8lxnUR_CzruT2KA6cb7p0Q', 0, '2019-11-13 10:53:50.25+05:30', '2019-11-13 10:53:50.25+05:30');
INSERT INTO public."Courses" (id, description, url, "longDescription", "iconUrl", tags, "channelTitle", "channelUrl", "channelId", "seqNo", "createdAt", "updatedAt") VALUES (2, 'JavaScript30', 'https://www.youtube.com/playlist?list=PLu8EoSxDXHP6CGK4YVJhL_VWetA865GOH', 'A 30 day Vanilla JavaScript Challenge! Grab all the videos, exercises and coded solutions over at https://JavaScript30.com', 'https://i.ytimg.com/vi/VuN8qwZoego/hqdefault.jpg?sqp=-oaymwEXCNACELwBSFryq4qpAwkIARUAAIhCGAE=&rs=AOn4CLC3utIx9wVKvmPBcZs4O0OrIXa9zg', 'INTERMEDIATE', 'Wes Bos', 'https://www.youtube.com/user/wesbos/', 'UCoebwHSTvwalADTJhps0emA', 1, '2019-11-13 10:53:50.25+05:30', '2019-11-13 10:53:50.25+05:30');
INSERT INTO public."Courses" (id, description, url, "longDescription", "iconUrl", tags, "channelTitle", "channelUrl", "channelId", "seqNo", "createdAt", "updatedAt") VALUES (3, 'REST API with Node (Express & MongoDB)', 'https://www.youtube.com/playlist?list=PLSpJkDDmpFZ5rZ5-Aur9WRNsBDSUS-0B9', '', 'https://i.ytimg.com/vi/1XmwszKUNR8/hqdefault.jpg?sqp=-oaymwEXCNACELwBSFryq4qpAwkIARUAAIhCGAE=&rs=AOn4CLDQALHVDjwC3xI5dP4Qfh4tlB6Gpg', 'INTERMEDIATE', 'CodeWorkr', 'https://www.youtube.com/channel/UCfYTu_qAO5T7a-8rC_74Ypw', 'UCfYTu_qAO5T7a-8rC_74Ypw', 2, '2019-11-13 10:53:50.25+05:30', '2019-11-13 10:53:50.25+05:30');
INSERT INTO public."Courses" (id, description, url, "longDescription", "iconUrl", tags, "channelTitle", "channelUrl", "channelId", "seqNo", "createdAt", "updatedAt") VALUES (4, 'Advanced JavaScript', 'https://www.youtube.com/playlist?list=PLqrUy7kON1meuCvGp2D6yTglZhPTT_s_f', '', 'https://i.ytimg.com/vi/XskMWBXNbp0/hqdefault.jpg?sqp=-oaymwEXCNACELwBSFryq4qpAwkIARUAAIhCGAE=&rs=AOn4CLCqe_0mn_r8odSitIcg8ManucWeQg', 'INTERMEDIATE', 'Tyler McGinnis', 'https://www.youtube.com/channel/UCbAn7pVK2VIyo-UysfWGdZQ', 'UCbAn7pVK2VIyo-UysfWGdZQ', 3, '2019-11-13 10:53:50.25+05:30', '2019-11-13 10:53:50.25+05:30');


--
-- TOC entry 2923 (class 0 OID 17430)
-- Dependencies: 199

--

INSERT INTO public."Lessons" (id, url, description, "thumbnailUrl", title, duration, "seqNo", "courseId", "createdAt", "updatedAt") VALUES (1, 'https://www.youtube.com/watch?v=yTHTo28hwTQ', 'This is part of the free Envato Tuts+ course 30 Days to Learn HTML & CSS: https://webdesign.tutsplus.com/courses/30-days-to-learn-html-css?utm_campaign=yt_tutsplus_yTHTo28hwTQ&utm_medium=referral&utm_source=youtube.com&utm_content=description

► Browse WordPress Themes and Plugins: https://elements.envato.com/wordpress?utm_campaign=yt_tutsplus_yTHTo28hwTQ&utm_medium=referral&utm_source=youtube.com&utm_content=description

For more great web design courses and tutorials go to: https://webdesign.tutsplus.com?utm_campaign=yt_tutsplus_yTHTo28hwTQ&utm_medium=referral&utm_source=youtube.com&utm_content=description

Even if your goal is not to become a web designer, learning HTML and CSS can be an amazing tool to have in your skill-set -- both in the workplace, and at home. If this has been on your to-do list for some time, why don''t you take thirty days and join me? Give me around ten minutes every day, and I''ll teach you the essentials of HTML and CSS.

And don''t worry... we start at the beginning!


- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
Envato Tuts+
Discover free how-to tutorials and online courses. Design a logo, create a website, build an app, or learn a new skill: https://tutsplus.com?utm_campaign=yt_tutsplus_yTHTo28hwTQ&utm_medium=referral&utm_source=youtube.com&utm_content=description

Envato Elements
All the creative assets you need under one subscription. Customize your project by adding unique photos, fonts, graphics, and themes.
► Download Unlimited Stock Photos, Fonts & Templates with Envato Elements: https://elements.envato.com?utm_campaign=yt_tutsplus_yTHTo28hwTQ&utm_medium=referral&utm_source=youtube.com&utm_content=description

► Subscribe to Envato Tuts+ on YouTube: https://www.youtube.com/tutsplus
► Follow Envato Tuts+ on Twitter: https://twitter.com/tutsplus
► Follow Envato Tuts+ on Facebook: https://www.facebook.com/tutsplus
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -', 'https://i.ytimg.com/vi/yTHTo28hwTQ/default.jpg', 'Course Introduction (30 Days to Learn HTML and CSS)', '00:00:56', 1, 1, '2019-11-13 10:53:50.25+05:30', '2019-11-13 10:53:50.25+05:30');
INSERT INTO public."Lessons" (id, url, description, "thumbnailUrl", title, duration, "seqNo", "courseId", "createdAt", "updatedAt") VALUES (2, 'https://www.youtube.com/watch?v=bfqBUDk99Tc', 'In this lesson, you''ll learn how to make a working web page that displays the words, "Hello world."

► Browse WordPress Themes and Plugins: https://elements.envato.com/wordpress?utm_campaign=yt_tutsplus_bfqBUDk99Tc&utm_medium=referral&utm_source=youtube.com&utm_content=description

This is part of the free Envato Tuts+ course 30 Days to Learn HTML & CSS: https://webdesign.tutsplus.com/courses/30-days-to-learn-html-css?utm_campaign=yt_tutsplus_bfqBUDk99Tc&utm_medium=referral&utm_source=youtube.com&utm_content=description

For more great web design courses and tutorials go to: https://webdesign.tutsplus.com?utm_campaign=yt_tutsplus_bfqBUDk99Tc&utm_medium=referral&utm_source=youtube.com&utm_content=description

- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
Envato Tuts+
Discover free how-to tutorials and online courses. Design a logo, create a website, build an app, or learn a new skill: https://tutsplus.com?utm_campaign=yt_tutsplus_bfqBUDk99Tc&utm_medium=referral&utm_source=youtube.com&utm_content=description

Envato Elements
All the creative assets you need under one subscription. Customize your project by adding unique photos, fonts, graphics, and themes.
► Download Unlimited Stock Photos, Fonts & Templates with Envato Elements: https://elements.envato.com?utm_campaign=yt_tutsplus_bfqBUDk99Tc&utm_medium=referral&utm_source=youtube.com&utm_content=description

► Subscribe to Envato Tuts+ on YouTube: https://www.youtube.com/tutsplus
► Follow Envato Tuts+ on Twitter: https://twitter.com/tutsplus
► Follow Envato Tuts+ on Facebook: https://www.facebook.com/tutsplus
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -', 'https://i.ytimg.com/vi/bfqBUDk99Tc/default.jpg', 'Day 1: Your First Webpage (30 Days to Learn HTML & CSS)', '00:09:51', 2, 1, '2019-11-13 10:53:50.25+05:30', '2019-11-13 10:53:50.25+05:30');
INSERT INTO public."Lessons" (id, url, description, "thumbnailUrl", title, duration, "seqNo", "courseId", "createdAt", "updatedAt") VALUES (3, 'https://www.youtube.com/watch?v=-8IoQTg5Ybs', 'Before we continue on with formatting our text, I don''t want you to be using NotePad or Text Edit. Instead, we should be using a code editor that was specifically created for the purposes of writing code.

► Browse WordPress Themes and Plugins: https://elements.envato.com/wordpress?utm_campaign=yt_tutsplus_-8IoQTg5Ybs&utm_medium=referral&utm_source=youtube.com&utm_content=description

This is part of the free Envato Tuts+ course 30 Days to Learn HTML & CSS: https://webdesign.tutsplus.com/courses/30-days-to-learn-html-css?utm_campaign=yt_tutsplus_-8IoQTg5Ybs&utm_medium=referral&utm_source=youtube.com&utm_content=description

For more great web design courses and tutorials go to: https://webdesign.tutsplus.com?utm_campaign=yt_tutsplus_-8IoQTg5Ybs&utm_medium=referral&utm_source=youtube.com&utm_content=description

- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
Envato Tuts+
Discover free how-to tutorials and online courses. Design a logo, create a website, build an app, or learn a new skill: https://tutsplus.com?utm_campaign=yt_tutsplus_-8IoQTg5Ybs&utm_medium=referral&utm_source=youtube.com&utm_content=description

Envato Elements
All the creative assets you need under one subscription. Customize your project by adding unique photos, fonts, graphics, and themes.
► Download Unlimited Stock Photos, Fonts & Templates with Envato Elements: https://elements.envato.com?utm_campaign=yt_tutsplus_-8IoQTg5Ybs&utm_medium=referral&utm_source=youtube.com&utm_content=description

► Subscribe to Envato Tuts+ on YouTube: https://www.youtube.com/tutsplus
► Follow Envato Tuts+ on Twitter: https://twitter.com/tutsplus
► Follow Envato Tuts+ on Facebook: https://www.facebook.com/tutsplus
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -', 'https://i.ytimg.com/vi/-8IoQTg5Ybs/default.jpg', 'Day 2: Finding a Proper Code Editor (30 Days to Learn HTML & CSS)', '00:07:16', 3, 1, '2019-11-13 10:53:50.25+05:30', '2019-11-13 10:53:50.25+05:30');
INSERT INTO public."Lessons" (id, url, description, "thumbnailUrl", title, duration, "seqNo", "courseId", "createdAt", "updatedAt") VALUES (4, 'https://www.youtube.com/watch?v=KHT6scxGm38', 'Welcome to Day 3. Today we''re going to cover how to create a list of items using HTML.

► Browse WordPress Themes and Plugins: https://elements.envato.com/wordpress?utm_campaign=yt_tutsplus_KHT6scxGm38&utm_medium=referral&utm_source=youtube.com&utm_content=description

This is part of the free Envato Tuts+ course 30 Days to Learn HTML & CSS: https://webdesign.tutsplus.com/courses/30-days-to-learn-html-css?utm_campaign=yt_tutsplus_KHT6scxGm38&utm_medium=referral&utm_source=youtube.com&utm_content=description

For more great web design courses and tutorials go to: https://webdesign.tutsplus.com?utm_campaign=yt_tutsplus_KHT6scxGm38&utm_medium=referral&utm_source=youtube.com&utm_content=description

- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
Envato Tuts+
Discover free how-to tutorials and online courses. Design a logo, create a website, build an app, or learn a new skill: https://tutsplus.com?utm_campaign=yt_tutsplus_KHT6scxGm38&utm_medium=referral&utm_source=youtube.com&utm_content=description

Envato Elements
All the creative assets you need under one subscription. Customize your project by adding unique photos, fonts, graphics, and themes.
► Download Unlimited Stock Photos, Fonts & Templates with Envato Elements: https://elements.envato.com?utm_campaign=yt_tutsplus_KHT6scxGm38&utm_medium=referral&utm_source=youtube.com&utm_content=description

► Subscribe to Envato Tuts+ on YouTube: https://www.youtube.com/tutsplus
► Follow Envato Tuts+ on Twitter: https://twitter.com/tutsplus
► Follow Envato Tuts+ on Facebook: https://www.facebook.com/tutsplus
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -', 'https://i.ytimg.com/vi/KHT6scxGm38/default.jpg', 'Day 3: Lists (30 Days to Learn HTML & CSS)', '00:12:37', 4, 1, '2019-11-13 10:53:50.25+05:30', '2019-11-13 10:53:50.25+05:30');
INSERT INTO public."Lessons" (id, url, description, "thumbnailUrl", title, duration, "seqNo", "courseId", "createdAt", "updatedAt") VALUES (42, 'https://www.youtube.com/watch?v=RIPYsKx1iiU', 'Today we build a Gmail style interaction for holding shift while you select checkboxes. Grab all the exercises and starter files over at https://JavaScript30.com', 'https://i.ytimg.com/vi/RIPYsKx1iiU/default.jpg', 'JS Checkbox Challenge', '00:11:19', 10, 2, '2019-11-13 10:53:50.25+05:30', '2019-11-13 10:53:50.25+05:30');
INSERT INTO public."Lessons" (id, url, description, "thumbnailUrl", title, duration, "seqNo", "courseId", "createdAt", "updatedAt") VALUES (43, 'https://www.youtube.com/watch?v=yx-HYerClEA', 'Today we build a custom HTML5 video player interface with HTML, CSS and JavaScript. Grab all the exercises and starter files over at https://JavaScript30.com', 'https://i.ytimg.com/vi/yx-HYerClEA/default.jpg', 'Custom HTML5 Video Player ', '00:24:34', 11, 2, '2019-11-13 10:53:50.25+05:30', '2019-11-13 10:53:50.25+05:30');
INSERT INTO public."Lessons" (id, url, description, "thumbnailUrl", title, duration, "seqNo", "courseId", "createdAt", "updatedAt") VALUES (44, 'https://www.youtube.com/watch?v=_A5eVOIqGLU', 'Today we learn about Key sequence detection with JavaScript. Grab all the exercises and starter files over at https://JavaScript30.com', 'https://i.ytimg.com/vi/_A5eVOIqGLU/default.jpg', 'JavaScript KONAMI CODE', '00:05:09', 12, 2, '2019-11-13 10:53:50.25+05:30', '2019-11-13 10:53:50.25+05:30');
INSERT INTO public."Lessons" (id, url, description, "thumbnailUrl", title, duration, "seqNo", "courseId", "createdAt", "updatedAt") VALUES (5, 'https://www.youtube.com/watch?v=Pf8xmAZYZC4', 'While we touched on parent-child relationships in the previous episode, we need to focus on it a little more specifically today.

► Browse WordPress Themes and Plugins: https://elements.envato.com/wordpress?utm_campaign=yt_tutsplus_Pf8xmAZYZC4&utm_medium=referral&utm_source=youtube.com&utm_content=description

This is part of the free Envato Tuts+ course 30 Days to Learn HTML & CSS: https://webdesign.tutsplus.com/courses/30-days-to-learn-html-css?utm_campaign=yt_tutsplus_Pf8xmAZYZC4&utm_medium=referral&utm_source=youtube.com&utm_content=description

For more great web design courses and tutorials go to: https://webdesign.tutsplus.com?utm_campaign=yt_tutsplus_Pf8xmAZYZC4&utm_medium=referral&utm_source=youtube.com&utm_content=description

- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
Envato Tuts+
Discover free how-to tutorials and online courses. Design a logo, create a website, build an app, or learn a new skill: https://tutsplus.com?utm_campaign=yt_tutsplus_Pf8xmAZYZC4&utm_medium=referral&utm_source=youtube.com&utm_content=description

Envato Elements
All the creative assets you need under one subscription. Customize your project by adding unique photos, fonts, graphics, and themes.
► Download Unlimited Stock Photos, Fonts & Templates with Envato Elements: https://elements.envato.com?utm_campaign=yt_tutsplus_Pf8xmAZYZC4&utm_medium=referral&utm_source=youtube.com&utm_content=description

► Subscribe to Envato Tuts+ on YouTube: https://www.youtube.com/tutsplus
► Follow Envato Tuts+ on Twitter: https://twitter.com/tutsplus
► Follow Envato Tuts+ on Facebook: https://www.facebook.com/tutsplus
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -', 'https://i.ytimg.com/vi/Pf8xmAZYZC4/default.jpg', 'Day 4: Parent-Child Relationships (30 Days to Learn HTML & CSS)', '00:05:19', 5, 1, '2019-11-13 10:53:50.25+05:30', '2019-11-13 10:53:50.25+05:30');
INSERT INTO public."Lessons" (id, url, description, "thumbnailUrl", title, duration, "seqNo", "courseId", "createdAt", "updatedAt") VALUES (6, 'https://www.youtube.com/watch?v=1JFeWDZ-2D8', 'Up until now, we''ve only briefly touched on the idea of headings. Let''s dig a bit deeper and learn about all of the headings that are available to us.

► Browse WordPress Themes and Plugins: https://elements.envato.com/wordpress?utm_campaign=yt_tutsplus_1JFeWDZ-2D8&utm_medium=referral&utm_source=youtube.com&utm_content=description

This is part of the free Envato Tuts+ course 30 Days to Learn HTML & CSS: https://webdesign.tutsplus.com/courses/30-days-to-learn-html-css?utm_campaign=yt_tutsplus_1JFeWDZ-2D8&utm_medium=referral&utm_source=youtube.com&utm_content=description

utm_campaign=yt_tutsplus_1JFeWDZ-2D8&utm_medium=referral&utm_source=youtube.com&utm_content=description

For more great web design courses and tutorials go to: https://webdesign.tutsplus.com?utm_campaign=yt_tutsplus_1JFeWDZ-2D8&utm_medium=referral&utm_source=youtube.com&utm_content=description

- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
Envato Tuts+
Discover free how-to tutorials and online courses. Design a logo, create a website, build an app, or learn a new skill: https://tutsplus.com?utm_campaign=yt_tutsplus_1JFeWDZ-2D8&utm_medium=referral&utm_source=youtube.com&utm_content=description

Envato Elements
All the creative assets you need under one subscription. Customize your project by adding unique photos, fonts, graphics, and themes.
► Download Unlimited Stock Photos, Fonts & Templates with Envato Elements: https://elements.envato.com?utm_campaign=yt_tutsplus_1JFeWDZ-2D8&utm_medium=referral&utm_source=youtube.com&utm_content=description

► Subscribe to Envato Tuts+ on YouTube: https://www.youtube.com/tutsplus
► Follow Envato Tuts+ on Twitter: https://twitter.com/tutsplus
► Follow Envato Tuts+ on Facebook: https://www.facebook.com/tutsplus
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -', 'https://i.ytimg.com/vi/1JFeWDZ-2D8/default.jpg', 'Day 5: Heading Tags (30 Days to Learn HTML & CSS)', '00:03:42', 6, 1, '2019-11-13 10:53:50.25+05:30', '2019-11-13 10:53:50.25+05:30');
INSERT INTO public."Lessons" (id, url, description, "thumbnailUrl", title, duration, "seqNo", "courseId", "createdAt", "updatedAt") VALUES (7, 'https://www.youtube.com/watch?v=P7KU6mqdmJ0', 'Sometimes we need to quote somebody, and we can do that within HTML by using what''s known as the blockquote element.

► Browse WordPress Themes and Plugins: https://elements.envato.com/wordpress?utm_campaign=yt_tutsplus_P7KU6mqdmJ0&utm_medium=referral&utm_source=youtube.com&utm_content=description

This is part of the free Envato Tuts+ course 30 Days to Learn HTML & CSS: https://webdesign.tutsplus.com/courses/30-days-to-learn-html-css?utm_campaign=yt_tutsplus_P7KU6mqdmJ0&utm_medium=referral&utm_source=youtube.com&utm_content=description

For more great web design courses and tutorials go to: https://webdesign.tutsplus.com?utm_campaign=yt_tutsplus_P7KU6mqdmJ0&utm_medium=referral&utm_source=youtube.com&utm_content=description

- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
Envato Tuts+
Discover free how-to tutorials and online courses. Design a logo, create a website, build an app, or learn a new skill: https://tutsplus.com?utm_campaign=yt_tutsplus_P7KU6mqdmJ0&utm_medium=referral&utm_source=youtube.com&utm_content=description

Envato Elements
All the creative assets you need under one subscription. Customize your project by adding unique photos, fonts, graphics, and themes.
► Download Unlimited Stock Photos, Fonts & Templates with Envato Elements: https://elements.envato.com?utm_campaign=yt_tutsplus_P7KU6mqdmJ0&utm_medium=referral&utm_source=youtube.com&utm_content=description

► Subscribe to Envato Tuts+ on YouTube: https://www.youtube.com/tutsplus
► Follow Envato Tuts+ on Twitter: https://twitter.com/tutsplus
► Follow Envato Tuts+ on Facebook: https://www.facebook.com/tutsplus
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -', 'https://i.ytimg.com/vi/P7KU6mqdmJ0/default.jpg', 'Day 6: Blockquotes (30 Days to Learn HTML & CSS)', '00:02:36', 7, 1, '2019-11-13 10:53:50.25+05:30', '2019-11-13 10:53:50.25+05:30');
INSERT INTO public."Lessons" (id, url, description, "thumbnailUrl", title, duration, "seqNo", "courseId", "createdAt", "updatedAt") VALUES (8, 'https://www.youtube.com/watch?v=xIFZdFeGgoE', 'Today we''re going to learn about anchor tags. They allow us to connect one page to another.

► Browse WordPress Themes and Plugins: https://elements.envato.com/wordpress?utm_campaign=yt_tutsplus_xIFZdFeGgoE&utm_medium=referral&utm_source=youtube.com&utm_content=description

This is part of the free Envato Tuts+ course 30 Days to Learn HTML & CSS: https://webdesign.tutsplus.com/courses/30-days-to-learn-html-css?utm_campaign=yt_tutsplus_xIFZdFeGgoE&utm_medium=referral&utm_source=youtube.com&utm_content=description

For more great web design courses and tutorials go to: https://webdesign.tutsplus.com?utm_campaign=yt_tutsplus_xIFZdFeGgoE&utm_medium=referral&utm_source=youtube.com&utm_content=description

- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
Envato Tuts+
Discover free how-to tutorials and online courses. Design a logo, create a website, build an app, or learn a new skill: https://tutsplus.com?utm_campaign=yt_tutsplus_xIFZdFeGgoE&utm_medium=referral&utm_source=youtube.com&utm_content=description

Envato Elements
All the creative assets you need under one subscription. Customize your project by adding unique photos, fonts, graphics, and themes.
► Download Unlimited Stock Photos, Fonts & Templates with Envato Elements: https://elements.envato.com?utm_campaign=yt_tutsplus_xIFZdFeGgoE&utm_medium=referral&utm_source=youtube.com&utm_content=description

► Subscribe to Envato Tuts+ on YouTube: https://www.youtube.com/tutsplus
► Follow Envato Tuts+ on Twitter: https://twitter.com/tutsplus
► Follow Envato Tuts+ on Facebook: https://www.facebook.com/tutsplus
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -', 'https://i.ytimg.com/vi/xIFZdFeGgoE/default.jpg', 'Day 7: Anchors (30 Days to Learn HTML & CSS)', '00:08:59', 8, 1, '2019-11-13 10:53:50.25+05:30', '2019-11-13 10:53:50.25+05:30');
INSERT INTO public."Lessons" (id, url, description, "thumbnailUrl", title, duration, "seqNo", "courseId", "createdAt", "updatedAt") VALUES (9, 'https://www.youtube.com/watch?v=o1Vqr1MdRmg', 'In the previous episode we noted how, by default, the browser will make anchor tags blue if you''ve never visited the link before. In this lesson, we''ll learn how to customize this by using an attribute called ''style''. Then, we''ll explore how to achieve the same thing by using a CSS stylesheet.

► Browse WordPress Themes and Plugins: https://elements.envato.com/wordpress?utm_campaign=yt_tutsplus_o1Vqr1MdRmg&utm_medium=referral&utm_source=youtube.com&utm_content=description

This is part of the free Envato Tuts+ course 30 Days to Learn HTML & CSS: https://webdesign.tutsplus.com/courses/30-days-to-learn-html-css?utm_campaign=yt_tutsplus_o1Vqr1MdRmg&utm_medium=referral&utm_source=youtube.com&utm_content=description

For more great web design courses and tutorials go to: https://webdesign.tutsplus.com?utm_campaign=yt_tutsplus_o1Vqr1MdRmg&utm_medium=referral&utm_source=youtube.com&utm_content=description

- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
Envato Tuts+
Discover free how-to tutorials and online courses. Design a logo, create a website, build an app, or learn a new skill: https://tutsplus.com?utm_campaign=yt_tutsplus_o1Vqr1MdRmg&utm_medium=referral&utm_source=youtube.com&utm_content=description

Envato Elements
All the creative assets you need under one subscription. Customize your project by adding unique photos, fonts, graphics, and themes.
► Download Unlimited Stock Photos, Fonts & Templates with Envato Elements: https://elements.envato.com?utm_campaign=yt_tutsplus_o1Vqr1MdRmg&utm_medium=referral&utm_source=youtube.com&utm_content=description

► Subscribe to Envato Tuts+ on YouTube: https://www.youtube.com/tutsplus
► Follow Envato Tuts+ on Twitter: https://twitter.com/tutsplus
► Follow Envato Tuts+ on Facebook: https://www.facebook.com/tutsplus
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -', 'https://i.ytimg.com/vi/o1Vqr1MdRmg/default.jpg', 'Day 8: Your First Stylesheet (30 Days to Learn HTML & CSS)', '00:09:47', 9, 1, '2019-11-13 10:53:50.25+05:30', '2019-11-13 10:53:50.25+05:30');
INSERT INTO public."Lessons" (id, url, description, "thumbnailUrl", title, duration, "seqNo", "courseId", "createdAt", "updatedAt") VALUES (10, 'https://www.youtube.com/watch?v=g7js1fW4AZw', 'It''s considered a best practice to always divide your images, CSS files and JavaScript files into their own folders. In this lesson you''ll learn about making sure all of your HTML & CSS projects are well organized and clean.

► Browse WordPress Themes and Plugins: https://elements.envato.com/wordpress?utm_campaign=yt_tutsplus_g7js1fW4AZw&utm_medium=referral&utm_source=youtube.com&utm_content=description

This is part of the free Envato Tuts+ course 30 Days to Learn HTML & CSS: https://webdesign.tutsplus.com/courses/30-days-to-learn-html-css?utm_campaign=yt_tutsplus_g7js1fW4AZw&utm_medium=referral&utm_source=youtube.com&utm_content=description

For more great web design courses and tutorials go to: https://webdesign.tutsplus.com?utm_campaign=yt_tutsplus_g7js1fW4AZw&utm_medium=referral&utm_source=youtube.com&utm_content=description

- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
Envato Tuts+
Discover free how-to tutorials and online courses. Design a logo, create a website, build an app, or learn a new skill: https://tutsplus.com?utm_campaign=yt_tutsplus_g7js1fW4AZw&utm_medium=referral&utm_source=youtube.com&utm_content=description

Envato Elements
All the creative assets you need under one subscription. Customize your project by adding unique photos, fonts, graphics, and themes.
► Download Unlimited Stock Photos, Fonts & Templates with Envato Elements: https://elements.envato.com?utm_campaign=yt_tutsplus_g7js1fW4AZw&utm_medium=referral&utm_source=youtube.com&utm_content=description

► Subscribe to Envato Tuts+ on YouTube: https://www.youtube.com/tutsplus
► Follow Envato Tuts+ on Twitter: https://twitter.com/tutsplus
► Follow Envato Tuts+ on Facebook: https://www.facebook.com/tutsplus
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -', 'https://i.ytimg.com/vi/g7js1fW4AZw/default.jpg', 'Day 9: Clean Project Structures (30 Days to Learn HTML & CSS)', '00:01:59', 10, 1, '2019-11-13 10:53:50.25+05:30', '2019-11-13 10:53:50.25+05:30');
INSERT INTO public."Lessons" (id, url, description, "thumbnailUrl", title, duration, "seqNo", "courseId", "createdAt", "updatedAt") VALUES (11, 'https://www.youtube.com/watch?v=xLDZvePzgK8', 'We want to be able to display an image on our HTML page. In this lesson, we''ll learn the various ways to achieve this.

► Browse WordPress Themes and Plugins: https://elements.envato.com/wordpress?utm_campaign=yt_tutsplus_xLDZvePzgK8&utm_medium=referral&utm_source=youtube.com&utm_content=description

This is part of the free Envato Tuts+ course 30 Days to Learn HTML & CSS: https://webdesign.tutsplus.com/courses/30-days-to-learn-html-css?utm_campaign=yt_tutsplus_xLDZvePzgK8&utm_medium=referral&utm_source=youtube.com&utm_content=description

For more great web design courses and tutorials go to: https://webdesign.tutsplus.com?utm_campaign=yt_tutsplus_xLDZvePzgK8&utm_medium=referral&utm_source=youtube.com&utm_content=description

- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
Envato Tuts+
Discover free how-to tutorials and online courses. Design a logo, create a website, build an app, or learn a new skill: https://tutsplus.com?utm_campaign=yt_tutsplus_xLDZvePzgK8&utm_medium=referral&utm_source=youtube.com&utm_content=description

Envato Elements
All the creative assets you need under one subscription. Customize your project by adding unique photos, fonts, graphics, and themes.
► Download Unlimited Stock Photos, Fonts & Templates with Envato Elements: https://elements.envato.com?utm_campaign=yt_tutsplus_xLDZvePzgK8&utm_medium=referral&utm_source=youtube.com&utm_content=description

► Subscribe to Envato Tuts+ on YouTube: https://www.youtube.com/tutsplus
► Follow Envato Tuts+ on Twitter: https://twitter.com/tutsplus
► Follow Envato Tuts+ on Facebook: https://www.facebook.com/tutsplus
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -', 'https://i.ytimg.com/vi/xLDZvePzgK8/default.jpg', 'Day 10: Images (30 Days to Learn HTML & CSS)', '00:04:34', 11, 1, '2019-11-13 10:53:50.25+05:30', '2019-11-13 10:53:50.25+05:30');
INSERT INTO public."Lessons" (id, url, description, "thumbnailUrl", title, duration, "seqNo", "courseId", "createdAt", "updatedAt") VALUES (12, 'https://www.youtube.com/watch?v=28z80vRCHYo', 'Divs are a way to position your content, and allow you to style a variety of elements at once. You''ll use them often as you code in HTML and CSS.

► Browse WordPress Themes and Plugins: https://elements.envato.com/wordpress?utm_campaign=yt_tutsplus_28z80vRCHYo&utm_medium=referral&utm_source=youtube.com&utm_content=description

This is part of the free Envato Tuts+ course 30 Days to Learn HTML & CSS: https://webdesign.tutsplus.com/courses/30-days-to-learn-html-css?utm_campaign=yt_tutsplus_28z80vRCHYo&utm_medium=referral&utm_source=youtube.com&utm_content=description

For more great web design courses and tutorials go to: https://webdesign.tutsplus.com?utm_campaign=yt_tutsplus_28z80vRCHYo&utm_medium=referral&utm_source=youtube.com&utm_content=description

- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
Envato Tuts+
Discover free how-to tutorials and online courses. Design a logo, create a website, build an app, or learn a new skill: https://tutsplus.com?utm_campaign=yt_tutsplus_28z80vRCHYo&utm_medium=referral&utm_source=youtube.com&utm_content=description

Envato Elements
All the creative assets you need under one subscription. Customize your project by adding unique photos, fonts, graphics, and themes.
► Download Unlimited Stock Photos, Fonts & Templates with Envato Elements: https://elements.envato.com?utm_campaign=yt_tutsplus_28z80vRCHYo&utm_medium=referral&utm_source=youtube.com&utm_content=description

► Subscribe to Envato Tuts+ on YouTube: https://www.youtube.com/tutsplus
► Follow Envato Tuts+ on Twitter: https://twitter.com/tutsplus
► Follow Envato Tuts+ on Facebook: https://www.facebook.com/tutsplus
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -', 'https://i.ytimg.com/vi/28z80vRCHYo/default.jpg', 'Day 11: The Necessity of Divs (30 Days to Learn HTML & CSS)', '00:07:12', 12, 1, '2019-11-13 10:53:50.25+05:30', '2019-11-13 10:53:50.25+05:30');
INSERT INTO public."Lessons" (id, url, description, "thumbnailUrl", title, duration, "seqNo", "courseId", "createdAt", "updatedAt") VALUES (13, 'https://www.youtube.com/watch?v=4A2NP5TdDBg', 'In today''s lesson, we''re going to be taking a look at IDs and classes. We can use these to assign labels to specific elements so that we can then target them within our stylesheets.

► Browse WordPress Themes and Plugins: https://elements.envato.com/wordpress?utm_campaign=yt_tutsplus_4A2NP5TdDBg&utm_medium=referral&utm_source=youtube.com&utm_content=description

This is part of the free Envato Tuts+ course 30 Days to Learn HTML & CSS: https://webdesign.tutsplus.com/courses/30-days-to-learn-html-css?utm_campaign=yt_tutsplus_4A2NP5TdDBg&utm_medium=referral&utm_source=youtube.com&utm_content=description

For more great web design courses and tutorials go to: https://webdesign.tutsplus.com?utm_campaign=yt_tutsplus_4A2NP5TdDBg&utm_medium=referral&utm_source=youtube.com&utm_content=description

- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
Envato Tuts+
Discover free how-to tutorials and online courses. Design a logo, create a website, build an app, or learn a new skill: https://tutsplus.com?utm_campaign=yt_tutsplus_4A2NP5TdDBg&utm_medium=referral&utm_source=youtube.com&utm_content=description

Envato Elements
All the creative assets you need under one subscription. Customize your project by adding unique photos, fonts, graphics, and themes.
► Download Unlimited Stock Photos, Fonts & Templates with Envato Elements: https://elements.envato.com?utm_campaign=yt_tutsplus_4A2NP5TdDBg&utm_medium=referral&utm_source=youtube.com&utm_content=description

► Subscribe to Envato Tuts+ on YouTube: https://www.youtube.com/tutsplus
► Follow Envato Tuts+ on Twitter: https://twitter.com/tutsplus
► Follow Envato Tuts+ on Facebook: https://www.facebook.com/tutsplus
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -', 'https://i.ytimg.com/vi/4A2NP5TdDBg/default.jpg', 'Day 12: IDs and Classes (30 Days to Learn HTML & CSS)', '00:08:30', 13, 1, '2019-11-13 10:53:50.25+05:30', '2019-11-13 10:53:50.25+05:30');
INSERT INTO public."Lessons" (id, url, description, "thumbnailUrl", title, duration, "seqNo", "courseId", "createdAt", "updatedAt") VALUES (45, 'https://www.youtube.com/watch?v=uzRsENVD3W8', 'Today we learn how to use the scroll event to detect when a nav should be fixed.', 'https://i.ytimg.com/vi/uzRsENVD3W8/default.jpg', 'Vanilla JavaScript Slide In on Scroll ', '00:12:58', 13, 2, '2019-11-13 10:53:50.25+05:30', '2019-11-13 10:53:50.25+05:30');
INSERT INTO public."Lessons" (id, url, description, "thumbnailUrl", title, duration, "seqNo", "courseId", "createdAt", "updatedAt") VALUES (46, 'https://www.youtube.com/watch?v=YnfwDQ5XYF4', 'Today we talk about something that isn''t all that fun, but is important to know - reference vs copy. Grab all the exercises and starter files over at https://JavaScript30.com', 'https://i.ytimg.com/vi/YnfwDQ5XYF4/default.jpg', 'JavaScript Fundamentals: Reference VS Cop', '00:11:29', 14, 2, '2019-11-13 10:53:50.25+05:30', '2019-11-13 10:53:50.25+05:30');
INSERT INTO public."Lessons" (id, url, description, "thumbnailUrl", title, duration, "seqNo", "courseId", "createdAt", "updatedAt") VALUES (57, 'https://www.youtube.com/watch?v=F1anRyL37lE', 'All about those confusing event things in JavaScript. Grab all the exercises and starter files over at https://JavaScript30.com', 'https://i.ytimg.com/vi/F1anRyL37lE/default.jpg', 'JavaScript Event Capture, Propagation and Bubbling ', '00:09:10', 25, 2, '2019-11-13 10:53:50.25+05:30', '2019-11-13 10:53:50.25+05:30');
INSERT INTO public."Lessons" (id, url, description, "thumbnailUrl", title, duration, "seqNo", "courseId", "createdAt", "updatedAt") VALUES (14, 'https://www.youtube.com/watch?v=bEuTfgwb6lU', 'For today, you''re not going to be learning from me specifically -- you''re going to put some of what you''ve learned to the test in your first assignment!

► Browse WordPress Themes and Plugins: https://elements.envato.com/wordpress?utm_campaign=yt_tutsplus_bEuTfgwb6lU&utm_medium=referral&utm_source=youtube.com&utm_content=description

This is part of the free Envato Tuts+ course 30 Days to Learn HTML & CSS: https://webdesign.tutsplus.com/courses/30-days-to-learn-html-css?utm_campaign=yt_tutsplus_bEuTfgwb6lU&utm_medium=referral&utm_source=youtube.com&utm_content=description

For more great web design courses and tutorials go to: https://webdesign.tutsplus.com?utm_campaign=yt_tutsplus_bEuTfgwb6lU&utm_medium=referral&utm_source=youtube.com&utm_content=description

- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
Envato Tuts+
Discover free how-to tutorials and online courses. Design a logo, create a website, build an app, or learn a new skill: https://tutsplus.com?utm_campaign=yt_tutsplus_bEuTfgwb6lU&utm_medium=referral&utm_source=youtube.com&utm_content=description

Envato Elements
All the creative assets you need under one subscription. Customize your project by adding unique photos, fonts, graphics, and themes.
► Download Unlimited Stock Photos, Fonts & Templates with Envato Elements: https://elements.envato.com?utm_campaign=yt_tutsplus_bEuTfgwb6lU&utm_medium=referral&utm_source=youtube.com&utm_content=description

► Subscribe to Envato Tuts+ on YouTube: https://www.youtube.com/tutsplus
► Follow Envato Tuts+ on Twitter: https://twitter.com/tutsplus
► Follow Envato Tuts+ on Facebook: https://www.facebook.com/tutsplus
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -', 'https://i.ytimg.com/vi/bEuTfgwb6lU/default.jpg', 'Day 13: An Assignment (30 Days to Learn HTML & CSS)', '00:01:32', 14, 1, '2019-11-13 10:53:50.25+05:30', '2019-11-13 10:53:50.25+05:30');
INSERT INTO public."Lessons" (id, url, description, "thumbnailUrl", title, duration, "seqNo", "courseId", "createdAt", "updatedAt") VALUES (15, 'https://www.youtube.com/watch?v=yb_xJJXUvyg', 'Welcome back. Today we''re going to work through the solutions to the assignment set yesterday.

► Browse WordPress Themes and Plugins: https://elements.envato.com/wordpress?utm_campaign=yt_tutsplus_yb_xJJXUvyg&utm_medium=referral&utm_source=youtube.com&utm_content=description

This is part of the free Envato Tuts+ course 30 Days to Learn HTML & CSS: https://webdesign.tutsplus.com/courses/30-days-to-learn-html-css?utm_campaign=yt_tutsplus_yb_xJJXUvyg&utm_medium=referral&utm_source=youtube.com&utm_content=description

For more great web design courses and tutorials go to: https://webdesign.tutsplus.com?utm_campaign=yt_tutsplus_yb_xJJXUvyg&utm_medium=referral&utm_source=youtube.com&utm_content=description

- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
Envato Tuts+
Discover free how-to tutorials and online courses. Design a logo, create a website, build an app, or learn a new skill: https://tutsplus.com?utm_campaign=yt_tutsplus_yb_xJJXUvyg&utm_medium=referral&utm_source=youtube.com&utm_content=description

Envato Elements
All the creative assets you need under one subscription. Customize your project by adding unique photos, fonts, graphics, and themes.
► Download Unlimited Stock Photos, Fonts & Templates with Envato Elements: https://elements.envato.com?utm_campaign=yt_tutsplus_yb_xJJXUvyg&utm_medium=referral&utm_source=youtube.com&utm_content=description

► Subscribe to Envato Tuts+ on YouTube: https://www.youtube.com/tutsplus
► Follow Envato Tuts+ on Twitter: https://twitter.com/tutsplus
► Follow Envato Tuts+ on Facebook: https://www.facebook.com/tutsplus
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -', 'https://i.ytimg.com/vi/yb_xJJXUvyg/default.jpg', 'Day 14: Assignment Solutions (30 Days to Learn HTML & CSS)', '00:08:37', 15, 1, '2019-11-13 10:53:50.25+05:30', '2019-11-13 10:53:50.25+05:30');
INSERT INTO public."Lessons" (id, url, description, "thumbnailUrl", title, duration, "seqNo", "courseId", "createdAt", "updatedAt") VALUES (16, 'https://www.youtube.com/watch?v=4qEh8bwDW0I', 'Today I''m going to teach you about CSS floats. We can use floats to create the effect of columns.

► Browse WordPress Themes and Plugins: https://elements.envato.com/wordpress?utm_campaign=yt_tutsplus_4qEh8bwDW0I&utm_medium=referral&utm_source=youtube.com&utm_content=description

This is part of the free Envato Tuts+ course 30 Days to Learn HTML & CSS: https://webdesign.tutsplus.com/courses/30-days-to-learn-html-css?utm_campaign=yt_tutsplus_4qEh8bwDW0I&utm_medium=referral&utm_source=youtube.com&utm_content=description

For more great web design courses and tutorials go to: https://webdesign.tutsplus.com?utm_campaign=yt_tutsplus_4qEh8bwDW0I&utm_medium=referral&utm_source=youtube.com&utm_content=description

- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
Envato Tuts+
Discover free how-to tutorials and online courses. Design a logo, create a website, build an app, or learn a new skill: https://tutsplus.com?utm_campaign=yt_tutsplus_4qEh8bwDW0I&utm_medium=referral&utm_source=youtube.com&utm_content=description

Envato Elements
All the creative assets you need under one subscription. Customize your project by adding unique photos, fonts, graphics, and themes.
► Download Unlimited Stock Photos, Fonts & Templates with Envato Elements: https://elements.envato.com?utm_campaign=yt_tutsplus_4qEh8bwDW0I&utm_medium=referral&utm_source=youtube.com&utm_content=description

► Subscribe to Envato Tuts+ on YouTube: https://www.youtube.com/tutsplus
► Follow Envato Tuts+ on Twitter: https://twitter.com/tutsplus
► Follow Envato Tuts+ on Facebook: https://www.facebook.com/tutsplus
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -', 'https://i.ytimg.com/vi/4qEh8bwDW0I/default.jpg', 'Day 15: Floats, and a Simple Layout (30 Days to Learn HTML & CSS)', '00:13:57', 16, 1, '2019-11-13 10:53:50.25+05:30', '2019-11-13 10:53:50.25+05:30');
INSERT INTO public."Lessons" (id, url, description, "thumbnailUrl", title, duration, "seqNo", "courseId", "createdAt", "updatedAt") VALUES (17, 'https://www.youtube.com/watch?v=f62FD8t4aPU', 'Today we''re going to be focusing on navigation. How would you create a navigation list for your website? This is something that every web site has in common, so it''s really important you learn how to do this.

► Browse WordPress Themes and Plugins: https://elements.envato.com/wordpress?utm_campaign=yt_tutsplus_f62FD8t4aPU&utm_medium=referral&utm_source=youtube.com&utm_content=description

This is part of the free Envato Tuts+ course 30 Days to Learn HTML & CSS: https://webdesign.tutsplus.com/courses/30-days-to-learn-html-css?utm_campaign=yt_tutsplus_f62FD8t4aPU&utm_medium=referral&utm_source=youtube.com&utm_content=description

For more great web design courses and tutorials go to: https://webdesign.tutsplus.com?utm_campaign=yt_tutsplus_f62FD8t4aPU&utm_medium=referral&utm_source=youtube.com&utm_content=description

- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
Envato Tuts+
Discover free how-to tutorials and online courses. Design a logo, create a website, build an app, or learn a new skill: https://tutsplus.com?utm_campaign=yt_tutsplus_f62FD8t4aPU&utm_medium=referral&utm_source=youtube.com&utm_content=description

Envato Elements
All the creative assets you need under one subscription. Customize your project by adding unique photos, fonts, graphics, and themes.
► Download Unlimited Stock Photos, Fonts & Templates with Envato Elements: https://elements.envato.com?utm_campaign=yt_tutsplus_f62FD8t4aPU&utm_medium=referral&utm_source=youtube.com&utm_content=description

► Subscribe to Envato Tuts+ on YouTube: https://www.youtube.com/tutsplus
► Follow Envato Tuts+ on Twitter: https://twitter.com/tutsplus
► Follow Envato Tuts+ on Facebook: https://www.facebook.com/tutsplus
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -', 'https://i.ytimg.com/vi/f62FD8t4aPU/default.jpg', 'Day 16: Navigation and Lists (30 Days to Learn HTML & CSS)', '00:06:16', 17, 1, '2019-11-13 10:53:50.25+05:30', '2019-11-13 10:53:50.25+05:30');
INSERT INTO public."Lessons" (id, url, description, "thumbnailUrl", title, duration, "seqNo", "courseId", "createdAt", "updatedAt") VALUES (18, 'https://www.youtube.com/watch?v=4DS4z20ZGyI', '► Browse WordPress Themes and Plugins: https://elements.envato.com/wordpress?utm_campaign=yt_tutsplus_4DS4z20ZGyI&utm_medium=referral&utm_source=youtube.com&utm_content=description

Today we''re going to focus on forms. Contact forms, registration forms... what are the necessary HTML elements we should use to display form fields?

This is part of the free Envato Tuts+ course 30 Days to Learn HTML & CSS: https://webdesign.tutsplus.com/courses/30-days-to-learn-html-css?utm_campaign=yt_tutsplus_4DS4z20ZGyI&utm_medium=referral&utm_source=youtube.com&utm_content=description

For more great web design courses and tutorials go to: https://webdesign.tutsplus.com?utm_campaign=yt_tutsplus_4DS4z20ZGyI&utm_medium=referral&utm_source=youtube.com&utm_content=description

- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
Envato Tuts+
Discover free how-to tutorials and online courses. Design a logo, create a website, build an app, or learn a new skill: https://tutsplus.com?utm_campaign=yt_tutsplus_4DS4z20ZGyI&utm_medium=referral&utm_source=youtube.com&utm_content=description

Envato Elements
All the creative assets you need under one subscription. Customize your project by adding unique photos, fonts, graphics, and themes.
► Download Unlimited Stock Photos, Fonts & Templates with Envato Elements: https://elements.envato.com?utm_campaign=yt_tutsplus_4DS4z20ZGyI&utm_medium=referral&utm_source=youtube.com&utm_content=description

► Subscribe to Envato Tuts+ on YouTube: https://www.youtube.com/tutsplus
► Follow Envato Tuts+ on Twitter: https://twitter.com/tutsplus
► Follow Envato Tuts+ on Facebook: https://www.facebook.com/tutsplus
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -', 'https://i.ytimg.com/vi/4DS4z20ZGyI/default.jpg', 'Day 17: Introduction to Forms (30 Days to Learn HTML & CSS)', '00:15:47', 18, 1, '2019-11-13 10:53:50.25+05:30', '2019-11-13 10:53:50.25+05:30');
INSERT INTO public."Lessons" (id, url, description, "thumbnailUrl", title, duration, "seqNo", "courseId", "createdAt", "updatedAt") VALUES (19, 'https://www.youtube.com/watch?v=jnG3mtEhpRQ', 'Often you don''t want to use text for your logo. Even though it makes sense to add the name of your business within an H1 tag, you might prefer to add an image in place of your logo. How would you do that?

► Browse WordPress Themes and Plugins: https://elements.envato.com/wordpress?utm_campaign=yt_tutsplus_jnG3mtEhpRQ&utm_medium=referral&utm_source=youtube.com&utm_content=description

This is part of the free Envato Tuts+ course 30 Days to Learn HTML & CSS: https://webdesign.tutsplus.com/courses/30-days-to-learn-html-css?utm_campaign=yt_tutsplus_jnG3mtEhpRQ&utm_medium=referral&utm_source=youtube.com&utm_content=description

For more great web design courses and tutorials go to: https://webdesign.tutsplus.com?utm_campaign=yt_tutsplus_jnG3mtEhpRQ&utm_medium=referral&utm_source=youtube.com&utm_content=description

- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
Envato Tuts+
Discover free how-to tutorials and online courses. Design a logo, create a website, build an app, or learn a new skill: https://tutsplus.com?utm_campaign=yt_tutsplus_jnG3mtEhpRQ&utm_medium=referral&utm_source=youtube.com&utm_content=description

Envato Elements
All the creative assets you need under one subscription. Customize your project by adding unique photos, fonts, graphics, and themes.
► Download Unlimited Stock Photos, Fonts & Templates with Envato Elements: https://elements.envato.com?utm_campaign=yt_tutsplus_jnG3mtEhpRQ&utm_medium=referral&utm_source=youtube.com&utm_content=description

► Subscribe to Envato Tuts+ on YouTube: https://www.youtube.com/tutsplus
► Follow Envato Tuts+ on Twitter: https://twitter.com/tutsplus
► Follow Envato Tuts+ on Facebook: https://www.facebook.com/tutsplus
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -', 'https://i.ytimg.com/vi/jnG3mtEhpRQ/default.jpg', 'Day 18: Image Replacement (30 Days to Learn HTML & CSS)', '00:06:31', 19, 1, '2019-11-13 10:53:50.25+05:30', '2019-11-13 10:53:50.25+05:30');
INSERT INTO public."Lessons" (id, url, description, "thumbnailUrl", title, duration, "seqNo", "courseId", "createdAt", "updatedAt") VALUES (20, 'https://www.youtube.com/watch?v=AKMgc4rzTrc', 'Today we''re going to take a look at some of the various ways we can style our text. We''ll look at using fonts, color, letter spacing, and size.

► Browse WordPress Themes and Plugins: https://elements.envato.com/wordpress?utm_campaign=yt_tutsplus_AKMgc4rzTrc&utm_medium=referral&utm_source=youtube.com&utm_content=description

This is part of the free Envato Tuts+ course 30 Days to Learn HTML & CSS: https://webdesign.tutsplus.com/courses/30-days-to-learn-html-css?utm_campaign=yt_tutsplus_AKMgc4rzTrc&utm_medium=referral&utm_source=youtube.com&utm_content=description

For more great web design courses and tutorials go to: https://webdesign.tutsplus.com?utm_campaign=yt_tutsplus_AKMgc4rzTrc&utm_medium=referral&utm_source=youtube.com&utm_content=description

- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
Envato Tuts+
Discover free how-to tutorials and online courses. Design a logo, create a website, build an app, or learn a new skill: https://tutsplus.com?utm_campaign=yt_tutsplus_AKMgc4rzTrc&utm_medium=referral&utm_source=youtube.com&utm_content=description

Envato Elements
All the creative assets you need under one subscription. Customize your project by adding unique photos, fonts, graphics, and themes.
► Download Unlimited Stock Photos, Fonts & Templates with Envato Elements: https://elements.envato.com?utm_campaign=yt_tutsplus_AKMgc4rzTrc&utm_medium=referral&utm_source=youtube.com&utm_content=description

► Subscribe to Envato Tuts+ on YouTube: https://www.youtube.com/tutsplus
► Follow Envato Tuts+ on Twitter: https://twitter.com/tutsplus
► Follow Envato Tuts+ on Facebook: https://www.facebook.com/tutsplus
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -', 'https://i.ytimg.com/vi/AKMgc4rzTrc/default.jpg', 'Day 19: The Basics of Typography (30 Days to Learn HTML & CSS)', '00:10:21', 20, 1, '2019-11-13 10:53:50.25+05:30', '2019-11-13 10:53:50.25+05:30');
INSERT INTO public."Lessons" (id, url, description, "thumbnailUrl", title, duration, "seqNo", "courseId", "createdAt", "updatedAt") VALUES (21, 'https://www.youtube.com/watch?v=6Z8I8sOinUo', 'Today we''re going to take a look at something that confuses a lot of beginning HTML and CSS designers, and it''s called positioning. More specifically, the difference between what we call absolute positioning and relative positioning.

► Browse WordPress Themes and Plugins: https://elements.envato.com/wordpress?utm_campaign=yt_tutsplus_6Z8I8sOinUo&utm_medium=referral&utm_source=youtube.com&utm_content=description

This is part of the free Envato Tuts+ course 30 Days to Learn HTML & CSS: https://webdesign.tutsplus.com/courses/30-days-to-learn-html-css?utm_campaign=yt_tutsplus_6Z8I8sOinUo&utm_medium=referral&utm_source=youtube.com&utm_content=description

For more great web design courses and tutorials go to: https://webdesign.tutsplus.com?utm_campaign=yt_tutsplus_6Z8I8sOinUo&utm_medium=referral&utm_source=youtube.com&utm_content=description

- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
Envato Tuts+
Discover free how-to tutorials and online courses. Design a logo, create a website, build an app, or learn a new skill: https://tutsplus.com?utm_campaign=yt_tutsplus_6Z8I8sOinUo&utm_medium=referral&utm_source=youtube.com&utm_content=description

Envato Elements
All the creative assets you need under one subscription. Customize your project by adding unique photos, fonts, graphics, and themes.
► Download Unlimited Stock Photos, Fonts & Templates with Envato Elements: https://elements.envato.com?utm_campaign=yt_tutsplus_6Z8I8sOinUo&utm_medium=referral&utm_source=youtube.com&utm_content=description

► Subscribe to Envato Tuts+ on YouTube: https://www.youtube.com/tutsplus
► Follow Envato Tuts+ on Twitter: https://twitter.com/tutsplus
► Follow Envato Tuts+ on Facebook: https://www.facebook.com/tutsplus
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -', 'https://i.ytimg.com/vi/6Z8I8sOinUo/default.jpg', 'Day 20: Relative and Absolute Positioning (30 Days to Learn HTML & CSS)', '00:07:39', 21, 1, '2019-11-13 10:53:50.25+05:30', '2019-11-13 10:53:50.25+05:30');
INSERT INTO public."Lessons" (id, url, description, "thumbnailUrl", title, duration, "seqNo", "courseId", "createdAt", "updatedAt") VALUES (47, 'https://www.youtube.com/watch?v=YL1F4dCUlLc', 'Today we learn all about Local Storage in the browser and how to use something called Event Delegation to handle events on elements created in the future. 

Grab all the exercises and starter files over at https://JavaScript30.com', 'https://i.ytimg.com/vi/YL1F4dCUlLc/default.jpg', 'How LocalStorage and Event Delegation work', '00:30:24', 15, 2, '2019-11-13 10:53:50.25+05:30', '2019-11-13 10:53:50.25+05:30');
INSERT INTO public."Lessons" (id, url, description, "thumbnailUrl", title, duration, "seqNo", "courseId", "createdAt", "updatedAt") VALUES (48, 'https://www.youtube.com/watch?v=zaz9gLI-Xac', 'Grab all the exercises and starter files over at https://JavaScript30.com', 'https://i.ytimg.com/vi/zaz9gLI-Xac/default.jpg', 'CSS Text Shadow on Mouse Move Effect ', '00:11:23', 16, 2, '2019-11-13 10:53:50.25+05:30', '2019-11-13 10:53:50.25+05:30');
INSERT INTO public."Lessons" (id, url, description, "thumbnailUrl", title, duration, "seqNo", "courseId", "createdAt", "updatedAt") VALUES (22, 'https://www.youtube.com/watch?v=AqAFnB-z8-Q', 'Today we''re going to take a look at fragments. This will teach you the beginning process of converting designs to HTML and CSS.

► Browse WordPress Themes and Plugins: https://elements.envato.com/wordpress?utm_campaign=yt_tutsplus_AqAFnB-z8-Q&utm_medium=referral&utm_source=youtube.com&utm_content=description

This is part of the free Envato Tuts+ course 30 Days to Learn HTML & CSS: https://webdesign.tutsplus.com/courses/30-days-to-learn-html-css?utm_campaign=yt_tutsplus_AqAFnB-z8-Q&utm_medium=referral&utm_source=youtube.com&utm_content=description

For more great web design courses and tutorials go to: https://webdesign.tutsplus.com?utm_campaign=yt_tutsplus_AqAFnB-z8-Q&utm_medium=referral&utm_source=youtube.com&utm_content=description

- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
Envato Tuts+
Discover free how-to tutorials and online courses. Design a logo, create a website, build an app, or learn a new skill: https://tutsplus.com?utm_campaign=yt_tutsplus_AqAFnB-z8-Q&utm_medium=referral&utm_source=youtube.com&utm_content=description

Envato Elements
All the creative assets you need under one subscription. Customize your project by adding unique photos, fonts, graphics, and themes.
► Download Unlimited Stock Photos, Fonts & Templates with Envato Elements: https://elements.envato.com?utm_campaign=yt_tutsplus_AqAFnB-z8-Q&utm_medium=referral&utm_source=youtube.com&utm_content=description

► Subscribe to Envato Tuts+ on YouTube: https://www.youtube.com/tutsplus
► Follow Envato Tuts+ on Twitter: https://twitter.com/tutsplus
► Follow Envato Tuts+ on Facebook: https://www.facebook.com/tutsplus
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -', 'https://i.ytimg.com/vi/AqAFnB-z8-Q/default.jpg', 'Day 21: Creating a Website Fragment (30 Days to Learn HTML & CSS)', '00:30:46', 22, 1, '2019-11-13 10:53:50.25+05:30', '2019-11-13 10:53:50.25+05:30');
INSERT INTO public."Lessons" (id, url, description, "thumbnailUrl", title, duration, "seqNo", "courseId", "createdAt", "updatedAt") VALUES (23, 'https://www.youtube.com/watch?v=VIgxwR9AVrk', 'Let''s refer back to the markup we created in the previous lesson. Wouldn''t it be helpful to be notified when we make errors in creating our markup?

► Browse WordPress Themes and Plugins: https://elements.envato.com/wordpress?utm_campaign=yt_tutsplus_VIgxwR9AVrk&utm_medium=referral&utm_source=youtube.com&utm_content=description

This is part of the free Envato Tuts+ course 30 Days to Learn HTML & CSS: https://webdesign.tutsplus.com/courses/30-days-to-learn-html-css?utm_campaign=yt_tutsplus_VIgxwR9AVrk&utm_medium=referral&utm_source=youtube.com&utm_content=description

For more great web design courses and tutorials go to: https://webdesign.tutsplus.com?utm_campaign=yt_tutsplus_VIgxwR9AVrk&utm_medium=referral&utm_source=youtube.com&utm_content=description

- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
Envato Tuts+
Discover free how-to tutorials and online courses. Design a logo, create a website, build an app, or learn a new skill: https://tutsplus.com?utm_campaign=yt_tutsplus_VIgxwR9AVrk&utm_medium=referral&utm_source=youtube.com&utm_content=description

Envato Elements
All the creative assets you need under one subscription. Customize your project by adding unique photos, fonts, graphics, and themes.
► Download Unlimited Stock Photos, Fonts & Templates with Envato Elements: https://elements.envato.com?utm_campaign=yt_tutsplus_VIgxwR9AVrk&utm_medium=referral&utm_source=youtube.com&utm_content=description

► Subscribe to Envato Tuts+ on YouTube: https://www.youtube.com/tutsplus
► Follow Envato Tuts+ on Twitter: https://twitter.com/tutsplus
► Follow Envato Tuts+ on Facebook: https://www.facebook.com/tutsplus
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -', 'https://i.ytimg.com/vi/VIgxwR9AVrk/default.jpg', 'Day 22: The Importance of Validation (30 Days to Learn HTML & CSS)', '00:05:36', 23, 1, '2019-11-13 10:53:50.25+05:30', '2019-11-13 10:53:50.25+05:30');
INSERT INTO public."Lessons" (id, url, description, "thumbnailUrl", title, duration, "seqNo", "courseId", "createdAt", "updatedAt") VALUES (24, 'https://www.youtube.com/watch?v=65QhaSFuxdo', 'Zen coding is a popular way to rapidly create markup. You can grab it here.
Update -- It seems that the Zen Coding installation process for Sublime Text 2 has changed a bit in recent months. Refer here for instructions: http://jdfwarrior.tumblr.com/post/13204904090

► Browse WordPress Themes and Plugins: https://elements.envato.com/wordpress?utm_campaign=yt_tutsplus_65QhaSFuxdo&utm_medium=referral&utm_source=youtube.com&utm_content=description

This is part of the free Envato Tuts+ course 30 Days to Learn HTML & CSS: https://webdesign.tutsplus.com/courses/30-days-to-learn-html-css?utm_campaign=yt_tutsplus_65QhaSFuxdo&utm_medium=referral&utm_source=youtube.com&utm_content=description

For more great web design courses and tutorials go to: https://webdesign.tutsplus.com?utm_campaign=yt_tutsplus_65QhaSFuxdo&utm_medium=referral&utm_source=youtube.com&utm_content=description

- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
Envato Tuts+
Discover free how-to tutorials and online courses. Design a logo, create a website, build an app, or learn a new skill: https://tutsplus.com?utm_campaign=yt_tutsplus_65QhaSFuxdo&utm_medium=referral&utm_source=youtube.com&utm_content=description

Envato Elements
All the creative assets you need under one subscription. Customize your project by adding unique photos, fonts, graphics, and themes.
► Download Unlimited Stock Photos, Fonts & Templates with Envato Elements: https://elements.envato.com?utm_campaign=yt_tutsplus_65QhaSFuxdo&utm_medium=referral&utm_source=youtube.com&utm_content=description

► Subscribe to Envato Tuts+ on YouTube: https://www.youtube.com/tutsplus
► Follow Envato Tuts+ on Twitter: https://twitter.com/tutsplus
► Follow Envato Tuts+ on Facebook: https://www.facebook.com/tutsplus
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -', 'https://i.ytimg.com/vi/65QhaSFuxdo/default.jpg', 'Day 23: Zen Coding (30 Days to Learn HTML & CSS)', '00:06:33', 24, 1, '2019-11-13 10:53:50.25+05:30', '2019-11-13 10:53:50.25+05:30');
INSERT INTO public."Lessons" (id, url, description, "thumbnailUrl", title, duration, "seqNo", "courseId", "createdAt", "updatedAt") VALUES (25, 'https://www.youtube.com/watch?v=IgFfsZfkd24', 'In the next two lessons, I''m going to teach you about using reset stylesheets and grids.

► Browse WordPress Themes and Plugins: https://elements.envato.com/wordpress?utm_campaign=yt_tutsplus_IgFfsZfkd24&utm_medium=referral&utm_source=youtube.com&utm_content=description

This is part of the free Envato Tuts+ course 30 Days to Learn HTML & CSS: https://webdesign.tutsplus.com/courses/30-days-to-learn-html-css?utm_campaign=yt_tutsplus_IgFfsZfkd24&utm_medium=referral&utm_source=youtube.com&utm_content=description

For more great web design courses and tutorials go to: https://webdesign.tutsplus.com?utm_campaign=yt_tutsplus_IgFfsZfkd24&utm_medium=referral&utm_source=youtube.com&utm_content=description

- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
Envato Tuts+
Discover free how-to tutorials and online courses. Design a logo, create a website, build an app, or learn a new skill: https://tutsplus.com?utm_campaign=yt_tutsplus_IgFfsZfkd24&utm_medium=referral&utm_source=youtube.com&utm_content=description

Envato Elements
All the creative assets you need under one subscription. Customize your project by adding unique photos, fonts, graphics, and themes.
► Download Unlimited Stock Photos, Fonts & Templates with Envato Elements: https://elements.envato.com?utm_campaign=yt_tutsplus_IgFfsZfkd24&utm_medium=referral&utm_source=youtube.com&utm_content=description

► Subscribe to Envato Tuts+ on YouTube: https://www.youtube.com/tutsplus
► Follow Envato Tuts+ on Twitter: https://twitter.com/tutsplus
► Follow Envato Tuts+ on Facebook: https://www.facebook.com/tutsplus
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -', 'https://i.ytimg.com/vi/IgFfsZfkd24/default.jpg', 'Day 24: Resets and Normalizing (30 Days to Learn HTML & CSS)', '00:05:02', 25, 1, '2019-11-13 10:53:50.25+05:30', '2019-11-13 10:53:50.25+05:30');
INSERT INTO public."Lessons" (id, url, description, "thumbnailUrl", title, duration, "seqNo", "courseId", "createdAt", "updatedAt") VALUES (49, 'https://www.youtube.com/watch?v=PEEo-2mRQ7A', 'Today we learn how to sort HTML elements based based on their text content. Grab all the exercises and starter files over at https://JavaScript30.com', 'https://i.ytimg.com/vi/PEEo-2mRQ7A/default.jpg', 'JavaScript Practice: Sorting Band Names without articles ', '00:07:10', 17, 2, '2019-11-13 10:53:50.25+05:30', '2019-11-13 10:53:50.25+05:30');
INSERT INTO public."Lessons" (id, url, description, "thumbnailUrl", title, duration, "seqNo", "courseId", "createdAt", "updatedAt") VALUES (50, 'https://www.youtube.com/watch?v=SadWPo2KZWg', '', 'https://i.ytimg.com/vi/SadWPo2KZWg/default.jpg', 'How JavaScript''s Array Reduce Works ', '00:12:57', 18, 2, '2019-11-13 10:53:50.25+05:30', '2019-11-13 10:53:50.25+05:30');
INSERT INTO public."Lessons" (id, url, description, "thumbnailUrl", title, duration, "seqNo", "courseId", "createdAt", "updatedAt") VALUES (51, 'https://www.youtube.com/watch?v=ElWFcBlVk-o', 'today we use getUserMedia and Canvas to capture a video stream from a user''s webcam and manipulate the pixels. Grab all the exercises and starter files over at https://JavaScript30.com', 'https://i.ytimg.com/vi/ElWFcBlVk-o/default.jpg', 'Unreal Webcam Fun with getUserMedia() and HTML5 Canvas ', '00:30:20', 19, 2, '2019-11-13 10:53:50.25+05:30', '2019-11-13 10:53:50.25+05:30');
INSERT INTO public."Lessons" (id, url, description, "thumbnailUrl", title, duration, "seqNo", "courseId", "createdAt", "updatedAt") VALUES (26, 'https://www.youtube.com/watch?v=tm84gW72KFU', 'It''s fairly common for designers to use CSS frameworks. They''re a collection of styles that make it easier to build our designs. One of the most popular is called the 960 Grid System, and this is the framework that we''ll explore today.

► Browse WordPress Themes and Plugins: https://elements.envato.com/wordpress?utm_campaign=yt_tutsplus_tm84gW72KFU&utm_medium=referral&utm_source=youtube.com&utm_content=description

This is part of the free Envato Tuts+ course 30 Days to Learn HTML & CSS: https://webdesign.tutsplus.com/courses/30-days-to-learn-html-css?utm_campaign=yt_tutsplus_tm84gW72KFU&utm_medium=referral&utm_source=youtube.com&utm_content=description

For more great web design courses and tutorials go to: https://webdesign.tutsplus.com?utm_campaign=yt_tutsplus_tm84gW72KFU&utm_medium=referral&utm_source=youtube.com&utm_content=description

- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
Envato Tuts+
Discover free how-to tutorials and online courses. Design a logo, create a website, build an app, or learn a new skill: https://tutsplus.com?utm_campaign=yt_tutsplus_tm84gW72KFU&utm_medium=referral&utm_source=youtube.com&utm_content=description

Envato Elements
All the creative assets you need under one subscription. Customize your project by adding unique photos, fonts, graphics, and themes.
► Download Unlimited Stock Photos, Fonts & Templates with Envato Elements: https://elements.envato.com?utm_campaign=yt_tutsplus_tm84gW72KFU&utm_medium=referral&utm_source=youtube.com&utm_content=description

► Subscribe to Envato Tuts+ on YouTube: https://www.youtube.com/tutsplus
► Follow Envato Tuts+ on Twitter: https://twitter.com/tutsplus
► Follow Envato Tuts+ on Facebook: https://www.facebook.com/tutsplus
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -', 'https://i.ytimg.com/vi/tm84gW72KFU/default.jpg', 'Day 25: CSS Frameworks (30 Days to Learn HTML & CSS)', '00:17:51', 26, 1, '2019-11-13 10:53:50.25+05:30', '2019-11-13 10:53:50.25+05:30');
INSERT INTO public."Lessons" (id, url, description, "thumbnailUrl", title, duration, "seqNo", "courseId", "createdAt", "updatedAt") VALUES (27, 'https://www.youtube.com/watch?v=CilS1-ukeUA', 'Now that you''ve learned the basics of HTML and CSS, it''s time to start doing what you really want to be doing: building websites! We''re going to get started converting a Photoshop design into a real website.

► Browse WordPress Themes and Plugins: https://elements.envato.com/wordpress?utm_campaign=yt_tutsplus_CilS1-ukeUA&utm_medium=referral&utm_source=youtube.com&utm_content=description

This is part of the free Envato Tuts+ course 30 Days to Learn HTML & CSS: https://webdesign.tutsplus.com/courses/30-days-to-learn-html-css?utm_campaign=yt_tutsplus_CilS1-ukeUA&utm_medium=referral&utm_source=youtube.com&utm_content=description

For more great web design courses and tutorials go to: https://webdesign.tutsplus.com?utm_campaign=yt_tutsplus_CilS1-ukeUA&utm_medium=referral&utm_source=youtube.com&utm_content=description

- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
Envato Tuts+
Discover free how-to tutorials and online courses. Design a logo, create a website, build an app, or learn a new skill: https://tutsplus.com?utm_campaign=yt_tutsplus_CilS1-ukeUA&utm_medium=referral&utm_source=youtube.com&utm_content=description

Envato Elements
All the creative assets you need under one subscription. Customize your project by adding unique photos, fonts, graphics, and themes.
► Download Unlimited Stock Photos, Fonts & Templates with Envato Elements: https://elements.envato.com?utm_campaign=yt_tutsplus_CilS1-ukeUA&utm_medium=referral&utm_source=youtube.com&utm_content=description

► Subscribe to Envato Tuts+ on YouTube: https://www.youtube.com/tutsplus
► Follow Envato Tuts+ on Twitter: https://twitter.com/tutsplus
► Follow Envato Tuts+ on Facebook: https://www.facebook.com/tutsplus
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -', 'https://i.ytimg.com/vi/CilS1-ukeUA/default.jpg', 'Day 26: Final Project Markup (30 Days to Learn HTML & CSS)', '00:11:31', 27, 1, '2019-11-13 10:53:50.25+05:30', '2019-11-13 10:53:50.25+05:30');
INSERT INTO public."Lessons" (id, url, description, "thumbnailUrl", title, duration, "seqNo", "courseId", "createdAt", "updatedAt") VALUES (28, 'https://www.youtube.com/watch?v=j4kTLpezHDI', 'When we last left off we''d finished our markup, so let''s return to Photoshop and begin slicing out any necessary assets for our design.

► Browse WordPress Themes and Plugins: https://elements.envato.com/wordpress?utm_campaign=yt_tutsplus_j4kTLpezHDI&utm_medium=referral&utm_source=youtube.com&utm_content=description

This is part of the free Envato Tuts+ course 30 Days to Learn HTML & CSS: https://webdesign.tutsplus.com/courses/30-days-to-learn-html-css?utm_campaign=yt_tutsplus_j4kTLpezHDI&utm_medium=referral&utm_source=youtube.com&utm_content=description

For more great web design courses and tutorials go to: https://webdesign.tutsplus.com?utm_campaign=yt_tutsplus_j4kTLpezHDI&utm_medium=referral&utm_source=youtube.com&utm_content=description

- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
Envato Tuts+
Discover free how-to tutorials and online courses. Design a logo, create a website, build an app, or learn a new skill: https://tutsplus.com?utm_campaign=yt_tutsplus_j4kTLpezHDI&utm_medium=referral&utm_source=youtube.com&utm_content=description

Envato Elements
All the creative assets you need under one subscription. Customize your project by adding unique photos, fonts, graphics, and themes.
► Download Unlimited Stock Photos, Fonts & Templates with Envato Elements: https://elements.envato.com?utm_campaign=yt_tutsplus_j4kTLpezHDI&utm_medium=referral&utm_source=youtube.com&utm_content=description

► Subscribe to Envato Tuts+ on YouTube: https://www.youtube.com/tutsplus
► Follow Envato Tuts+ on Twitter: https://twitter.com/tutsplus
► Follow Envato Tuts+ on Facebook: https://www.facebook.com/tutsplus
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -', 'https://i.ytimg.com/vi/j4kTLpezHDI/default.jpg', 'Day 27: Slicing a PSD (30 Days to Learn HTML & CSS)', '00:08:40', 28, 1, '2019-11-13 10:53:50.25+05:30', '2019-11-13 10:53:50.25+05:30');
INSERT INTO public."Lessons" (id, url, description, "thumbnailUrl", title, duration, "seqNo", "courseId", "createdAt", "updatedAt") VALUES (29, 'https://www.youtube.com/watch?v=Hr9dv5FCpZw', 'In programs like TextMate and Sublime (or whatever program you''re using), they generally have some snippets built in. But often, it''s best to create your own customized snippets to help you code more efficiently.

► Browse WordPress Themes and Plugins: https://elements.envato.com/wordpress?utm_campaign=yt_tutsplus_Hr9dv5FCpZw&utm_medium=referral&utm_source=youtube.com&utm_content=description

This is part of the free Envato Tuts+ course 30 Days to Learn HTML & CSS: https://webdesign.tutsplus.com/courses/30-days-to-learn-html-css?utm_campaign=yt_tutsplus_Hr9dv5FCpZw&utm_medium=referral&utm_source=youtube.com&utm_content=description

For more great web design courses and tutorials go to: https://webdesign.tutsplus.com?utm_campaign=yt_tutsplus_Hr9dv5FCpZw&utm_medium=referral&utm_source=youtube.com&utm_content=description

- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
Envato Tuts+
Discover free how-to tutorials and online courses. Design a logo, create a website, build an app, or learn a new skill: https://tutsplus.com?utm_campaign=yt_tutsplus_Hr9dv5FCpZw&utm_medium=referral&utm_source=youtube.com&utm_content=description

Envato Elements
All the creative assets you need under one subscription. Customize your project by adding unique photos, fonts, graphics, and themes.
► Download Unlimited Stock Photos, Fonts & Templates with Envato Elements: https://elements.envato.com?utm_campaign=yt_tutsplus_Hr9dv5FCpZw&utm_medium=referral&utm_source=youtube.com&utm_content=description

► Subscribe to Envato Tuts+ on YouTube: https://www.youtube.com/tutsplus
► Follow Envato Tuts+ on Twitter: https://twitter.com/tutsplus
► Follow Envato Tuts+ on Facebook: https://www.facebook.com/tutsplus
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -', 'https://i.ytimg.com/vi/Hr9dv5FCpZw/default.jpg', 'Day 28: How to Create Snippets (30 Days to Learn HTML & CSS)', '00:03:35', 29, 1, '2019-11-13 10:53:50.25+05:30', '2019-11-13 10:53:50.25+05:30');
INSERT INTO public."Lessons" (id, url, description, "thumbnailUrl", title, duration, "seqNo", "courseId", "createdAt", "updatedAt") VALUES (52, 'https://www.youtube.com/watch?v=0mJC0A72Fnw', 'Today we learn how to use the built in Speech Recognition in the browser. Grab all the exercises and starter files over at https://JavaScript30.com', 'https://i.ytimg.com/vi/0mJC0A72Fnw/default.jpg', 'JavaScript Speech Recognitio', '00:13:21', 20, 2, '2019-11-13 10:53:50.25+05:30', '2019-11-13 10:53:50.25+05:30');
INSERT INTO public."Lessons" (id, url, description, "thumbnailUrl", title, duration, "seqNo", "courseId", "createdAt", "updatedAt") VALUES (53, 'https://www.youtube.com/watch?v=X7Cbtra0C6I', 'We make a really sweet compass and speedometer with just JavaScript!  Grab all the exercises and starter files over at https://JavaScript30.com', 'https://i.ytimg.com/vi/X7Cbtra0C6I/default.jpg', 'JavaScript Geolocation based Speedometer and Compass ', '00:08:51', 21, 2, '2019-11-13 10:53:50.25+05:30', '2019-11-13 10:53:50.25+05:30');
INSERT INTO public."Lessons" (id, url, description, "thumbnailUrl", title, duration, "seqNo", "courseId", "createdAt", "updatedAt") VALUES (54, 'https://www.youtube.com/watch?v=POP_qri7RA8', 'Today we learn how to make those cool follow along links in JavaScript. This will set us up nicely for the Stripe follow along example we will do in a coming video. Grab all the exercises and starter files over at https://JavaScript30.com', 'https://i.ytimg.com/vi/POP_qri7RA8/default.jpg', 'JavaScript  Exercise: Follow Along Links ', '00:09:25', 22, 2, '2019-11-13 10:53:50.25+05:30', '2019-11-13 10:53:50.25+05:30');
INSERT INTO public."Lessons" (id, url, description, "thumbnailUrl", title, duration, "seqNo", "courseId", "createdAt", "updatedAt") VALUES (55, 'https://www.youtube.com/watch?v=saCpKH_xdgs', 'We do Speech Synthesis with JavaScript in today''s lesson. Grab all the exercises and starter files over at https://JavaScript30.com', 'https://i.ytimg.com/vi/saCpKH_xdgs/default.jpg', 'JavaScript Text-To-Speech ', '00:16:56', 23, 2, '2019-11-13 10:53:50.25+05:30', '2019-11-13 10:53:50.25+05:30');
INSERT INTO public."Lessons" (id, url, description, "thumbnailUrl", title, duration, "seqNo", "courseId", "createdAt", "updatedAt") VALUES (56, 'https://www.youtube.com/watch?v=5FLOBCGH3_U', 'Today we learn how to make a sticky nav in JavaScript! Grab all the exercises and starter files over at https://JavaScript30.com', 'https://i.ytimg.com/vi/5FLOBCGH3_U/default.jpg', 'Vanilla JavaScript Sticky Nav ', '00:10:02', 24, 2, '2019-11-13 10:53:50.25+05:30', '2019-11-13 10:53:50.25+05:30');
INSERT INTO public."Lessons" (id, url, description, "thumbnailUrl", title, duration, "seqNo", "courseId", "createdAt", "updatedAt") VALUES (30, 'https://www.youtube.com/watch?v=zvSR_2v5xj8', 'In this lesson we''ll begin styling the markup for our website.

► Browse WordPress Themes and Plugins: https://elements.envato.com/wordpress?utm_campaign=yt_tutsplus_zvSR_2v5xj8&utm_medium=referral&utm_source=youtube.com&utm_content=description

This is part of the free Envato Tuts+ course 30 Days to Learn HTML & CSS: https://webdesign.tutsplus.com/courses/30-days-to-learn-html-css?utm_campaign=yt_tutsplus_zvSR_2v5xj8&utm_medium=referral&utm_source=youtube.com&utm_content=description

For more great web design courses and tutorials go to: https://webdesign.tutsplus.com?utm_campaign=yt_tutsplus_zvSR_2v5xj8&utm_medium=referral&utm_source=youtube.com&utm_content=description


- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
Envato Tuts+
Discover free how-to tutorials and online courses. Design a logo, create a website, build an app, or learn a new skill: https://tutsplus.com?utm_campaign=yt_tutsplus_zvSR_2v5xj8&utm_medium=referral&utm_source=youtube.com&utm_content=description

Envato Elements
All the creative assets you need under one subscription. Customize your project by adding unique photos, fonts, graphics, and themes.
► Download Unlimited Stock Photos, Fonts & Templates with Envato Elements: https://elements.envato.com?utm_campaign=yt_tutsplus_zvSR_2v5xj8&utm_medium=referral&utm_source=youtube.com&utm_content=description

► Subscribe to Envato Tuts+ on YouTube: https://www.youtube.com/tutsplus
► Follow Envato Tuts+ on Twitter: https://twitter.com/tutsplus
► Follow Envato Tuts+ on Facebook: https://www.facebook.com/tutsplus
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -', 'https://i.ytimg.com/vi/zvSR_2v5xj8/default.jpg', 'Day 29: The CSS for Our Website (30 Days to Learn HTML & CSS)', '00:30:30', 30, 1, '2019-11-13 10:53:50.25+05:30', '2019-11-13 10:53:50.25+05:30');
INSERT INTO public."Lessons" (id, url, description, "thumbnailUrl", title, duration, "seqNo", "courseId", "createdAt", "updatedAt") VALUES (31, 'https://www.youtube.com/watch?v=I9dNFHasF_U', 'In the previous lesson we built the layout for our website. We need to finish up by tweaking our layout until it''s complete.

► Browse WordPress Themes and Plugins: https://elements.envato.com/wordpress?utm_campaign=yt_tutsplus_I9dNFHasF_U&utm_medium=referral&utm_source=youtube.com&utm_content=description

This is part of the free Envato Tuts+ course 30 Days to Learn HTML & CSS: https://webdesign.tutsplus.com/courses/30-days-to-learn-html-css?utm_campaign=yt_tutsplus_I9dNFHasF_U&utm_medium=referral&utm_source=youtube.com&utm_content=description

For more great web design courses and tutorials go to: https://webdesign.tutsplus.com?utm_campaign=yt_tutsplus_I9dNFHasF_U&utm_medium=referral&utm_source=youtube.com&utm_content=description

- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
Envato Tuts+
Discover free how-to tutorials and online courses. Design a logo, create a website, build an app, or learn a new skill: https://tutsplus.com?utm_campaign=yt_tutsplus_I9dNFHasF_U&utm_medium=referral&utm_source=youtube.com&utm_content=description

Envato Elements
All the creative assets you need under one subscription. Customize your project by adding unique photos, fonts, graphics, and themes.
► Download Unlimited Stock Photos, Fonts & Templates with Envato Elements: https://elements.envato.com?utm_campaign=yt_tutsplus_I9dNFHasF_U&utm_medium=referral&utm_source=youtube.com&utm_content=description

► Subscribe to Envato Tuts+ on YouTube: https://www.youtube.com/tutsplus
► Follow Envato Tuts+ on Twitter: https://twitter.com/tutsplus
► Follow Envato Tuts+ on Facebook: https://www.facebook.com/tutsplus
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -', 'https://i.ytimg.com/vi/I9dNFHasF_U/default.jpg', 'Day 30: Completing the Website (30 Days to Learn HTML & CSS)', '00:17:27', 31, 1, '2019-11-13 10:53:50.25+05:30', '2019-11-13 10:53:50.25+05:30');
INSERT INTO public."Lessons" (id, url, description, "thumbnailUrl", title, duration, "seqNo", "courseId", "createdAt", "updatedAt") VALUES (32, 'https://www.youtube.com/watch?v=cUgpPAP0lUM', 'This is part of the free Envato Tuts+ course 30 Days to Learn HTML & CSS: https://webdesign.tutsplus.com/courses/30-days-to-learn-html-css?utm_campaign=yt_tutsplus_cUgpPAP0lUM&utm_medium=referral&utm_source=youtube.com&utm_content=description

► Browse WordPress Themes and Plugins: https://elements.envato.com/wordpress?utm_campaign=yt_tutsplus_cUgpPAP0lUM&utm_medium=referral&utm_source=youtube.com&utm_content=description

For more great web design courses and tutorials go to: https://tutsplus.com/?utm_campaign=yt_tutsplus_cUgpPAP0lUM&utm_medium=referral&utm_source=youtube.com&utm_content=description

We hope you''ve enjoyed learning HTML and CSS with the new Tuts+ Premium. If you''d like to progress to more advanced material, including CSS3, join the mailing list below. We''ll let you know when more web development and design courses are available.

If you know anyone who''d like to learn HTML and CSS, we hope you''ll consider sharing this course with them.

Happy coding!u take thirty days and join me? Give me around ten minutes every day, and I''ll teach you the essentials of HTML and CSS.

And don''t worry... we start at the beginning!

- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
Envato Tuts+
Discover free how-to tutorials and online courses. Design a logo, create a website, build an app, or learn a new skill: https://tutsplus.com?utm_campaign=yt_tutsplus_cUgpPAP0lUM&utm_medium=referral&utm_source=youtube.com&utm_content=description

Envato Elements
All the creative assets you need under one subscription. Customize your project by adding unique photos, fonts, graphics, and themes.
► Download Unlimited Stock Photos, Fonts & Templates with Envato Elements: https://elements.envato.com?utm_campaign=yt_tutsplus_cUgpPAP0lUM&utm_medium=referral&utm_source=youtube.com&utm_content=description

► Subscribe to Envato Tuts+ on YouTube: https://www.youtube.com/tutsplus
► Follow Envato Tuts+ on Twitter: https://twitter.com/tutsplus
► Follow Envato Tuts+ on Facebook: https://www.facebook.com/tutsplus
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -', 'https://i.ytimg.com/vi/cUgpPAP0lUM/default.jpg', 'Course Exit (30 Days to Learn HTML & CSS)', '00:00:40', 32, 1, '2019-11-13 10:53:50.25+05:30', '2019-11-13 10:53:50.25+05:30');
INSERT INTO public."Lessons" (id, url, description, "thumbnailUrl", title, duration, "seqNo", "courseId", "createdAt", "updatedAt") VALUES (33, 'https://www.youtube.com/watch?v=VuN8qwZoego', 'Day 1 of 30. Let''s make a JavaScript Drum kit and bunch along the way. Get all 30 videos and Starter files for free over at JavaScript30.com.', 'https://i.ytimg.com/vi/VuN8qwZoego/default.jpg', 'Make a JavaScript Drum Kit in Vanilla JS', '00:19:39', 1, 2, '2019-11-13 10:53:50.25+05:30', '2019-11-13 10:53:50.25+05:30');
INSERT INTO public."Lessons" (id, url, description, "thumbnailUrl", title, duration, "seqNo", "courseId", "createdAt", "updatedAt") VALUES (34, 'https://www.youtube.com/watch?v=xu87YWbr4X0', 'Grab all 30 videos and starter files for free over at https://JavaScript30.com', 'https://i.ytimg.com/vi/xu87YWbr4X0/default.jpg', 'We build a CSS + JS Clock in Vanilla JS', '00:10:44', 2, 2, '2019-11-13 10:53:50.25+05:30', '2019-11-13 10:53:50.25+05:30');
INSERT INTO public."Lessons" (id, url, description, "thumbnailUrl", title, duration, "seqNo", "courseId", "createdAt", "updatedAt") VALUES (35, 'https://www.youtube.com/watch?v=AHLNzv13c2I', 'Today we learn all about how to use CSS variables and update them with JavaScript. Grab all 30 videos and starter files  over at https://JavaScript30.com', 'https://i.ytimg.com/vi/AHLNzv13c2I/default.jpg', 'Woah! CSS Variables?!', '00:13:14', 3, 2, '2019-11-13 10:53:50.25+05:30', '2019-11-13 10:53:50.25+05:30');
INSERT INTO public."Lessons" (id, url, description, "thumbnailUrl", title, duration, "seqNo", "courseId", "createdAt", "updatedAt") VALUES (36, 'https://www.youtube.com/watch?v=HB1ZC7czKRs', 'Today we sweat! In order to do the rest of the JavaScript30 exercises, we need to get really good at working with Arrays in JavaScript. Grab all the exercises and code samples at https://JavaScript30.com', 'https://i.ytimg.com/vi/HB1ZC7czKRs/default.jpg', 'JavaScript Array Cardio Practice - Day 1', '00:23:27', 4, 2, '2019-11-13 10:53:50.25+05:30', '2019-11-13 10:53:50.25+05:30');
INSERT INTO public."Lessons" (id, url, description, "thumbnailUrl", title, duration, "seqNo", "courseId", "createdAt", "updatedAt") VALUES (37, 'https://www.youtube.com/watch?v=9eif30i26jg', 'Today we build a pretty nifty image gallery using Flexbox, CSS transitions and a sprinkle of JS to get things interactive. Grab all the exercises and starter files over at https://JavaScript30.com', 'https://i.ytimg.com/vi/9eif30i26jg/default.jpg', 'Flexbox + JavaScript Image Gallery', '00:13:10', 5, 2, '2019-11-13 10:53:50.25+05:30', '2019-11-13 10:53:50.25+05:30');
INSERT INTO public."Lessons" (id, url, description, "thumbnailUrl", title, duration, "seqNo", "courseId", "createdAt", "updatedAt") VALUES (38, 'https://www.youtube.com/watch?v=y4gZMJKAeWs', 'Today we build an Ajax type ahead with vanilla JS. Grab all the videos and starter files over at https://JavaScript30.com', 'https://i.ytimg.com/vi/y4gZMJKAeWs/default.jpg', 'Ajax Type Ahead with fetch() ', '00:17:22', 6, 2, '2019-11-13 10:53:50.25+05:30', '2019-11-13 10:53:50.25+05:30');
INSERT INTO public."Lessons" (id, url, description, "thumbnailUrl", title, duration, "seqNo", "courseId", "createdAt", "updatedAt") VALUES (39, 'https://www.youtube.com/watch?v=QNmRfyNg1lw', 'Day 2 of Array Cardio. Grab all the videos and starter files over at https://JavaScript30.com', 'https://i.ytimg.com/vi/QNmRfyNg1lw/default.jpg', '.some(), .every(), .find() and [...SPREADS] — Array Cardio Day 2', '00:07:16', 7, 2, '2019-11-13 10:53:50.25+05:30', '2019-11-13 10:53:50.25+05:30');
INSERT INTO public."Lessons" (id, url, description, "thumbnailUrl", title, duration, "seqNo", "courseId", "createdAt", "updatedAt") VALUES (40, 'https://www.youtube.com/watch?v=8ZGAzJ0drl0', 'Day 8 o', 'https://i.ytimg.com/vi/8ZGAzJ0drl0/default.jpg', 'Let''s build something fun with HTML5 Canvas ', '00:18:02', 8, 2, '2019-11-13 10:53:50.25+05:30', '2019-11-13 10:53:50.25+05:30');
INSERT INTO public."Lessons" (id, url, description, "thumbnailUrl", title, duration, "seqNo", "courseId", "createdAt", "updatedAt") VALUES (41, 'https://www.youtube.com/watch?v=xkzDaKwinA8', 'Hit that Subscribe button for more like this', 'https://i.ytimg.com/vi/xkzDaKwinA8/default.jpg', '14 Must Know Chrome Dev Tools Tricks ', '00:10:36', 9, 2, '2019-11-13 10:53:50.25+05:30', '2019-11-13 10:53:50.25+05:30');
INSERT INTO public."Lessons" (id, url, description, "thumbnailUrl", title, duration, "seqNo", "courseId", "createdAt", "updatedAt") VALUES (58, 'https://www.youtube.com/watch?v=GvuWJSXYQDU', 'How to re-create the amazing Stripe dropdown follow-along navigation.  Grab all the exercises and starter files over at https://JavaScript30.com', 'https://i.ytimg.com/vi/GvuWJSXYQDU/default.jpg', 'Stripe Follow Along Dropdown Navigation ', '00:21:12', 26, 2, '2019-11-13 10:53:50.25+05:30', '2019-11-13 10:53:50.25+05:30');
INSERT INTO public."Lessons" (id, url, description, "thumbnailUrl", title, duration, "seqNo", "courseId", "createdAt", "updatedAt") VALUES (59, 'https://www.youtube.com/watch?v=C9EWifQ5xqA', 'Today we make a pretty neat click and drag to scroll interface where you will learn a whole lot about JavaScript events!', 'https://i.ytimg.com/vi/C9EWifQ5xqA/default.jpg', 'JavaScript Interface Challenge: Click and Drag to Scroll ', '00:14:10', 27, 2, '2019-11-13 10:53:50.25+05:30', '2019-11-13 10:53:50.25+05:30');
INSERT INTO public."Lessons" (id, url, description, "thumbnailUrl", title, duration, "seqNo", "courseId", "createdAt", "updatedAt") VALUES (60, 'https://www.youtube.com/watch?v=8gYN_EDMg_M', 'Today we build an experimental video speed controller UI. Grab all the exercises and starter files over at https://JavaScript30.com', 'https://i.ytimg.com/vi/8gYN_EDMg_M/default.jpg', 'Build a Experimental Video Speed Controller UI ', '00:09:26', 28, 2, '2019-11-13 10:53:50.25+05:30', '2019-11-13 10:53:50.25+05:30');
INSERT INTO public."Lessons" (id, url, description, "thumbnailUrl", title, duration, "seqNo", "courseId", "createdAt", "updatedAt") VALUES (61, 'https://www.youtube.com/watch?v=LAaf7-WuJJQ', 'We build a custom JavaScript countdown timer from scratch with Vanilla JavaScript. Grab all the exercises and starter files over at https://JavaScript30.com', 'https://i.ytimg.com/vi/LAaf7-WuJJQ/default.jpg', 'Vanilla JS Countdown Timer ', '00:21:46', 29, 2, '2019-11-13 10:53:50.25+05:30', '2019-11-13 10:53:50.25+05:30');
INSERT INTO public."Lessons" (id, url, description, "thumbnailUrl", title, duration, "seqNo", "courseId", "createdAt", "updatedAt") VALUES (62, 'https://www.youtube.com/watch?v=toNFfAaWghU', 'You did it! Today we have fun and make a whack-a-mole game. Grab all the exercises and starter files over at https://JavaScript30.com', 'https://i.ytimg.com/vi/toNFfAaWghU/default.jpg', 'Make a Whack A Mole Game with Vanilla JS ', '00:14:35', 30, 2, '2019-11-13 10:53:50.25+05:30', '2019-11-13 10:53:50.25+05:30');
INSERT INTO public."Lessons" (id, url, description, "thumbnailUrl", title, duration, "seqNo", "courseId", "createdAt", "updatedAt") VALUES (63, 'https://www.youtube.com/watch?v=1XmwszKUNR8', 'Introductory video where I talk about what to expect in the series to come.', 'https://i.ytimg.com/vi/1XmwszKUNR8/default.jpg', 'Express MongoDB REST API #1 - Introduction', '00:07:48', 1, 3, '2019-11-13 10:53:50.25+05:30', '2019-11-13 10:53:50.25+05:30');
INSERT INTO public."Lessons" (id, url, description, "thumbnailUrl", title, duration, "seqNo", "courseId", "createdAt", "updatedAt") VALUES (64, 'https://www.youtube.com/watch?v=C4DjlL2hcrM', 'First video where we actually do some work! We start of by writing the main app.js file as well as create a folder structure that we''ll keep working on in the videos to come.', 'https://i.ytimg.com/vi/C4DjlL2hcrM/default.jpg', 'Express MongoDB REST API #2 - Code Structure', '00:12:26', 2, 3, '2019-11-13 10:53:50.25+05:30', '2019-11-13 10:53:50.25+05:30');
INSERT INTO public."Lessons" (id, url, description, "thumbnailUrl", title, duration, "seqNo", "courseId", "createdAt", "updatedAt") VALUES (65, 'https://www.youtube.com/watch?v=_lfDai47SJE', 'In this video we''ll setup the code for the routes and will get started writing our first route!', 'https://i.ytimg.com/vi/_lfDai47SJE/default.jpg', 'Express MongoDB REST API #3 - Routes Design', '00:11:34', 3, 3, '2019-11-13 10:53:50.25+05:30', '2019-11-13 10:53:50.25+05:30');
INSERT INTO public."Lessons" (id, url, description, "thumbnailUrl", title, duration, "seqNo", "courseId", "createdAt", "updatedAt") VALUES (66, 'https://www.youtube.com/watch?v=L1DGbI-U_e4', 'In this video, we''ll mostly focus on interacting with our MongoDB database using Mongoose.', 'https://i.ytimg.com/vi/L1DGbI-U_e4/default.jpg', 'Express MongoDB REST API #4 - MongoDB/Mongoose', '00:29:34', 4, 3, '2019-11-13 10:53:50.25+05:30', '2019-11-13 10:53:50.25+05:30');
INSERT INTO public."Lessons" (id, url, description, "thumbnailUrl", title, duration, "seqNo", "courseId", "createdAt", "updatedAt") VALUES (67, 'https://www.youtube.com/watch?v=9tLA4r-gqds', 'In this tutorial, we''ll finally start using Async/Await that''ll make our code much nicer to look at!', 'https://i.ytimg.com/vi/9tLA4r-gqds/default.jpg', 'Express MongoDB REST API #5 - Async/Await', '00:15:21', 5, 3, '2019-11-13 10:53:50.25+05:30', '2019-11-13 10:53:50.25+05:30');
INSERT INTO public."Lessons" (id, url, description, "thumbnailUrl", title, duration, "seqNo", "courseId", "createdAt", "updatedAt") VALUES (68, 'https://www.youtube.com/watch?v=qAkzBQw_MrY', 'In this video, we''ll continue writing more routes as per our original endpoints spec.', 'https://i.ytimg.com/vi/qAkzBQw_MrY/default.jpg', 'Express MongoDB REST API #6 - More Routes', '00:15:12', 6, 3, '2019-11-13 10:53:50.25+05:30', '2019-11-13 10:53:50.25+05:30');
INSERT INTO public."Lessons" (id, url, description, "thumbnailUrl", title, duration, "seqNo", "courseId", "createdAt", "updatedAt") VALUES (69, 'https://www.youtube.com/watch?v=FVn_wj1jLN0', 'In this video, we''ll wire up the necessary relationships between models in our routes logic.', 'https://i.ytimg.com/vi/FVn_wj1jLN0/default.jpg', 'Express MongoDB REST API #7 - Relationships', '00:22:49', 7, 3, '2019-11-13 10:53:50.25+05:30', '2019-11-13 10:53:50.25+05:30');
INSERT INTO public."Lessons" (id, url, description, "thumbnailUrl", title, duration, "seqNo", "courseId", "createdAt", "updatedAt") VALUES (70, 'https://www.youtube.com/watch?v=tJlmAAxwygc', 'In this video, we''ll set up the validation in our API. We won''t just do it, but instead we''ll create a function that''ll allow us to validate any parameter we would need in future!', 'https://i.ytimg.com/vi/tJlmAAxwygc/default.jpg', 'Express MongoDB REST API #8 - Parameters Validation', '00:30:59', 8, 3, '2019-11-13 10:53:50.25+05:30', '2019-11-13 10:53:50.25+05:30');
INSERT INTO public."Lessons" (id, url, description, "thumbnailUrl", title, duration, "seqNo", "courseId", "createdAt", "updatedAt") VALUES (71, 'https://www.youtube.com/watch?v=36v09ARHshc', 'In this video, we''ll continue where we left off. More precisely, we''ll do the body validation this time and also use both the parameters and body validation functions that we wrote throughout our endpoints.', 'https://i.ytimg.com/vi/36v09ARHshc/default.jpg', 'Express MongoDB REST API #9 - Body Validation', '00:24:46', 9, 3, '2019-11-13 10:53:50.25+05:30', '2019-11-13 10:53:50.25+05:30');
INSERT INTO public."Lessons" (id, url, description, "thumbnailUrl", title, duration, "seqNo", "courseId", "createdAt", "updatedAt") VALUES (72, 'https://www.youtube.com/watch?v=-bQbI2rcoWI', 'In this video, we''ll begin our work on Cars resource. We''ll start by defining routes and writing corresponding code in Cars controller. We''ll also do the validation as we go.

At around ~17 minute mark my microphone started acting weirdly, so sorry for that. Had no idea about it until the video was finished.', 'https://i.ytimg.com/vi/-bQbI2rcoWI/default.jpg', 'Express MongoDB REST API #10 - Cars Routes Start', '00:22:29', 10, 3, '2019-11-13 10:53:50.25+05:30', '2019-11-13 10:53:50.25+05:30');
INSERT INTO public."Lessons" (id, url, description, "thumbnailUrl", title, duration, "seqNo", "courseId", "createdAt", "updatedAt") VALUES (73, 'https://www.youtube.com/watch?v=sA5yM3TALA4', 'In this video, we''ll finish our work on cars resource. We''ll continue by defining routes until we''re done. We''ll also do the validation as we go.', 'https://i.ytimg.com/vi/sA5yM3TALA4/default.jpg', 'Express MongoDB REST API #11 - Cars Routes End', '00:22:37', 11, 3, '2019-11-13 10:53:50.25+05:30', '2019-11-13 10:53:50.25+05:30');
INSERT INTO public."Lessons" (id, url, description, "thumbnailUrl", title, duration, "seqNo", "courseId", "createdAt", "updatedAt") VALUES (74, 'https://www.youtube.com/watch?v=4A-Z7ts7dVg', 'In this video, we finish this playlist and I talk a bit about security and what to do next.', 'https://i.ytimg.com/vi/4A-Z7ts7dVg/default.jpg', 'Express MongoDB REST API #12 - What to do next', '00:03:54', 12, 3, '2019-11-13 10:53:50.25+05:30', '2019-11-13 10:53:50.25+05:30');
INSERT INTO public."Lessons" (id, url, description, "thumbnailUrl", title, duration, "seqNo", "courseId", "createdAt", "updatedAt") VALUES (75, 'https://www.youtube.com/watch?v=XskMWBXNbp0', 'You can''t get very far in JavaScript without dealing with objects. They''re foundational to  almost every aspect of the JavaScript programming language. In this post you''ll learn about a variety of patterns for instantiating new objects and in doing so, you''ll be gradually led to understanding JavaScript''s prototype in depth.

It may seem surprising, but in my opinion the most important and fundamental concept to understanding the JavaScript language is understanding Execution Context. In this video you''ll not only learn all about Execution Contexts, but also more advanced JavaScript topics like hoisting, the scope chain, and closures.

🚀 Check out our "Advanced JavaScript" course for more detail on this and other JavaScript topics - https://tylermcginnis.com/courses/advanced-javascript/?s=youtube-beginners-guide-to-javascripts-prototype

If you use JavaScript in any capacity, there’s probably not another resource that will benefit you more than this. This course was years in the making. I took everything I know about JavaScript and all my experience teaching it over the last half decade and put it into this one course.

We’ll cover topics like
  ✅ Execution Contexts 
  ✅ Blocking vs Non Blocking IO 
  ✅ Scopes 
  ✅ The Scope Chain 
  ✅ The Event Loop 
  ✅ Closures 
  ✅ Hoisting 
  ✅ Instantiation Patterns
  ✅ FN.prototype 
  ✅ this, .call, .apply, and .bind 
  ✅ IIFEs/CommonJS/ES Modules 
  ✅ Inheritance 
  ✅ Composition 
  ✅ Async Patterns

Advanced JavaScript - https://tylermcginnis.com/courses/advanced-javascript/

📺 Subscribe to our channel for more educational content to help you master the JavaScript ecosystem: https://www.youtube.com/tylermcginnis

TylerMcGinnis.com is a linear, project-based approach to mastering the JavaScript ecosystem. Our React courses have been taken by over 80k students with an average rating of 4.8/5. So whether you want to learn more about React Hooks, React Native, React Router, vanilla JavaScript, or all of the above, our in-depth courses and tutorials will teach you everything you need to know about utilizing these technologies in 2019.

🏃 Visit our website for more in-depth, highly-rated educational content to help you master the JavaScript ecosystem: https://tylermcginnis.com/', 'https://i.ytimg.com/vi/XskMWBXNbp0/default.jpg', 'A Beginner''s Guide to JavaScript''s Prototype', '00:28:23', 1, 4, '2019-11-13 10:53:50.25+05:30', '2019-11-13 10:53:50.25+05:30');
INSERT INTO public."Lessons" (id, url, description, "thumbnailUrl", title, duration, "seqNo", "courseId", "createdAt", "updatedAt") VALUES (76, 'https://www.youtube.com/watch?v=Nt-qa_LlUH0', 'It may seem surprising, but in my opinion the most important and fundamental concept to understanding the JavaScript language is understanding Execution Context. In this video you''ll not only learn all about Execution Contexts, but also more advanced JavaScript topics like hoisting, the scope chain, and closures.

It may seem surprising, but in my opinion the most important and fundamental concept to understanding the JavaScript language is understanding Execution Context. In this video you''ll not only learn all about Execution Contexts, but also more advanced JavaScript topics like hoisting, the scope chain, and closures.

🚀 Check out our "Advanced JavaScript" course for more detail on this and other JavaScript topics - https://tylermcginnis.com/courses/advanced-javascript/?s=youtube-ultimate-guide-to-hoisting-scopes-closures-in-javascript

If you use JavaScript in any capacity, there’s probably not another resource that will benefit you more than this. This course was years in the making. I took everything I know about JavaScript and all my experience teaching it over the last half decade and put it into this one course.

We’ll cover topics like
  ✅ Execution Contexts 
  ✅ Blocking vs Non Blocking IO 
  ✅ Scopes 
  ✅ The Scope Chain 
  ✅ The Event Loop 
  ✅ Closures 
  ✅ Hoisting 
  ✅ Instantiation Patterns
  ✅ FN.prototype 
  ✅ this, .call, .apply, and .bind 
  ✅ IIFEs/CommonJS/ES Modules 
  ✅ Inheritance 
  ✅ Composition 
  ✅ Async Patterns

Advanced JavaScript - https://tylermcginnis.com/courses/advanced-javascript/

📺 Subscribe to our channel for more educational content to help you master the JavaScript ecosystem: https://www.youtube.com/tylermcginnis

TylerMcGinnis.com is a linear, project-based approach to mastering the JavaScript ecosystem. Our React courses have been taken by over 80k students with an average rating of 4.8/5. So whether you want to learn more about React Hooks, React Native, React Router, vanilla JavaScript, or all of the above, our in-depth courses and tutorials will teach you everything you need to know about utilizing these technologies in 2019.

🏃 Visit our website for more in-depth, highly-rated educational content to help you master the JavaScript ecosystem: https://tylermcginnis.com/', 'https://i.ytimg.com/vi/Nt-qa_LlUH0/default.jpg', 'The Ultimate Guide to Execution Contexts, Hoisting, Scopes, and Closures in JavaScript', '00:25:35', 2, 4, '2019-11-13 10:53:50.25+05:30', '2019-11-13 10:53:50.25+05:30');
INSERT INTO public."Lessons" (id, url, description, "thumbnailUrl", title, duration, "seqNo", "courseId", "createdAt", "updatedAt") VALUES (77, 'https://www.youtube.com/watch?v=gB-OmN1egV8', 'In this video you''ll learn about the historical context as well as the pros and cons behind the three most popular JavaScript async patterns - Callbacks, Promises, and Async/Await.

🚀 Check out our "Advanced JavaScript" course for more detail on this and other JavaScript topics - https://tylermcginnis.com/courses/advanced-javascript/?s=youtube-async-javascript-callbacks-promises-async-await

If you use JavaScript in any capacity, there’s probably not another resource that will benefit you more than this. This course was years in the making. I took everything I know about JavaScript and all my experience teaching it over the last half decade and put it into this one course.

We’ll cover topics like
  ✅ Execution Contexts 
  ✅ Blocking vs Non Blocking IO 
  ✅ Scopes 
  ✅ The Scope Chain 
  ✅ The Event Loop 
  ✅ Closures 
  ✅ Hoisting 
  ✅ Instantiation Patterns
  ✅ FN.prototype 
  ✅ this, .call, .apply, and .bind 
  ✅ IIFEs/CommonJS/ES Modules 
  ✅ Inheritance 
  ✅ Composition 
  ✅ Async Patterns

Advanced JavaScript - https://tylermcginnis.com/courses/advanced-javascript/

📺 Subscribe to our channel for more educational content to help you master the JavaScript ecosystem: https://www.youtube.com/tylermcginnis

TylerMcGinnis.com is a linear, project-based approach to mastering the JavaScript ecosystem. Our React courses have been taken by over 80k students with an average rating of 4.8/5. So whether you want to learn more about React Hooks, React Native, React Router, vanilla JavaScript, or all of the above, our in-depth courses and tutorials will teach you everything you need to know about utilizing these technologies in 2019.

🏃 Visit our website for more in-depth, highly-rated educational content to help you master the JavaScript ecosystem: https://tylermcginnis.com/', 'https://i.ytimg.com/vi/gB-OmN1egV8/default.jpg', 'The Evolution of Async JavaScript: From Callbacks, to Promises, to Async/Await', '00:45:25', 3, 4, '2019-11-13 10:53:50.25+05:30', '2019-11-13 10:53:50.25+05:30');
INSERT INTO public."Lessons" (id, url, description, "thumbnailUrl", title, duration, "seqNo", "courseId", "createdAt", "updatedAt") VALUES (78, 'https://www.youtube.com/watch?v=ZxpdR_C7RVA', 'ES6 classes were introduced just a few years ago but because this is JavaScript, there''s already a stage 3 proposal to make the API more enjoyable. In this video we''re going to go over what those changes are and some misconceptions regarding them.

🚀 Check out our "Advanced JavaScript" course for more detail on this and other JavaScript topics - https://tylermcginnis.com/courses/advanced-javascript/?s=javascript-private-public-class-fields

I’m not good at writing sales copy, so just trust me that if you use JavaScript in any capacity, there’s probably not another resource that will benefit you more than this. This course was years in the making. I took everything I know about JavaScript and all my experience teaching it over the last half decade and put it into this one course.

We’ll cover topics like
  ✅ Execution Contexts 
  ✅ Blocking vs Non Blocking IO 
  ✅ Scopes 
  ✅ The Scope Chain 
  ✅ The Event Loop 
  ✅ Closures 
  ✅ Hoisting 
  ✅ Instantiation Patterns
  ✅ FN.prototype 
  ✅ this, .call, .apply, and .bind 
  ✅ IIFEs/CommonJS/ES Modules 
  ✅ Inheritance 
  ✅ Composition 
  ✅ Async Patterns

Advanced JavaScript - https://tylermcginnis.com/courses/advanced-javascript/

📺 Subscribe to our channel for more educational content to help you master the JavaScript ecosystem: https://www.youtube.com/tylermcginnis

TylerMcGinnis.com is a linear, project-based approach to mastering the JavaScript ecosystem. Our React courses have been taken by over 80k students with an average rating of 4.8/5. So whether you want to learn more about React Hooks, React Native, React Router, vanilla JavaScript, or all of the above, our in-depth courses and tutorials will teach you everything you need to know about utilizing these technologies in 2019.

🏃 Visit our website for more in-depth, highly-rated educational content to help you master the JavaScript ecosystem: https://tylermcginnis.com/', 'https://i.ytimg.com/vi/ZxpdR_C7RVA/default.jpg', 'JavaScript Private and Public Class Fields', '00:08:30', 4, 4, '2019-11-13 10:53:50.25+05:30', '2019-11-13 10:53:50.25+05:30');
INSERT INTO public."Lessons" (id, url, description, "thumbnailUrl", title, duration, "seqNo", "courseId", "createdAt", "updatedAt") VALUES (79, 'https://www.youtube.com/watch?v=MiKdRJc4ooE', 'Inheritance is a principle of Object Oriented Programming. In this post you''ll learn how to accomplish inheritance in JavaScript in both ES5 as well as ES6.

🚀 Check out our "Advanced JavaScript" course for more detail on this and other JavaScript topics - https://tylermcginnis.com/courses/advanced-javascript/?s=youtube-javascript-inheritance-prototype-chain

I’m not good at writing sales copy, so just trust me that if you use JavaScript in any capacity, there’s probably not another resource that will benefit you more than this. This course was years in the making. I took everything I know about JavaScript and all my experience teaching it over the last half decade and put it into this one course.

We’ll cover topics like
  ✅ Execution Contexts 
  ✅ Blocking vs Non Blocking IO 
  ✅ Scopes 
  ✅ The Scope Chain 
  ✅ The Event Loop 
  ✅ Closures 
  ✅ Hoisting 
  ✅ Instantiation Patterns
  ✅ FN.prototype 
  ✅ this, .call, .apply, and .bind 
  ✅ IIFEs/CommonJS/ES Modules 
  ✅ Inheritance 
  ✅ Composition 
  ✅ Async Patterns

Advanced JavaScript - https://tylermcginnis.com/courses/advanced-javascript/

📺 Subscribe to our channel for more educational content to help you master the JavaScript ecosystem: https://www.youtube.com/tylermcginnis

TylerMcGinnis.com is a linear, project-based approach to mastering the JavaScript ecosystem. Our React courses have been taken by over 80k students with an average rating of 4.8/5. So whether you want to learn more about React Hooks, React Native, React Router, vanilla JavaScript, or all of the above, our in-depth courses and tutorials will teach you everything you need to know about utilizing these technologies in 2019.

🏃 Visit our website for more in-depth, highly-rated educational content to help you master the JavaScript ecosystem: https://tylermcginnis.com/

You can find the full blog post here - 
https://tylermcginnis.com/javascript-inheritance-and-the-prototype-chain/', 'https://i.ytimg.com/vi/MiKdRJc4ooE/default.jpg', 'JavaScript Inheritance and the Prototype Chain', '00:13:55', 5, 4, '2019-11-13 10:53:50.25+05:30', '2019-11-13 10:53:50.25+05:30');
INSERT INTO public."Lessons" (id, url, description, "thumbnailUrl", title, duration, "seqNo", "courseId", "createdAt", "updatedAt") VALUES (80, 'https://www.youtube.com/watch?v=7HolHe7Gqbw', 'You''ve probably heard that you should favor composition over inheritance. This post breaks down why that is by looking at where inheritance breaks down and composition shines.

🚀 Check out our "Advanced JavaScript" course for greater detail on this and other JavaScript topics - https://tylermcginnis.com/courses/advanced-javascript/?s=youtube-javascript-inheritance-vs-composition

I’m not good at writing sales copy, so just trust me that if you use JavaScript in any capacity, there’s probably not another resource that will benefit you more than this. This course was years in the making. I took everything I know about JavaScript and all my experience teaching it over the last half decade and put it into this one course.

We’ll cover topics like
  ✅ Execution Contexts 
  ✅ Blocking vs Non Blocking IO 
  ✅ Scopes 
  ✅ The Scope Chain 
  ✅ The Event Loop 
  ✅ Closures 
  ✅ Hoisting 
  ✅ Instantiation Patterns
  ✅ FN.prototype 
  ✅ this, .call, .apply, and .bind 
  ✅ IIFEs/CommonJS/ES Modules 
  ✅ Inheritance 
  ✅ Composition 
  ✅ Async Patterns

Advanced JavaScript - https://tylermcginnis.com/courses/advanced-javascript/

📺 Subscribe to our channel for more educational content to help you master the JavaScript ecosystem: https://www.youtube.com/tylermcginnis

TylerMcGinnis.com is a linear, project-based approach to mastering the JavaScript ecosystem. Our React courses have been taken by over 80k students with an average rating of 4.8/5. So whether you want to learn more about React Hooks, React Native, React Router, vanilla JavaScript, or all of the above, our in-depth courses and tutorials will teach you everything you need to know about utilizing these technologies in 2019.

🏃 Visit our website for more in-depth, highly-rated educational content to help you master the JavaScript ecosystem: https://tylermcginnis.com/', 'https://i.ytimg.com/vi/7HolHe7Gqbw/default.jpg', 'JavaScript Composition vs Inheritance', '00:06:16', 6, 4, '2019-11-13 10:53:50.25+05:30', '2019-11-13 10:53:50.25+05:30');
INSERT INTO public."Lessons" (id, url, description, "thumbnailUrl", title, duration, "seqNo", "courseId", "createdAt", "updatedAt") VALUES (81, 'https://www.youtube.com/watch?v=YliiOCGNfns', 'This video walks you through how to recreate the basic functionality of a JavaScript array, enabling you to explore certain patterns and features of the JavaScript language in a practical exercise.

🚀 Check out our "Advanced JavaScript" course for greater detail on this and other JavaScript topics - https://tylermcginnis.com/courses/advanced-javascript/?s=youtube-creating-your-own-implementation-of-array
 
I’m not good at writing sales copy, so just trust me that if you use JavaScript in any capacity, there’s probably not another resource that will benefit you more than this. This course was years in the making. I took everything I know about JavaScript and all my experience teaching it over the last half decade and put it into this one course.

We’ll cover topics like
  ✅ Execution Contexts 
  ✅ Blocking vs Non Blocking IO 
  ✅ Scopes 
  ✅ The Scope Chain 
  ✅ The Event Loop 
  ✅ Closures 
  ✅ Hoisting 
  ✅ Instantiation Patterns
  ✅ FN.prototype 
  ✅ this, .call, .apply, and .bind 
  ✅ IIFEs/CommonJS/ES Modules 
  ✅ Inheritance 
  ✅ Composition 
  ✅ Async Patterns

Advanced JavaScript - https://tylermcginnis.com/courses/advanced-javascript/

📺 Subscribe to our channel for more educational content to help you master the JavaScript ecosystem: https://www.youtube.com/tylermcginnis

TylerMcGinnis.com is a linear, project-based approach to mastering the JavaScript ecosystem. Our React courses have been taken by over 80k students with an average rating of 4.8/5. So whether you want to learn more about React Hooks, React Native, React Router, vanilla JavaScript, or all of the above, our in-depth courses and tutorials will teach you everything you need to know about utilizing these technologies in 2019.

🏃 Visit our website for more in-depth, highly-rated educational content to help you master the JavaScript ecosystem: https://tylermcginnis.com/', 'https://i.ytimg.com/vi/YliiOCGNfns/default.jpg', 'Creating your own JavaScript Array', '00:12:32', 7, 4, '2019-11-13 10:53:50.25+05:30', '2019-11-13 10:53:50.25+05:30');
INSERT INTO public."Lessons" (id, url, description, "thumbnailUrl", title, duration, "seqNo", "courseId", "createdAt", "updatedAt") VALUES (82, 'https://www.youtube.com/watch?v=qJWALEoGge4', 'Consistently the most commonly under-learned aspect of JavaScript is the module system. There''s good reason for that. Modules in JavaScript have a strange and erratic history. In this post we''ll walk through that history, and you''ll learn modules of the past to better understand how JavaScript modules work today. 

🚀 Check out our "Advanced JavaScript" course for greater detail on this and other JavaScript topics: https://tylermcginnis.com/courses/advanced-javascript/

I’m not good at writing sales copy, so just trust me that if you use JavaScript in any capacity, there’s probably not another resource that will benefit you more than this. This course was years in the making. I took everything I know about JavaScript and all my experience teaching it over the last half decade and put it into this one course.

We’ll cover topics like
  ✅ Execution Contexts 
  ✅ Blocking vs Non Blocking IO 
  ✅ Scopes 
  ✅ The Scope Chain 
  ✅ The Event Loop 
  ✅ Closures 
  ✅ Hoisting 
  ✅ Instantiation Patterns
  ✅ FN.prototype 
  ✅ this, .call, .apply, and .bind 
  ✅ IIFEs/CommonJS/ES Modules 
  ✅ Inheritance 
  ✅ Composition 
  ✅ Async Patterns

Advanced JavaScript Course - https://tylermcginnis.com/courses/advanced-javascript/

📺 Subscribe to our channel for more educational content to help you master the JavaScript ecosystem: https://www.youtube.com/tylermcginnis

Here''s the full blog post - https://tylermcginnis.com/javascript-modules

TylerMcGinnis.com is a linear, project-based approach to mastering the JavaScript ecosystem. Our React courses have been taken by over 80k students with an average rating of 4.8/5. So whether you want to learn more about React Hooks, React Native, React Router, vanilla JavaScript, or all of the above, our in-depth courses and tutorials will teach you everything you need to know about utilizing these technologies in 2019.

🏃 Visit our website for more in-depth, highly-rated educational content to help you master the JavaScript ecosystem: https://tylermcginnis.com/', 'https://i.ytimg.com/vi/qJWALEoGge4/default.jpg', 'JavaScript Modules: From IIFEs to CommonJS to ES6 Modules', '00:32:14', 8, 4, '2019-11-13 10:53:50.25+05:30', '2019-11-13 10:53:50.25+05:30');


--
-- TOC entry 2932 (class 0 OID 0)
-- Dependencies: 196

--

SELECT pg_catalog.setval('public."Courses_id_seq"', 3, true);


--
-- TOC entry 2933 (class 0 OID 0)
-- Dependencies: 198

--

SELECT pg_catalog.setval('public."Lessons_id_seq"', 82, true);


--
-- TOC entry 2795 (class 2606 OID 17427)

--

ALTER TABLE ONLY public."Courses"
    ADD CONSTRAINT "Courses_pkey" PRIMARY KEY (id);


--
-- TOC entry 2797 (class 2606 OID 17438)

--

ALTER TABLE ONLY public."Lessons"
    ADD CONSTRAINT "Lessons_pkey" PRIMARY KEY (id);


--
-- TOC entry 2798 (class 2606 OID 17439)

--

ALTER TABLE ONLY public."Lessons"
    ADD CONSTRAINT "Lessons_courseId_fkey" FOREIGN KEY ("courseId") REFERENCES public."Courses"(id) ON UPDATE CASCADE ON DELETE CASCADE;


-- Completed on 2019-11-18 09:33:50 IST

--
-- PostgreSQL database dump complete
--

