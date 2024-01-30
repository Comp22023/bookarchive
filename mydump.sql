PGDMP     -                     |            bookdb    14.5    15.1 g    ,           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            -           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            .           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            /           1262    59338    bookdb    DATABASE     z   CREATE DATABASE bookdb WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Russian_Russia.1251';
    DROP DATABASE bookdb;
                postgres    false                        2615    2200    public    SCHEMA     2   -- *not* creating schema, since initdb creates it
 2   -- *not* dropping schema, since initdb creates it
                postgres    false            0           0    0    SCHEMA public    ACL     Q   REVOKE USAGE ON SCHEMA public FROM PUBLIC;
GRANT ALL ON SCHEMA public TO PUBLIC;
                   postgres    false    4            �            1259    59375 
   auth_group    TABLE     f   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);
    DROP TABLE public.auth_group;
       public         heap    postgres    false    4            �            1259    59374    auth_group_id_seq    SEQUENCE     �   ALTER TABLE public.auth_group ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.auth_group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    4    216            �            1259    59383    auth_group_permissions    TABLE     �   CREATE TABLE public.auth_group_permissions (
    id bigint NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         heap    postgres    false    4            �            1259    59382    auth_group_permissions_id_seq    SEQUENCE     �   ALTER TABLE public.auth_group_permissions ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    218    4            �            1259    59369    auth_permission    TABLE     �   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         heap    postgres    false    4            �            1259    59368    auth_permission_id_seq    SEQUENCE     �   ALTER TABLE public.auth_permission ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.auth_permission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    4    214            �            1259    59389 	   auth_user    TABLE     �  CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(150) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);
    DROP TABLE public.auth_user;
       public         heap    postgres    false    4            �            1259    59397    auth_user_groups    TABLE     ~   CREATE TABLE public.auth_user_groups (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);
 $   DROP TABLE public.auth_user_groups;
       public         heap    postgres    false    4            �            1259    59396    auth_user_groups_id_seq    SEQUENCE     �   ALTER TABLE public.auth_user_groups ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    4    222            �            1259    59388    auth_user_id_seq    SEQUENCE     �   ALTER TABLE public.auth_user ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.auth_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    4    220            �            1259    59403    auth_user_user_permissions    TABLE     �   CREATE TABLE public.auth_user_user_permissions (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);
 .   DROP TABLE public.auth_user_user_permissions;
       public         heap    postgres    false    4            �            1259    59402 !   auth_user_user_permissions_id_seq    SEQUENCE     �   ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    4    224            �            1259    59680    bookapp_books    TABLE     �   CREATE TABLE public.bookapp_books (
    id bigint NOT NULL,
    book_name character varying(50) NOT NULL,
    book_img character varying(100),
    book_description character varying(255) NOT NULL,
    books_time date NOT NULL
);
 !   DROP TABLE public.bookapp_books;
       public         heap    postgres    false    4            �            1259    59679    bookapp_books_id_seq    SEQUENCE     �   ALTER TABLE public.bookapp_books ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.bookapp_books_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    233    4            �            1259    59490    bookapp_categories    TABLE     p   CREATE TABLE public.bookapp_categories (
    id bigint NOT NULL,
    category character varying(25) NOT NULL
);
 &   DROP TABLE public.bookapp_categories;
       public         heap    postgres    false    4            �            1259    59489    bookapp_categories_id_seq    SEQUENCE     �   ALTER TABLE public.bookapp_categories ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.bookapp_categories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    4    228            �            1259    59672    bookapp_news    TABLE     �   CREATE TABLE public.bookapp_news (
    id bigint NOT NULL,
    news_name character varying(50) NOT NULL,
    news_time date NOT NULL,
    news_contains character varying(365) NOT NULL,
    news_image character varying(100)
);
     DROP TABLE public.bookapp_news;
       public         heap    postgres    false    4            �            1259    59671    bookapp_news_id_seq    SEQUENCE     �   ALTER TABLE public.bookapp_news ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.bookapp_news_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    4    231            �            1259    59700    bookapp_parts    TABLE     �   CREATE TABLE public.bookapp_parts (
    id bigint NOT NULL,
    part_name text NOT NULL,
    part_content text NOT NULL,
    book_id bigint NOT NULL
);
 !   DROP TABLE public.bookapp_parts;
       public         heap    postgres    false    4            �            1259    59699    bookapp_parts_id_seq    SEQUENCE     �   ALTER TABLE public.bookapp_parts ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.bookapp_parts_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    4    235            �            1259    59461    django_admin_log    TABLE     �  CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);
 $   DROP TABLE public.django_admin_log;
       public         heap    postgres    false    4            �            1259    59460    django_admin_log_id_seq    SEQUENCE     �   ALTER TABLE public.django_admin_log ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.django_admin_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    4    226            �            1259    59361    django_content_type    TABLE     �   CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         heap    postgres    false    4            �            1259    59360    django_content_type_id_seq    SEQUENCE     �   ALTER TABLE public.django_content_type ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.django_content_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    212    4            �            1259    59353    django_migrations    TABLE     �   CREATE TABLE public.django_migrations (
    id bigint NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         heap    postgres    false    4            �            1259    59352    django_migrations_id_seq    SEQUENCE     �   ALTER TABLE public.django_migrations ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    4    210            �            1259    59495    django_session    TABLE     �   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         heap    postgres    false    4                      0    59375 
   auth_group 
   TABLE DATA           .   COPY public.auth_group (id, name) FROM stdin;
    public          postgres    false    216   N�                 0    59383    auth_group_permissions 
   TABLE DATA           M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public          postgres    false    218   k�                 0    59369    auth_permission 
   TABLE DATA           N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public          postgres    false    214   ��                 0    59389 	   auth_user 
   TABLE DATA           �   COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
    public          postgres    false    220   Q�                 0    59397    auth_user_groups 
   TABLE DATA           A   COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
    public          postgres    false    222   �                 0    59403    auth_user_user_permissions 
   TABLE DATA           P   COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public          postgres    false    224   0�       '          0    59680    bookapp_books 
   TABLE DATA           ^   COPY public.bookapp_books (id, book_name, book_img, book_description, books_time) FROM stdin;
    public          postgres    false    233   M�       "          0    59490    bookapp_categories 
   TABLE DATA           :   COPY public.bookapp_categories (id, category) FROM stdin;
    public          postgres    false    228   T�       %          0    59672    bookapp_news 
   TABLE DATA           [   COPY public.bookapp_news (id, news_name, news_time, news_contains, news_image) FROM stdin;
    public          postgres    false    231   ��       )          0    59700    bookapp_parts 
   TABLE DATA           M   COPY public.bookapp_parts (id, part_name, part_content, book_id) FROM stdin;
    public          postgres    false    235   ��                  0    59461    django_admin_log 
   TABLE DATA           �   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public          postgres    false    226   Ց                 0    59361    django_content_type 
   TABLE DATA           C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public          postgres    false    212   ��                 0    59353    django_migrations 
   TABLE DATA           C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public          postgres    false    210   �       #          0    59495    django_session 
   TABLE DATA           P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public          postgres    false    229   Y�       1           0    0    auth_group_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);
          public          postgres    false    215            2           0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);
          public          postgres    false    217            3           0    0    auth_permission_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_permission_id_seq', 40, true);
          public          postgres    false    213            4           0    0    auth_user_groups_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);
          public          postgres    false    221            5           0    0    auth_user_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.auth_user_id_seq', 1, true);
          public          postgres    false    219            6           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);
          public          postgres    false    223            7           0    0    bookapp_books_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.bookapp_books_id_seq', 16, true);
          public          postgres    false    232            8           0    0    bookapp_categories_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.bookapp_categories_id_seq', 3, true);
          public          postgres    false    227            9           0    0    bookapp_news_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.bookapp_news_id_seq', 4, true);
          public          postgres    false    230            :           0    0    bookapp_parts_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.bookapp_parts_id_seq', 1, false);
          public          postgres    false    234            ;           0    0    django_admin_log_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 49, true);
          public          postgres    false    225            <           0    0    django_content_type_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.django_content_type_id_seq', 10, true);
          public          postgres    false    211            =           0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 26, true);
          public          postgres    false    209            Q           2606    59487    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public            postgres    false    216            V           2606    59418 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public            postgres    false    218    218            Y           2606    59387 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public            postgres    false    218            S           2606    59379    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public            postgres    false    216            L           2606    59409 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public            postgres    false    214    214            N           2606    59373 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public            postgres    false    214            a           2606    59401 &   auth_user_groups auth_user_groups_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_pkey;
       public            postgres    false    222            d           2606    59433 @   auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);
 j   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq;
       public            postgres    false    222    222            [           2606    59393    auth_user auth_user_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_pkey;
       public            postgres    false    220            g           2606    59407 :   auth_user_user_permissions auth_user_user_permissions_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pkey;
       public            postgres    false    224            j           2606    59447 Y   auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq;
       public            postgres    false    224    224            ^           2606    59482     auth_user auth_user_username_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);
 J   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_username_key;
       public            postgres    false    220            x           2606    59684     bookapp_books bookapp_books_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.bookapp_books
    ADD CONSTRAINT bookapp_books_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.bookapp_books DROP CONSTRAINT bookapp_books_pkey;
       public            postgres    false    233            p           2606    59494 *   bookapp_categories bookapp_categories_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.bookapp_categories
    ADD CONSTRAINT bookapp_categories_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.bookapp_categories DROP CONSTRAINT bookapp_categories_pkey;
       public            postgres    false    228            v           2606    59676    bookapp_news bookapp_news_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.bookapp_news
    ADD CONSTRAINT bookapp_news_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.bookapp_news DROP CONSTRAINT bookapp_news_pkey;
       public            postgres    false    231            z           2606    59706     bookapp_parts bookapp_parts_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.bookapp_parts
    ADD CONSTRAINT bookapp_parts_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.bookapp_parts DROP CONSTRAINT bookapp_parts_pkey;
       public            postgres    false    235            m           2606    59468 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public            postgres    false    226            G           2606    59367 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public            postgres    false    212    212            I           2606    59365 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public            postgres    false    212            E           2606    59359 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public            postgres    false    210            s           2606    59501 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public            postgres    false    229            O           1259    59488    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public            postgres    false    216            T           1259    59429 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public            postgres    false    218            W           1259    59430 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public            postgres    false    218            J           1259    59415 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public            postgres    false    214            _           1259    59445 "   auth_user_groups_group_id_97559544    INDEX     c   CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);
 6   DROP INDEX public.auth_user_groups_group_id_97559544;
       public            postgres    false    222            b           1259    59444 !   auth_user_groups_user_id_6a12ed8b    INDEX     a   CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);
 5   DROP INDEX public.auth_user_groups_user_id_6a12ed8b;
       public            postgres    false    222            e           1259    59459 1   auth_user_user_permissions_permission_id_1fbb5f2c    INDEX     �   CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);
 E   DROP INDEX public.auth_user_user_permissions_permission_id_1fbb5f2c;
       public            postgres    false    224            h           1259    59458 +   auth_user_user_permissions_user_id_a95ead1b    INDEX     u   CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);
 ?   DROP INDEX public.auth_user_user_permissions_user_id_a95ead1b;
       public            postgres    false    224            \           1259    59483     auth_user_username_6821ab7c_like    INDEX     n   CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);
 4   DROP INDEX public.auth_user_username_6821ab7c_like;
       public            postgres    false    220            k           1259    59479 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public            postgres    false    226            n           1259    59480 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public            postgres    false    226            q           1259    59503 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public            postgres    false    229            t           1259    59502 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public            postgres    false    229            |           2606    59424 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public          postgres    false    214    218    3150            }           2606    59419 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public          postgres    false    218    3155    216            {           2606    59410 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public          postgres    false    214    212    3145            ~           2606    59439 D   auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id;
       public          postgres    false    216    222    3155                       2606    59434 B   auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id;
       public          postgres    false    220    222    3163            �           2606    59453 S   auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm;
       public          postgres    false    224    214    3150            �           2606    59448 V   auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id;
       public          postgres    false    224    220    3163            �           2606    59469 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public          postgres    false    212    3145    226            �           2606    59474 B   django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id;
       public          postgres    false    220    3163    226                  x������ � �            x������ � �         �  x�e�KN�0��}�� �I�Zs$Z+D�8JR�.a�	���z�F$�g����'�WjۨۢN��6ٹ2�u��Q��~�P�@6�E]Z������l/a�"�|��A�q��<�5�}���r�J!�&��	�u�.y������F�ֱ�lݾQ�omf<nZ�.$�7Ms���2���,�;۪Ɵ��|\�������,ho\����2�qu?�kIl��CN�3ڬx�� �׼��c��2/4�
