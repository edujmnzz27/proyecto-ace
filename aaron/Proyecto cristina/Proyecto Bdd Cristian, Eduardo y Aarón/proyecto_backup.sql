PGDMP     7    9    	            }           proyecto %   14.17 (Ubuntu 14.17-0ubuntu0.22.04.1) %   14.17 (Ubuntu 14.17-0ubuntu0.22.04.1)     /           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            0           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            1           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            2           1262    122952    proyecto    DATABASE     ]   CREATE DATABASE proyecto WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'en_US.UTF-8';
    DROP DATABASE proyecto;
                postgres    false            )          0    122953    cliente 
   TABLE DATA           L   COPY public.cliente (codcli, nombre, apellido, direccion, mail) FROM stdin;
    public          postgres    false    209   ,       *          0    122958    gama 
   TABLE DATA           ?   COPY public.gama (codgama, nomgama, stock, precio) FROM stdin;
    public          postgres    false    210   �       +          0    122963    coche 
   TABLE DATA           m   COPY public.coche (matricula, modelo, combustible, motor, plazas, maletas, foto, codgama, coste) FROM stdin;
    public          postgres    false    211   �       ,          0    122973    reserva 
   TABLE DATA           �   COPY public.reserva (codreserva, fecha_res, f_inicio, f_fin, dias, lugar, importe, gama, codcliente, coche, f_recogida, f_devolucion, s_motor, s_plazas) FROM stdin;
    public          postgres    false    212   �       )   o   x�3TPP�H-H�tO,J>�6�ӱ�8319C����Q02�,H-pH�M�̩�K���2i�)MN,����L-.��'�4Y�1H�c^"�O~Qr�Bpb^M�yy%���b���� t�2�      *   ?   x��1��)���4�42�30�r3�tK����L,�4���r�(T(�p�"EMAb1z\\\ ���      +   �   x�eб�0���)xI������8 1.��k |zK+z������ק�_ A@N��\�g���xF�/��9��D�Q�V�q��M�K]>Z�N4�Ӭ(
H����E�l������[��i�B��RU������;k�/q��ɚ��rС��$��Q�g��H~v#���j_0c��2G�grd��Z�����g��J�i/��)]��!�<�hGkX      ,      x������ � �     