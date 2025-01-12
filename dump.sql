PGDMP     9    .                z            shortly #   14.5 (Ubuntu 14.5-0ubuntu0.22.04.1) #   14.5 (Ubuntu 14.5-0ubuntu0.22.04.1)     4           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            5           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            6           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            7           1262    16444    shortly    DATABASE     \   CREATE DATABASE shortly WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'pt_BR.UTF-8';
    DROP DATABASE shortly;
                postgres    false            �            1259    16530    sessions    TABLE     �   CREATE TABLE public.sessions (
    id integer NOT NULL,
    token text NOT NULL,
    email text NOT NULL,
    "createdAt" timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
    DROP TABLE public.sessions;
       public         heap    postgres    false            �            1259    16529    sessions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.sessions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.sessions_id_seq;
       public          postgres    false    212            8           0    0    sessions_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.sessions_id_seq OWNED BY public.sessions.id;
          public          postgres    false    211            �            1259    16520    urls    TABLE       CREATE TABLE public.urls (
    id integer NOT NULL,
    "idUser" integer NOT NULL,
    "nameUser" text NOT NULL,
    "shortUrl" text NOT NULL,
    url text NOT NULL,
    "visitCount" integer NOT NULL,
    "createdAt" timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
    DROP TABLE public.urls;
       public         heap    postgres    false            �            1259    16519    urls_id_seq    SEQUENCE     �   CREATE SEQUENCE public.urls_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.urls_id_seq;
       public          postgres    false    210            9           0    0    urls_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE public.urls_id_seq OWNED BY public.urls.id;
          public          postgres    false    209            �            1259    16543    users    TABLE     �   CREATE TABLE public.users (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    email text NOT NULL,
    password text NOT NULL,
    "createdAt" timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
    DROP TABLE public.users;
       public         heap    postgres    false            �            1259    16542    users_id_seq    SEQUENCE     �   CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public          postgres    false    214            :           0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
          public          postgres    false    213            �           2604    16533    sessions id    DEFAULT     j   ALTER TABLE ONLY public.sessions ALTER COLUMN id SET DEFAULT nextval('public.sessions_id_seq'::regclass);
 :   ALTER TABLE public.sessions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    212    211    212            �           2604    16523    urls id    DEFAULT     b   ALTER TABLE ONLY public.urls ALTER COLUMN id SET DEFAULT nextval('public.urls_id_seq'::regclass);
 6   ALTER TABLE public.urls ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    210    209    210            �           2604    16546    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    213    214    214            /          0    16530    sessions 
   TABLE DATA           A   COPY public.sessions (id, token, email, "createdAt") FROM stdin;
    public          postgres    false    212   1       -          0    16520    urls 
   TABLE DATA           d   COPY public.urls (id, "idUser", "nameUser", "shortUrl", url, "visitCount", "createdAt") FROM stdin;
    public          postgres    false    210   �       1          0    16543    users 
   TABLE DATA           G   COPY public.users (id, name, email, password, "createdAt") FROM stdin;
    public          postgres    false    214   �       ;           0    0    sessions_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.sessions_id_seq', 9, true);
          public          postgres    false    211            <           0    0    urls_id_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('public.urls_id_seq', 5, true);
          public          postgres    false    209            =           0    0    users_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.users_id_seq', 6, true);
          public          postgres    false    213            �           2606    16538    sessions sessions_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.sessions
    ADD CONSTRAINT sessions_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.sessions DROP CONSTRAINT sessions_pkey;
       public            postgres    false    212            �           2606    16540    sessions sessions_token_key 
   CONSTRAINT     W   ALTER TABLE ONLY public.sessions
    ADD CONSTRAINT sessions_token_key UNIQUE (token);
 E   ALTER TABLE ONLY public.sessions DROP CONSTRAINT sessions_token_key;
       public            postgres    false    212            �           2606    16528    urls urls_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.urls
    ADD CONSTRAINT urls_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.urls DROP CONSTRAINT urls_pkey;
       public            postgres    false    210            �           2606    16551    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    214            /   r  x���M��1@��*�C���o�t	��$�����+��o��݂�9�������a޹��<�xvɭ�
�>n��x��=͗G��˗Ү�WɩqV��AM	���0� ��[JG��k��>�-IW"�*�U� �^:�
��C!�Jٵ��_ q��k�@�T���X��h u��k�,���^���Bj��kb�N��l`/�5��u	Jcl����3 פ(�$JМ��8�?�s;Xk[M��R������$_S��"��1:=[��)��`s!�B����~ܞ�.��L6�ev�	\���C�ki޺�I�?{ī��MjŨ���������u&�n�kza)��x~i<!�Tk��=������      -   �  x�ݓ�n�@�����M��=;^ﮑ�(@($%����d-���a�O	��5��E�ho� ����i4&Mv4z����*�]���1���}h�u����F�F�Jn�N2��0�:�LUj���2���n��T��y[��V��J����ܪ��B "���R�J�:������W���P
{�X��?�V�T@����/e�(s=ߏQJ�#�ګ]r�^p�N���.H���� l�,��/�w�v��@	Cf�g��;zU�_nF��n���v�ɡF�n���akU;���'�N������lA�0aR�orS��/�'���o���:�V&���:�U���Cm�{ى�j���F{w�ȧl2��1� �q$Q�P�KtEK��RH v��`ޔku�~S�F�x˻�3-7Ant���on<a3�(��wv�b�����l�	�աH�7�K]�.�$�X$O��*�׽���f��68�W���s�.�6��y��a���y�7�      1   �  x�m͹v�P ����S��r���	A�%=Ӱ
;	>�x,�i���0�²}���
��uV$Za�
t�?!���E�M�:~�sw�`jvC��s�Ğ�Q1.Vl�;������Fd�$(�d�`����,5�S$#�݉�kr��V�T�j:��8*�/�|��*N��傯�K�P(�S�Q��eѤ {n)&Dr�S���A��g�b�_k�M�K�mH�~]fvw�:��n^�C�VN ���A��R�h���IK��4����0�cǱ��鼗Ă�"^��Y��q��Oc�*� H��k�T�-E��	�U�j���mEGSJ!~oܟ�ɚ���Xo�}��.^�U&+X�"��!�0'7�
�=���.f85j�.����t�9V���7yjҡu5�]����`'�\��F�H��0J�?�㸿�C�R     