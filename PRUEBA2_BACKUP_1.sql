PGDMP  $                    |            PRUEBA 2    16.3    16.3 \    U           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            V           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            W           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            X           1262    16531    PRUEBA 2    DATABASE     }   CREATE DATABASE "PRUEBA 2" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Spain.1252';
    DROP DATABASE "PRUEBA 2";
                postgres    false            �            1259    16533    camion    TABLE     b   CREATE TABLE public.camion (
    id_camion integer NOT NULL,
    patente character varying(10)
);
    DROP TABLE public.camion;
       public         heap    postgres    false            �            1259    16532    camion_id_camion_seq    SEQUENCE     �   CREATE SEQUENCE public.camion_id_camion_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.camion_id_camion_seq;
       public          postgres    false    216            Y           0    0    camion_id_camion_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.camion_id_camion_seq OWNED BY public.camion.id_camion;
          public          postgres    false    215            �            1259    16540    ciudad    TABLE     b   CREATE TABLE public.ciudad (
    id_ciudad integer NOT NULL,
    nombre character varying(200)
);
    DROP TABLE public.ciudad;
       public         heap    postgres    false            �            1259    16539    ciudad_id_ciudad_seq    SEQUENCE     �   CREATE SEQUENCE public.ciudad_id_ciudad_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.ciudad_id_ciudad_seq;
       public          postgres    false    218            Z           0    0    ciudad_id_ciudad_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.ciudad_id_ciudad_seq OWNED BY public.ciudad.id_ciudad;
          public          postgres    false    217            �            1259    16628    despacho    TABLE     �   CREATE TABLE public.despacho (
    id_despacho integer NOT NULL,
    fk_id_guia integer,
    fk_id_usuario_1 integer,
    fk_id_usuario_2 integer,
    fk_id_ruta integer,
    fk_id_camion integer,
    fk_id_tipo_despacho integer
);
    DROP TABLE public.despacho;
       public         heap    postgres    false            �            1259    16627    despacho_id_despacho_seq    SEQUENCE     �   CREATE SEQUENCE public.despacho_id_despacho_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.despacho_id_despacho_seq;
       public          postgres    false    236            [           0    0    despacho_id_despacho_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.despacho_id_despacho_seq OWNED BY public.despacho.id_despacho;
          public          postgres    false    235            �            1259    16597    detalle_guia    TABLE     �   CREATE TABLE public.detalle_guia (
    id_detalle integer NOT NULL,
    cantidad integer,
    fecha date,
    fk_id_producto integer,
    fk_id_guia integer
);
     DROP TABLE public.detalle_guia;
       public         heap    postgres    false            �            1259    16596    detalle_guia_id_detalle_seq    SEQUENCE     �   CREATE SEQUENCE public.detalle_guia_id_detalle_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.detalle_guia_id_detalle_seq;
       public          postgres    false    230            \           0    0    detalle_guia_id_detalle_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.detalle_guia_id_detalle_seq OWNED BY public.detalle_guia.id_detalle;
          public          postgres    false    229            �            1259    16609    guia    TABLE     m   CREATE TABLE public.guia (
    id_guia integer NOT NULL,
    total character varying(200),
    fecha date
);
    DROP TABLE public.guia;
       public         heap    postgres    false            �            1259    16608    guia_id_guia_seq    SEQUENCE     �   CREATE SEQUENCE public.guia_id_guia_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.guia_id_guia_seq;
       public          postgres    false    232            ]           0    0    guia_id_guia_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.guia_id_guia_seq OWNED BY public.guia.id_guia;
          public          postgres    false    231            �            1259    16585    producto    TABLE     �   CREATE TABLE public.producto (
    id_producto integer NOT NULL,
    descripcion character varying(200),
    fk_id_tipo_producto integer
);
    DROP TABLE public.producto;
       public         heap    postgres    false            �            1259    16584    producto_id_producto_seq    SEQUENCE     �   CREATE SEQUENCE public.producto_id_producto_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.producto_id_producto_seq;
       public          postgres    false    228            ^           0    0    producto_id_producto_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.producto_id_producto_seq OWNED BY public.producto.id_producto;
          public          postgres    false    227            �            1259    16547    ruta    TABLE     �   CREATE TABLE public.ruta (
    id_ruta integer NOT NULL,
    detalle character varying(200),
    fk_id_ciudad integer,
    direccion character varying(200)
);
    DROP TABLE public.ruta;
       public         heap    postgres    false            �            1259    16546    ruta_id_ruta_seq    SEQUENCE     �   CREATE SEQUENCE public.ruta_id_ruta_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.ruta_id_ruta_seq;
       public          postgres    false    220            _           0    0    ruta_id_ruta_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.ruta_id_ruta_seq OWNED BY public.ruta.id_ruta;
          public          postgres    false    219            �            1259    16621    tipo_despacho    TABLE     u   CREATE TABLE public.tipo_despacho (
    id_tipo_despacho integer NOT NULL,
    descripcion character varying(200)
);
 !   DROP TABLE public.tipo_despacho;
       public         heap    postgres    false            �            1259    16620 "   tipo_despacho_id_tipo_despacho_seq    SEQUENCE     �   CREATE SEQUENCE public.tipo_despacho_id_tipo_despacho_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.tipo_despacho_id_tipo_despacho_seq;
       public          postgres    false    234            `           0    0 "   tipo_despacho_id_tipo_despacho_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public.tipo_despacho_id_tipo_despacho_seq OWNED BY public.tipo_despacho.id_tipo_despacho;
          public          postgres    false    233            �            1259    16578    tipo_producto    TABLE     q   CREATE TABLE public.tipo_producto (
    id_tipo_producto integer NOT NULL,
    detalle character varying(200)
);
 !   DROP TABLE public.tipo_producto;
       public         heap    postgres    false            �            1259    16577 "   tipo_producto_id_tipo_producto_seq    SEQUENCE     �   CREATE SEQUENCE public.tipo_producto_id_tipo_producto_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.tipo_producto_id_tipo_producto_seq;
       public          postgres    false    226            a           0    0 "   tipo_producto_id_tipo_producto_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public.tipo_producto_id_tipo_producto_seq OWNED BY public.tipo_producto.id_tipo_producto;
          public          postgres    false    225            �            1259    16559    tipo_usuario    TABLE     s   CREATE TABLE public.tipo_usuario (
    id_tipo_usuario integer NOT NULL,
    descripcion character varying(200)
);
     DROP TABLE public.tipo_usuario;
       public         heap    postgres    false            �            1259    16558     tipo_usuario_id_tipo_usuario_seq    SEQUENCE     �   CREATE SEQUENCE public.tipo_usuario_id_tipo_usuario_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.tipo_usuario_id_tipo_usuario_seq;
       public          postgres    false    222            b           0    0     tipo_usuario_id_tipo_usuario_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.tipo_usuario_id_tipo_usuario_seq OWNED BY public.tipo_usuario.id_tipo_usuario;
          public          postgres    false    221            �            1259    16566    usuario    TABLE     �   CREATE TABLE public.usuario (
    id_usuario integer NOT NULL,
    rut character varying(12),
    nombres character varying(200),
    apellidos character varying(200),
    fk_id_tipo_usuario integer
);
    DROP TABLE public.usuario;
       public         heap    postgres    false            �            1259    16565    usuario_id_usuario_seq    SEQUENCE     �   CREATE SEQUENCE public.usuario_id_usuario_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.usuario_id_usuario_seq;
       public          postgres    false    224            c           0    0    usuario_id_usuario_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.usuario_id_usuario_seq OWNED BY public.usuario.id_usuario;
          public          postgres    false    223            �           2604    16536    camion id_camion    DEFAULT     t   ALTER TABLE ONLY public.camion ALTER COLUMN id_camion SET DEFAULT nextval('public.camion_id_camion_seq'::regclass);
 ?   ALTER TABLE public.camion ALTER COLUMN id_camion DROP DEFAULT;
       public          postgres    false    216    215    216            �           2604    16543    ciudad id_ciudad    DEFAULT     t   ALTER TABLE ONLY public.ciudad ALTER COLUMN id_ciudad SET DEFAULT nextval('public.ciudad_id_ciudad_seq'::regclass);
 ?   ALTER TABLE public.ciudad ALTER COLUMN id_ciudad DROP DEFAULT;
       public          postgres    false    218    217    218            �           2604    16631    despacho id_despacho    DEFAULT     |   ALTER TABLE ONLY public.despacho ALTER COLUMN id_despacho SET DEFAULT nextval('public.despacho_id_despacho_seq'::regclass);
 C   ALTER TABLE public.despacho ALTER COLUMN id_despacho DROP DEFAULT;
       public          postgres    false    235    236    236            �           2604    16600    detalle_guia id_detalle    DEFAULT     �   ALTER TABLE ONLY public.detalle_guia ALTER COLUMN id_detalle SET DEFAULT nextval('public.detalle_guia_id_detalle_seq'::regclass);
 F   ALTER TABLE public.detalle_guia ALTER COLUMN id_detalle DROP DEFAULT;
       public          postgres    false    229    230    230            �           2604    16612    guia id_guia    DEFAULT     l   ALTER TABLE ONLY public.guia ALTER COLUMN id_guia SET DEFAULT nextval('public.guia_id_guia_seq'::regclass);
 ;   ALTER TABLE public.guia ALTER COLUMN id_guia DROP DEFAULT;
       public          postgres    false    232    231    232            �           2604    16588    producto id_producto    DEFAULT     |   ALTER TABLE ONLY public.producto ALTER COLUMN id_producto SET DEFAULT nextval('public.producto_id_producto_seq'::regclass);
 C   ALTER TABLE public.producto ALTER COLUMN id_producto DROP DEFAULT;
       public          postgres    false    227    228    228            �           2604    16550    ruta id_ruta    DEFAULT     l   ALTER TABLE ONLY public.ruta ALTER COLUMN id_ruta SET DEFAULT nextval('public.ruta_id_ruta_seq'::regclass);
 ;   ALTER TABLE public.ruta ALTER COLUMN id_ruta DROP DEFAULT;
       public          postgres    false    220    219    220            �           2604    16624    tipo_despacho id_tipo_despacho    DEFAULT     �   ALTER TABLE ONLY public.tipo_despacho ALTER COLUMN id_tipo_despacho SET DEFAULT nextval('public.tipo_despacho_id_tipo_despacho_seq'::regclass);
 M   ALTER TABLE public.tipo_despacho ALTER COLUMN id_tipo_despacho DROP DEFAULT;
       public          postgres    false    234    233    234            �           2604    16581    tipo_producto id_tipo_producto    DEFAULT     �   ALTER TABLE ONLY public.tipo_producto ALTER COLUMN id_tipo_producto SET DEFAULT nextval('public.tipo_producto_id_tipo_producto_seq'::regclass);
 M   ALTER TABLE public.tipo_producto ALTER COLUMN id_tipo_producto DROP DEFAULT;
       public          postgres    false    226    225    226            �           2604    16562    tipo_usuario id_tipo_usuario    DEFAULT     �   ALTER TABLE ONLY public.tipo_usuario ALTER COLUMN id_tipo_usuario SET DEFAULT nextval('public.tipo_usuario_id_tipo_usuario_seq'::regclass);
 K   ALTER TABLE public.tipo_usuario ALTER COLUMN id_tipo_usuario DROP DEFAULT;
       public          postgres    false    222    221    222            �           2604    16569    usuario id_usuario    DEFAULT     x   ALTER TABLE ONLY public.usuario ALTER COLUMN id_usuario SET DEFAULT nextval('public.usuario_id_usuario_seq'::regclass);
 A   ALTER TABLE public.usuario ALTER COLUMN id_usuario DROP DEFAULT;
       public          postgres    false    224    223    224            >          0    16533    camion 
   TABLE DATA           4   COPY public.camion (id_camion, patente) FROM stdin;
    public          postgres    false    216   �k       @          0    16540    ciudad 
   TABLE DATA           3   COPY public.ciudad (id_ciudad, nombre) FROM stdin;
    public          postgres    false    218   'l       R          0    16628    despacho 
   TABLE DATA           �   COPY public.despacho (id_despacho, fk_id_guia, fk_id_usuario_1, fk_id_usuario_2, fk_id_ruta, fk_id_camion, fk_id_tipo_despacho) FROM stdin;
    public          postgres    false    236   �l       L          0    16597    detalle_guia 
   TABLE DATA           _   COPY public.detalle_guia (id_detalle, cantidad, fecha, fk_id_producto, fk_id_guia) FROM stdin;
    public          postgres    false    230   �l       N          0    16609    guia 
   TABLE DATA           5   COPY public.guia (id_guia, total, fecha) FROM stdin;
    public          postgres    false    232   	m       J          0    16585    producto 
   TABLE DATA           Q   COPY public.producto (id_producto, descripcion, fk_id_tipo_producto) FROM stdin;
    public          postgres    false    228   9m       B          0    16547    ruta 
   TABLE DATA           I   COPY public.ruta (id_ruta, detalle, fk_id_ciudad, direccion) FROM stdin;
    public          postgres    false    220   �m       P          0    16621    tipo_despacho 
   TABLE DATA           F   COPY public.tipo_despacho (id_tipo_despacho, descripcion) FROM stdin;
    public          postgres    false    234   n       H          0    16578    tipo_producto 
   TABLE DATA           B   COPY public.tipo_producto (id_tipo_producto, detalle) FROM stdin;
    public          postgres    false    226   Bn       D          0    16559    tipo_usuario 
   TABLE DATA           D   COPY public.tipo_usuario (id_tipo_usuario, descripcion) FROM stdin;
    public          postgres    false    222   �n       F          0    16566    usuario 
   TABLE DATA           Z   COPY public.usuario (id_usuario, rut, nombres, apellidos, fk_id_tipo_usuario) FROM stdin;
    public          postgres    false    224   �n       d           0    0    camion_id_camion_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.camion_id_camion_seq', 17, true);
          public          postgres    false    215            e           0    0    ciudad_id_ciudad_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.ciudad_id_ciudad_seq', 7, true);
          public          postgres    false    217            f           0    0    despacho_id_despacho_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.despacho_id_despacho_seq', 4, true);
          public          postgres    false    235            g           0    0    detalle_guia_id_detalle_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.detalle_guia_id_detalle_seq', 8, true);
          public          postgres    false    229            h           0    0    guia_id_guia_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.guia_id_guia_seq', 3, true);
          public          postgres    false    231            i           0    0    producto_id_producto_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.producto_id_producto_seq', 5, true);
          public          postgres    false    227            j           0    0    ruta_id_ruta_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.ruta_id_ruta_seq', 2, true);
          public          postgres    false    219            k           0    0 "   tipo_despacho_id_tipo_despacho_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.tipo_despacho_id_tipo_despacho_seq', 2, true);
          public          postgres    false    233            l           0    0 "   tipo_producto_id_tipo_producto_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.tipo_producto_id_tipo_producto_seq', 4, true);
          public          postgres    false    225            m           0    0     tipo_usuario_id_tipo_usuario_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.tipo_usuario_id_tipo_usuario_seq', 4, true);
          public          postgres    false    221            n           0    0    usuario_id_usuario_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.usuario_id_usuario_seq', 3, true);
          public          postgres    false    223            �           2606    16538    camion camion_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.camion
    ADD CONSTRAINT camion_pkey PRIMARY KEY (id_camion);
 <   ALTER TABLE ONLY public.camion DROP CONSTRAINT camion_pkey;
       public            postgres    false    216            �           2606    16545    ciudad ciudad_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.ciudad
    ADD CONSTRAINT ciudad_pkey PRIMARY KEY (id_ciudad);
 <   ALTER TABLE ONLY public.ciudad DROP CONSTRAINT ciudad_pkey;
       public            postgres    false    218            �           2606    16633    despacho despacho_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.despacho
    ADD CONSTRAINT despacho_pkey PRIMARY KEY (id_despacho);
 @   ALTER TABLE ONLY public.despacho DROP CONSTRAINT despacho_pkey;
       public            postgres    false    236            �           2606    16602    detalle_guia detalle_guia_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.detalle_guia
    ADD CONSTRAINT detalle_guia_pkey PRIMARY KEY (id_detalle);
 H   ALTER TABLE ONLY public.detalle_guia DROP CONSTRAINT detalle_guia_pkey;
       public            postgres    false    230            �           2606    16614    guia guia_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY public.guia
    ADD CONSTRAINT guia_pkey PRIMARY KEY (id_guia);
 8   ALTER TABLE ONLY public.guia DROP CONSTRAINT guia_pkey;
       public            postgres    false    232            �           2606    16590    producto producto_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.producto
    ADD CONSTRAINT producto_pkey PRIMARY KEY (id_producto);
 @   ALTER TABLE ONLY public.producto DROP CONSTRAINT producto_pkey;
       public            postgres    false    228            �           2606    16552    ruta ruta_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY public.ruta
    ADD CONSTRAINT ruta_pkey PRIMARY KEY (id_ruta);
 8   ALTER TABLE ONLY public.ruta DROP CONSTRAINT ruta_pkey;
       public            postgres    false    220            �           2606    16626     tipo_despacho tipo_despacho_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.tipo_despacho
    ADD CONSTRAINT tipo_despacho_pkey PRIMARY KEY (id_tipo_despacho);
 J   ALTER TABLE ONLY public.tipo_despacho DROP CONSTRAINT tipo_despacho_pkey;
       public            postgres    false    234            �           2606    16583     tipo_producto tipo_producto_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.tipo_producto
    ADD CONSTRAINT tipo_producto_pkey PRIMARY KEY (id_tipo_producto);
 J   ALTER TABLE ONLY public.tipo_producto DROP CONSTRAINT tipo_producto_pkey;
       public            postgres    false    226            �           2606    16564    tipo_usuario tipo_usuario_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.tipo_usuario
    ADD CONSTRAINT tipo_usuario_pkey PRIMARY KEY (id_tipo_usuario);
 H   ALTER TABLE ONLY public.tipo_usuario DROP CONSTRAINT tipo_usuario_pkey;
       public            postgres    false    222            �           2606    16571    usuario usuario_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT usuario_pkey PRIMARY KEY (id_usuario);
 >   ALTER TABLE ONLY public.usuario DROP CONSTRAINT usuario_pkey;
       public            postgres    false    224            �           2606    16654 #   despacho despacho_fk_id_camion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.despacho
    ADD CONSTRAINT despacho_fk_id_camion_fkey FOREIGN KEY (fk_id_camion) REFERENCES public.camion(id_camion);
 M   ALTER TABLE ONLY public.despacho DROP CONSTRAINT despacho_fk_id_camion_fkey;
       public          postgres    false    4750    216    236            �           2606    16634 !   despacho despacho_fk_id_guia_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.despacho
    ADD CONSTRAINT despacho_fk_id_guia_fkey FOREIGN KEY (fk_id_guia) REFERENCES public.guia(id_guia);
 K   ALTER TABLE ONLY public.despacho DROP CONSTRAINT despacho_fk_id_guia_fkey;
       public          postgres    false    236    4766    232            �           2606    16649 !   despacho despacho_fk_id_ruta_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.despacho
    ADD CONSTRAINT despacho_fk_id_ruta_fkey FOREIGN KEY (fk_id_ruta) REFERENCES public.ruta(id_ruta);
 K   ALTER TABLE ONLY public.despacho DROP CONSTRAINT despacho_fk_id_ruta_fkey;
       public          postgres    false    236    4754    220            �           2606    16659 *   despacho despacho_fk_id_tipo_despacho_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.despacho
    ADD CONSTRAINT despacho_fk_id_tipo_despacho_fkey FOREIGN KEY (fk_id_tipo_despacho) REFERENCES public.tipo_despacho(id_tipo_despacho);
 T   ALTER TABLE ONLY public.despacho DROP CONSTRAINT despacho_fk_id_tipo_despacho_fkey;
       public          postgres    false    4768    234    236            �           2606    16639 &   despacho despacho_fk_id_usuario_1_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.despacho
    ADD CONSTRAINT despacho_fk_id_usuario_1_fkey FOREIGN KEY (fk_id_usuario_1) REFERENCES public.usuario(id_usuario);
 P   ALTER TABLE ONLY public.despacho DROP CONSTRAINT despacho_fk_id_usuario_1_fkey;
       public          postgres    false    236    4758    224            �           2606    16644 &   despacho despacho_fk_id_usuario_2_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.despacho
    ADD CONSTRAINT despacho_fk_id_usuario_2_fkey FOREIGN KEY (fk_id_usuario_2) REFERENCES public.usuario(id_usuario);
 P   ALTER TABLE ONLY public.despacho DROP CONSTRAINT despacho_fk_id_usuario_2_fkey;
       public          postgres    false    236    4758    224            �           2606    16603 -   detalle_guia detalle_guia_fk_id_producto_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.detalle_guia
    ADD CONSTRAINT detalle_guia_fk_id_producto_fkey FOREIGN KEY (fk_id_producto) REFERENCES public.producto(id_producto);
 W   ALTER TABLE ONLY public.detalle_guia DROP CONSTRAINT detalle_guia_fk_id_producto_fkey;
       public          postgres    false    228    230    4762            �           2606    16664    detalle_guia fk_id_guia    FK CONSTRAINT     }   ALTER TABLE ONLY public.detalle_guia
    ADD CONSTRAINT fk_id_guia FOREIGN KEY (fk_id_guia) REFERENCES public.guia(id_guia);
 A   ALTER TABLE ONLY public.detalle_guia DROP CONSTRAINT fk_id_guia;
       public          postgres    false    4766    230    232            �           2606    16591 *   producto producto_fk_id_tipo_producto_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.producto
    ADD CONSTRAINT producto_fk_id_tipo_producto_fkey FOREIGN KEY (fk_id_tipo_producto) REFERENCES public.tipo_producto(id_tipo_producto);
 T   ALTER TABLE ONLY public.producto DROP CONSTRAINT producto_fk_id_tipo_producto_fkey;
       public          postgres    false    228    4760    226            �           2606    16553    ruta ruta_fk_id_ciudad_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.ruta
    ADD CONSTRAINT ruta_fk_id_ciudad_fkey FOREIGN KEY (fk_id_ciudad) REFERENCES public.ciudad(id_ciudad);
 E   ALTER TABLE ONLY public.ruta DROP CONSTRAINT ruta_fk_id_ciudad_fkey;
       public          postgres    false    218    220    4752            �           2606    16572 '   usuario usuario_fk_id_tipo_usuario_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT usuario_fk_id_tipo_usuario_fkey FOREIGN KEY (fk_id_tipo_usuario) REFERENCES public.tipo_usuario(id_tipo_usuario);
 Q   ALTER TABLE ONLY public.usuario DROP CONSTRAINT usuario_fk_id_tipo_usuario_fkey;
       public          postgres    false    222    224    4756            >   5   x�34��tr3��24�t	w51�24��p��37�24�tv26����� ��      @   Y   x���	�0�s�)�@��� ��H�=�Tg�b��o��v+����[�+����Ve��xȢ�ب��7g�te���_J^�S��#��*      R      x�3�4�4�4�&��\1z\\\ �{      L   @   x�]���0���.��1��s�TJ�$�˺E���Ԑ�]0����\��j���!��W�} L>!      N       x�3���4202�50�54�2F���qqq ��v      J   b   x����0@�3L�&j +U�*�����^_��h�[�6�&3N���g��j��38;��7L� ��ͮ�f˺YP�E�R!���>���S:�      B   K   x�3�����T�u�vQp�?<�Q��1�ϕӜ��G!���_���T��1X���H��*;��8��x:r��qqq �0'      P   ,   x�3���WpT �\F�N�.��
�
�>��~!�\1z\\\ �      H   2   x�3�t
q�2�sr	r�2�tv�s�2��u�v������ �	$      D   :   x�3�tt����2�t��s	u��2�t�uq�qU@�p:�������s��qqq �A�      F   n   x�U�;�0@g��@P�ɣ��
jc���R�������=2S�D�s-K$_�������O�t���<Գ�^(��U��,��(:
0���e����y��^�o$x����     