kbugÿ��`�T�w2��8��0/2v�	AU$t�7EoK�V�S���N�Qr����.���f�]������?�������v~W+����ә8�W[���bi��\A��n�������/����!.�@��N���"BA�)M���^x�Ɓ���`z��7"�����[Ex�`��Fk��� �         �   x�=̻
�0��9}
�nҒ�4��� ��E���ir�Q��v�_�y�벂S��Ѝ���us�tB.�*���mrl�L����E}e��a����h�y���1+�i�F��zF�B�Q�A2aAJyp?�8��r�U�;B�Ҫ!0`�Uw�_v��_`bBEJ�T�L��s����15b            x������ � �            x������ � �      '   �  x��UMo�F=S��?�+�{�c/ɥ@Ѣ�
�LI�)Qi�I��E��H?��s�SŖ俰���fW�(�Ba��]�μy�f��X�Sy���kQ��A�㠒�X��O��q��G����;I��Y��Y���!+Or6L�!��('Y:�(��넑�O���Qs8��%�,�_bf����
�+9�k�"����0�b.���s���
�֦<�vr*���x̲�4\�g��n>Q��V^��� ��2g�)��~�dr?���O��Ͼ�~���>��X�MpW�-Rw & ��m�&����f�nVG�K��x���(�gE��G��z�<�n�|���AT�W�N}&���;�O���-��z� �ɀn�L콑7b�gyS�)��ă2.&��DP/���Ϲ�Y����rہ����O���B����C�qC��� ��2U�(bNچȺX�q	���dP�"��s#���|����sU�J�P������w�WE��|�d�"�u��!~�3���,�D+y��l��ɨ`�� ���(q�_d�qU1DZ��+oGE;eII��{�s�Bνm^����6�;���l�o`��W��	<̻��O�	s�s���zk��F�rM7��|<�qn�<�I�T�|P�\���������p�M��a>��)��=�r���?�:��
�띐�d�o58^Re�CCӖwX�KX-Q��/0�E���C�yf��J�;2�1g~�c//IuF'%�5��Y�jv"'��r���������Q���XX�D��s.���1�ЧYV�b�)Ύ
��q/�2α#��VF���a��'�|�+j�(o��?1a<�Y��[��Le�g{����$Q��>&4pT�g�!�������wK�u'T�٬���hx�R�/T7e� ��q�^���GG��:�o�w��&\o0Ĩ�M�vp<�wJ�)t&M8tgbtkk�o1h�tU^3������Q�f����a��      "   -   x�3�0���x��y&sq^�dL�0HϺ0�+F��� Ř�      %     x�E�]N�@��a�C`�i]����W��`�o�Q@��>���hiіqwv乃����Ù	z��<	���>M�S`����͎�|I?�J9�JզdhWP�f�}�ނ�h����-I�qji�'n��i��,�2��X�aaJ��\��#yXc�X�YZR����G��y@pέ��s��N&���Q0:��_]μ����*�A�5wG�
B�����ġ���T��Zl�e���e�����*��He��$U�@���w1=��Ǟ�?m���      )      x������ � �          �  x����nEǯ��X|��f�|�%���!6�|Ԩ��PU�M���JUQ�	�47�+̾��u�3�Mq�^�Y�����9g�sF􈓺����K!J陲^p�!�=��d}{�9�3n�Ͽnl�������`0����{�z�'�(�Qɉ���&-�QM.�9f��VF�\F�m4��4͸5Ϋ���������,0_��ެA�/F�o[x�ٟ�пu��M���kG�Kπ=O��ix�"�,�kf)!�:�����aU��OT_J^J���n�/a.´zPT«0����ْd;�\�S�T�y����<�K �dI�y��w�j=G�^�����C��7��=�xy�^Kp�/�\�B2平��ï���﷊ѷ��:�IV䲦�y-9��R.kS-��;��MY�i�.���Ȋ�Q��u­�8+��%��Q�WiוUM�
�T�;�E�e��؜�,w�CYה��i���e#������ޘ�d�g�R���\�nAb��g��$�R.K���x�U�I�MYԖ;#u�&E�IIk+q���r���0)�Hu��(w)�Rm�q�a�#�ܥ ��@��1]�v��T!lI*�VsL.�tR�ēf��1�0�F�y�r6m� ���e�`b��|��_�aR�`�[���u�A��%3���)�U1���$���Ť��'�t�a�D�G	�I(�E��ڋ�B	2ƾp�T��?	/�����3m|����yV�$y��g�4L�H2'�,sZi�U���H��ᨍ�2���R"a�u<���j��=bZ��A��suІ�9R�� m�xDZ,1M��q`FUС��ƣ6���8��|Vn�|[^=�%>O���2��Z�g�P�V�ٴp�����{\ �I8���y{]���"��B�{�D���>���I�B��c�bATw��=\=lA*�Djɤ�d�l�qq�w��E���MSe�6�9P�{�$!�»�y>����l־�t(���B0"�k��@~���={����S|!����i�6
f�hElr��u媉ъ)�Xe�t���8\~��|]T�Ἅ�s.�@.�tzb,����
\,Ob��}s
�W1��*��&���<3�K)Z�歅�6��o/�^QBW�! v?w�F��Q�5u�.\��u����ut�����y7������?º��         w   x�M�I�@��� ��_��F��e{��,��*�:J��TzJ�6aC�ŝ�m(�E*���&M���9��K�w�������wp���#�R���Xa�i��G�y��:��"4Y8.+ /��=
         A  x����n�0�����U�g|�<�J�7qSk��t��_�$īR	Y�r>�93��f;��u�SE�7;�UH��x�Bx/NkN�����V�2��)X-� B��V�ԻaO�k"�e���u���h��`{�au��ks:m3)K�`�#�9����3g}|���dŚe�#�ąw7�:�у��&
(WM�Pr���f�hC�)YJzݛO�����Dq�$$T���u��b{�]����DQ+����d;~����(�� Y�dtf�S�.Vv鶛�)�F V�������ƛs�)�o \a6x̧�Y�0�;�ه)w߆����4��7��ɍ���tvbF
B,$��ԗ��Cſc���Q@n�s��9�b����2Ƅ�����r��l�f���7���+��������8��(R�U����뮌Ii�X$�f��w�p�A�}pq������yKiM���B��*/��V���Z`�l��X���C��N'O�̠%�?���BKXMF'��J�x���P�0xɐ:�ቤA�2^S*%�]GQj=�P7�� ����FŇ�ޟ��p�jޠ      #     x����n�P  ����O0w�{��KE��Lb(� �����&��o���sk�nx���(����?�\�P�`��7�{3�Oս^�(Qˋ~(E�fƶ� �\���j��3��<�S�8�M���l8�j�,�N�{�f {��)�F9�G��G���=�.���⹼��Q�=�������*3d!{Y��F�Y�>��ٻ�9���l-��[ڮ�Ԇ4.Lߪ�sٙZ�Y�۬ϩ��Ur�(X��(dd� �����P� �3L���Y {�+<ލ�*XRB�Rb�^�#��AɅ����|�i��lOA��Uu=��JmeVd�����-B�s�������S9����G5u^�Iܥ���ꩻ�Ģ���b�m=Z/i���ɉ/����>\�{������[۱���ϡ,(TY N�������DwJ:�J8���S[�{W�?��۟E;�n�;�m���Y��+�87���{y�H��H����+�h� X��1ʿ�~/f����t�     