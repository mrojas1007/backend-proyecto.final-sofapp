PGDMP      3                }           sofapp    16.7 (Debian 16.7-1.pgdg120+1)    17.3     *           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                           false            +           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                           false            ,           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                           false            -           1262    16389    sofapp    DATABASE     q   CREATE DATABASE sofapp WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'en_US.UTF8';
    DROP DATABASE sofapp;
                     sofapp_user    false            .           0    0    sofapp    DATABASE PROPERTIES     /   ALTER DATABASE sofapp SET "TimeZone" TO 'utc';
                          sofapp_user    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
                     sofapp_user    false            /           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                        sofapp_user    false    5            �            1259    16409 	   productos    TABLE     �  CREATE TABLE public.productos (
    id_producto integer NOT NULL,
    id_usuario integer NOT NULL,
    nombre character varying(50) NOT NULL,
    marca character varying(50) NOT NULL,
    tipo character varying(50) NOT NULL,
    cuerpo integer NOT NULL,
    alto integer NOT NULL,
    ancho integer NOT NULL,
    precio integer NOT NULL,
    foto character varying(250) NOT NULL,
    detalle text NOT NULL,
    stock integer NOT NULL,
    color character varying(50) NOT NULL
);
    DROP TABLE public.productos;
       public         heap r       sofapp_user    false    5            �            1259    16408    productos_id_producto_seq    SEQUENCE     �   CREATE SEQUENCE public.productos_id_producto_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.productos_id_producto_seq;
       public               sofapp_user    false    5    218            0           0    0    productos_id_producto_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.productos_id_producto_seq OWNED BY public.productos.id_producto;
          public               sofapp_user    false    217            �            1259    16400    usuario    TABLE       CREATE TABLE public.usuario (
    id_usuario integer NOT NULL,
    nombre character varying(50) NOT NULL,
    apellido character varying(50) NOT NULL,
    email character varying(50) NOT NULL,
    pass character varying(50) NOT NULL,
    fono character varying
);
    DROP TABLE public.usuario;
       public         heap r       sofapp_user    false    5            �            1259    16399    usuario_id_usuario_seq    SEQUENCE     �   CREATE SEQUENCE public.usuario_id_usuario_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.usuario_id_usuario_seq;
       public               sofapp_user    false    216    5            1           0    0    usuario_id_usuario_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.usuario_id_usuario_seq OWNED BY public.usuario.id_usuario;
          public               sofapp_user    false    215            �           2604    16412    productos id_producto    DEFAULT     ~   ALTER TABLE ONLY public.productos ALTER COLUMN id_producto SET DEFAULT nextval('public.productos_id_producto_seq'::regclass);
 D   ALTER TABLE public.productos ALTER COLUMN id_producto DROP DEFAULT;
       public               sofapp_user    false    217    218    218            �           2604    16403    usuario id_usuario    DEFAULT     x   ALTER TABLE ONLY public.usuario ALTER COLUMN id_usuario SET DEFAULT nextval('public.usuario_id_usuario_seq'::regclass);
 A   ALTER TABLE public.usuario ALTER COLUMN id_usuario DROP DEFAULT;
       public               sofapp_user    false    216    215    216            '          0    16409 	   productos 
   TABLE DATA           �   COPY public.productos (id_producto, id_usuario, nombre, marca, tipo, cuerpo, alto, ancho, precio, foto, detalle, stock, color) FROM stdin;
    public               sofapp_user    false    218   �       %          0    16400    usuario 
   TABLE DATA           R   COPY public.usuario (id_usuario, nombre, apellido, email, pass, fono) FROM stdin;
    public               sofapp_user    false    216   �       2           0    0    productos_id_producto_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.productos_id_producto_seq', 6, true);
          public               sofapp_user    false    217            3           0    0    usuario_id_usuario_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.usuario_id_usuario_seq', 4, true);
          public               sofapp_user    false    215            �           2606    16416    productos productos_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.productos
    ADD CONSTRAINT productos_pkey PRIMARY KEY (id_producto);
 B   ALTER TABLE ONLY public.productos DROP CONSTRAINT productos_pkey;
       public                 sofapp_user    false    218            �           2606    16407    usuario usuario_email_key 
   CONSTRAINT     U   ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT usuario_email_key UNIQUE (email);
 C   ALTER TABLE ONLY public.usuario DROP CONSTRAINT usuario_email_key;
       public                 sofapp_user    false    216            �           2606    16405    usuario usuario_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT usuario_pkey PRIMARY KEY (id_usuario);
 >   ALTER TABLE ONLY public.usuario DROP CONSTRAINT usuario_pkey;
       public                 sofapp_user    false    216            �           2606    16417    productos fk_usuario    FK CONSTRAINT     �   ALTER TABLE ONLY public.productos
    ADD CONSTRAINT fk_usuario FOREIGN KEY (id_usuario) REFERENCES public.usuario(id_usuario) ON DELETE CASCADE;
 >   ALTER TABLE ONLY public.productos DROP CONSTRAINT fk_usuario;
       public               sofapp_user    false    216    218    3217            '   S  x��T�n#7=�������-y4�h#�K`$0`�HJ��fqH�4����c�[��c)�d{���p��ի��2��e��樱Y(`�t}r�ʅ��l�L��L<.!���,)O���ЯH�!X�1�w�]��
��_���|gS�&H��j�󪨪�,�����էϳ����b�iv}=K����IS�AK�m���԰@�4�!���(���Y ����۶&$��%%@cR&�Ѱ�4�Z�u�T�̢Vݟ>H����4Ǎ2����kdK�AO~�{r�4��[����ܛ�;���3E�o^��Xe0�:�r88}�H�R�!� ��Y��`8&�>��Q'�"��"���	�&�:�>W���֡hy��zO�8�F;i�}�냫����,'��b�`�(�u��G�0?.��tr�����/zL��a/�QZ�#|��J
tL�!�
��+9rݓa<I5mD#(�X�ع��{nHx�����ݓW<V�K�#���g�$y��iZ˖0h�+��0���w��=v�������b�G`W{GELn��$>z1���L�&�E|�2¹�BA�!P�W/X�e^�eM��uZ��}m��a?%�,V�$ݴ���u�Ta�����j��	���~��l���GZ��P�5�p�&��c�p �9�0����JxP[�%]G�ց��]�eA�h�HZ,q�B<h&��I��:/������!>&��*c-��=�=���-��):0�A�LŁ���cJC S�im��V:!S��u��bT���ǧgո|��s����FL�b����N�`q��{�A5��5T?��4XCj�-�jd��T� WT�������?�I��      %   �   x�M��� DϻӔ�n�z5&���H*���ůjcz��ɾ�ap�h�DpoJ�c=���M�	���PL�����5y�p\R&Os����!��:.
�T�%o���.eG3�Kv6F�S�n�W���]�C/�Fggǰ�|V��[�-��S�A�/�`C�     