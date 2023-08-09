
ALTER TABLE IF EXISTS ONLY public.users_data DROP CONSTRAINT IF EXISTS pk_users_data CASCADE;
ALTER TABLE IF EXISTS ONLY public.question DROP CONSTRAINT IF EXISTS pk_question_id CASCADE;

DROP TABLE IF EXISTS public.question;
CREATE TABLE question (
    id SERIAL NOT NULL,
    user_id integer,
    submission_time timestamp without time zone,
    view_number integer,
    vote_number integer,
    title text,
    message text,
    image text
);

DROP TABLE IF EXISTS public.users_data;
CREATE TABLE public.users_data (
    id     SERIAL NOT NULL,
    user_name varchar not null,
    email     varchar not null,
    password  varchar not null,
    honor     int,
    role      varchar not null,
    submission_time   timestamp without time zone
);

ALTER TABLE ONLY question
    ADD CONSTRAINT pk_question_id PRIMARY KEY (id);

ALTER TABLE ONLY users_data
    ADD CONSTRAINT pk_users_data_id PRIMARY KEY (id);

INSERT INTO question VALUES (0, NULL,'2017-04-28 08:29:00', 29, 7, 'How to make lists in Python?', 'I am totally new to this, any hints?', NULL);
INSERT INTO question VALUES (1, NULL, '2017-04-29 09:19:00', 15, 9, 'Wordpress loading multiple jQuery Versions', 'I developed a plugin that uses the jquery booklet plugin (http://builtbywill.com/booklet/#/) this plugin binds a function to $ so I cann call $(".myBook").booklet()', NULL);

INSERT INTO users_data VALUES (1,'lazlo', 'lazlo@lazlo.com', '$2b$12$B0RoonchcmcHFe0SG2CHyOJtXi2ubd1FBnzTxIrNHtA7u/JmHk1F6', 0, 'user', '2022-08-08 16:55:00');
SELECT pg_catalog.setval('users_data_id_seq', 2, true);