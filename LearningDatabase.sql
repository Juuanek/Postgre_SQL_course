PGDMP      9                |           learning    16.2    16.2     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16755    learning    DATABASE     {   CREATE DATABASE learning WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Polish_Poland.1250';
    DROP DATABASE learning;
                postgres    false            �            1259    16757    account    TABLE     $  CREATE TABLE public.account (
    user_id integer NOT NULL,
    username character varying(50) NOT NULL,
    password character varying(50) NOT NULL,
    email character varying(250) NOT NULL,
    created_on timestamp without time zone NOT NULL,
    last_login timestamp without time zone
);
    DROP TABLE public.account;
       public         heap    postgres    false            �            1259    16777    account_job    TABLE     x   CREATE TABLE public.account_job (
    user_id integer,
    job_id integer,
    hire_date timestamp without time zone
);
    DROP TABLE public.account_job;
       public         heap    postgres    false            �            1259    16756    account_user_id_seq    SEQUENCE     �   CREATE SEQUENCE public.account_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.account_user_id_seq;
       public          postgres    false    216            �           0    0    account_user_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.account_user_id_seq OWNED BY public.account.user_id;
          public          postgres    false    215            �            1259    16769    job    TABLE     g   CREATE TABLE public.job (
    job_id integer NOT NULL,
    job_name character varying(200) NOT NULL
);
    DROP TABLE public.job;
       public         heap    postgres    false            �            1259    16768    job_job_id_seq    SEQUENCE     �   CREATE SEQUENCE public.job_job_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.job_job_id_seq;
       public          postgres    false    218            �           0    0    job_job_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.job_job_id_seq OWNED BY public.job.job_id;
          public          postgres    false    217            #           2604    16760    account user_id    DEFAULT     r   ALTER TABLE ONLY public.account ALTER COLUMN user_id SET DEFAULT nextval('public.account_user_id_seq'::regclass);
 >   ALTER TABLE public.account ALTER COLUMN user_id DROP DEFAULT;
       public          postgres    false    216    215    216            $           2604    16772 
   job job_id    DEFAULT     h   ALTER TABLE ONLY public.job ALTER COLUMN job_id SET DEFAULT nextval('public.job_job_id_seq'::regclass);
 9   ALTER TABLE public.job ALTER COLUMN job_id DROP DEFAULT;
       public          postgres    false    218    217    218            �          0    16757    account 
   TABLE DATA           ]   COPY public.account (user_id, username, password, email, created_on, last_login) FROM stdin;
    public          postgres    false    216          �          0    16777    account_job 
   TABLE DATA           A   COPY public.account_job (user_id, job_id, hire_date) FROM stdin;
    public          postgres    false    219   r       �          0    16769    job 
   TABLE DATA           /   COPY public.job (job_id, job_name) FROM stdin;
    public          postgres    false    218   �       �           0    0    account_user_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.account_user_id_seq', 1, true);
          public          postgres    false    215            �           0    0    job_job_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.job_job_id_seq', 2, true);
          public          postgres    false    217            &           2606    16766    account account_email_key 
   CONSTRAINT     U   ALTER TABLE ONLY public.account
    ADD CONSTRAINT account_email_key UNIQUE (email);
 C   ALTER TABLE ONLY public.account DROP CONSTRAINT account_email_key;
       public            postgres    false    216            (           2606    16762    account account_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.account
    ADD CONSTRAINT account_pkey PRIMARY KEY (user_id);
 >   ALTER TABLE ONLY public.account DROP CONSTRAINT account_pkey;
       public            postgres    false    216            *           2606    16764    account account_username_key 
   CONSTRAINT     [   ALTER TABLE ONLY public.account
    ADD CONSTRAINT account_username_key UNIQUE (username);
 F   ALTER TABLE ONLY public.account DROP CONSTRAINT account_username_key;
       public            postgres    false    216            ,           2606    16776    job job_job_name_key 
   CONSTRAINT     S   ALTER TABLE ONLY public.job
    ADD CONSTRAINT job_job_name_key UNIQUE (job_name);
 >   ALTER TABLE ONLY public.job DROP CONSTRAINT job_job_name_key;
       public            postgres    false    218            .           2606    16774    job job_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.job
    ADD CONSTRAINT job_pkey PRIMARY KEY (job_id);
 6   ALTER TABLE ONLY public.job DROP CONSTRAINT job_pkey;
       public            postgres    false    218            /           2606    16785 #   account_job account_job_job_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.account_job
    ADD CONSTRAINT account_job_job_id_fkey FOREIGN KEY (job_id) REFERENCES public.job(job_id);
 M   ALTER TABLE ONLY public.account_job DROP CONSTRAINT account_job_job_id_fkey;
       public          postgres    false    219    4654    218            0           2606    16780 $   account_job account_job_user_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.account_job
    ADD CONSTRAINT account_job_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.account(user_id);
 N   ALTER TABLE ONLY public.account_job DROP CONSTRAINT account_job_user_id_fkey;
       public          postgres    false    219    216    4648            �   H   x�3���/N�,H,..�/J���Rs3s���s9��LtLu���L����,�-��8c��b���� �gF      �   ,   x�3�4�4202�50�52S04�25�2��3���06����� vCU      �   %   x�3�t,.)��K,-�2�(J-�LI�+����� ���     