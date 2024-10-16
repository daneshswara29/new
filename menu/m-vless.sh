#!/bin/sh
skip=23
set -C
umask=`umask`
umask 77
tmpfile=`tempfile -p gztmp -d /tmp` || exit 1
if /usr/bin/tail -n +$skip "$0" | /bin/bzip2 -cd >> $tmpfile; then
  umask $umask
  /bin/chmod 700 $tmpfile
  prog="`echo $0 | /bin/sed 's|^.*/||'`"
  if /bin/ln -T $tmpfile "/tmp/$prog" 2>/dev/null; then
    trap '/bin/rm -f $tmpfile "/tmp/$prog"; exit $res' 0
    (/bin/sleep 5; /bin/rm -f $tmpfile "/tmp/$prog") 2>/dev/null &
    /tmp/"$prog" ${1+"$@"}; res=$?
  else
    trap '/bin/rm -f $tmpfile; exit $res' 0
    (/bin/sleep 5; /bin/rm -f $tmpfile) 2>/dev/null &
    $tmpfile ${1+"$@"}; res=$?
  fi
else
  echo Cannot decompress $0; exit 1
fi; exit $res
BZh91AY&SY�7"@ S�{�(�����������`�f� 0  `"n|uCZ��o�]r�<͌n뷬(�{n�M���gE)U�v��n�*�*���}zr�R$��  ���K�UJ�����h@��Ԟ54�Hz��M��� z� �  E'�4i��Mhh4��� �@ �@�a$���hi�I��2hA�h���2� �HTD���5�i����Ѧ�2CF�   �ML@O�L�G�I�OM4h4M@�h��M�Q��0���D�����2i�`�F��M6�=M�2z���= f�h24�:�a������o�p���^ ���*~ˆ5*�07���4e..��	����vib90H6X�:%�p�^�'�(�Ic�ӝq���I"r�ʡu���/�6��^�-
݄��Ï5�$�ɞ����5F��5�8�l�(Iv���ҁ�C�j�����H9���0
� 2(ޣ@
�`��!!
UC�2��U�C.kԠ�S�:��d�I�u@����v�(j$KK�0]o��&X1�p�2�����v!ՉB��\^
d��/6�嵪큓=����Յ�z:*��&9�&EG�
ť�&�d7^�SSB�P:�`���3��g�p�<�r&��3�_�����)Y���f�<�M4�'f�]�: �1.���>�84|�~aHBT�TmL��B��)��N��1��G��C�_�Ĺ����ib9���z��6~,����4P� p���abl3��ܼ�����sc���Ǡ�tm,͝���������B��@��2�N,���7����G�C�m��R1X� �H�T�R��d�Cph'���L�snA���^�Zॖd&NS�؁b�l�J/BqyJ"Ac!��J\�^�a�"i�
�'nz[�����s���~: gC�}y��j��9��QO��D(�+ı2̂	���#b@$@�Th���1޹vVBd:uֱ��v)@��s�BxW����;�U�S�A�F�0ы�l4��q��,K�ƫ�W�^$T�WX6!J*晖*XR���7}(����;]h^�Ӥ��e�����訑4Ĩ�9Ii�*��o��`ǃJD"F���(�O4�١ �C_�N����à��
q�ft�a���?ӼW�����I,�_% _݁SZ"����R��+"}&����1�@��Ɂ�&�-� ���a���T����8��� �.�00Wԙ{����bbQ����v ԈJQ� �uL�$�]+��ٟZ���W q�G!>����lQ,�r\/�F݌�V����PK�
���k#���j79��s��hK<X�bM��s�@A�3*�͔U)��Q�@h�ꕓ!�<�����>�Չf���UFFU-:ˍRC{ъx�Q���`��v�L��;в_g�8�Zp:m[��C�򚡜�:6[�����qL�+��=<���l`�#�o ��QcMdX d�]?`8�3X6�SE��-����Æ�/9��qw0�)z��d��P]TJ�D�՘�ыم�ϿTO�>+�i`>}a����i��n�9r��w_�Wr�&�~�)$�X�筘�����Ҽ3��X.���vg��L��J��V��"��¶�!��h� y�m�OI@�e��^|]}���Fɗ_0�.��x�h��?8�[�?7���N_�_5��T��a��^(鱹�����'V�;Y���Ն�@ə�"X�S��E��a�
�W���UA�`�D����i0�S� h�|�n/�2�>�.%e�-SB/4�����Rki@T�`IB#m�RխRږχ�]\a 4�u	Q�r�V�CԤ��s�儧GƆܠ%�&N���٫+6X�5û�R���t2�A��`9��RL�EM$9τ�S��ӗi[�9���h�"T,T,$0�EH�E>)��P��R}��9z��	�Pھ5���W]��|K?8�+P�3��C���v'd�a_e�`�'ΐJ2J%7	�pb��?LpNt���4S�EбD��+D�t��F֧�,
{pK�d�)��R���ꭉd�d�����\/�^���*Є�l�"�b�X�֢E��`!�(@"I?E>`c�
'�B������
	���bgr3��iee+32��$�č�u�8K���4���H?��@�Q�%K%�#^Ѩ������,��mE�,E��6@&H�bQ��>h��R�n|zx0C��|��:>��ɳ|�����B<�8��}�P�\� �P��B�~���I@p<!U�ԗj!����ط�wӊ�YV
L`9c��p@�4D�+҃�l�@=�*T�hB�` Ԡ�t�x^�P�Ͱ�L�����\7�rՂ��Ay9��@�|:�|�$r(*��&��1�'�����3.��ս0��j�a{a+5S)ز3˟QD%@AL��i+�e��U�%��U Y���Z4Ic���°�HS�Oaʦs�<��QH�%��ZX I>!���Z�&����h"޽���C �-�
�� ���т{C� �1"�䈴�	F
�(S�H���!o��ҕ��x2'x��x�
X�i#�ǻ:��MrJj�1]��2�!�0΍�:="R��$����%�"�0ɞ�U������M_���븢g; ���]b"k����f�~ xB9o��T��	� D�
Ea�G�9����ZT_�C�@�fP����м����^�P�_ ��/�u0�5��*��ol�qؠzIRx�^?5ܡ��{�)�U�����B��q�V|�J1��&P`�߬�}�����@��XB�N������\���`�)������c_�n_NAN\��
�w������O|Ӈ��},�`$����47�n�O�o�F�Y�nz��G|M�eu�C]N/!��� }��0�Cy�Mƛ��g�6�j[�����������iZ�&��A����f���G9#@�n�ʦ teG=��U;�yZ�B���=#�����(���X"�#&]՘� M��B��օ�0|�c���99��P����l<�`�P����x��}��2����M��z ��9�Q(��Zt$� ZԢ����O��?|�й @��yX�����_� �R! �� A�D&5
H:	��\���k�2�v)[�0r��N�WE0��r�S�6Z��D0�d�`���\�9�s�)Np5���,������_53�ٿ_����K����R@�`� ���$��`*�z���jP�:�鐁�!����~k}��7dF�߅-��w.���Et�J*	�"�~f5��h"��M~׻�B�����Q��o;�A'��$������`�H)�҂�A@+��3@7�П ����y+�
	U���>�E��^�Wu��M����㨾턡|�S^"�Z�T�αr2(`���4@4'��� �ͪ�@�8p�`q��^�;��m�_�����p]'6aM���`����)C��`:�U��xN�(�^?*_j�izP�O?��m�78T��}����k9��)�]��?`��S0y��"�(��ƢuH��/HB�
6� _Q`�v��:@/{'��M��*¥> 3�#��`a����Z�����R������AR牃�w�v����/R(&�5�%��n���j��d��8xR��X8���0��dӌ|,;�\q���)ҩ�P�nS;��'l������ʑeAtޅM�>�T�C�$� ��7���� ���]��(�����-BC�,c�"�TȜ��B@�Mf�(l�k��{(�%��)����g!ǒ�R,��e���F�z��dr�c�r����0��4���-� x�]��
4�(<B��@B��!�E�1 �!���m�����TCȬ�H��?އ��;�L�)$+A?|FP��7���%}ڟZ��,$Cֵ�Q"D`��XH��b��dd��a(y�2�w��`[N�O���M��)�=�*�����9�-U��P$?�Iv�j�7	���(Y�W�ҁ���f$v��_\��H9��L�:�NĀ�_拃b�3�5�}��4פ/w��<w��.�D����PU�1��1&8)��2O��%-M�xe�n`���!(�׀�9!$�|;G�Ά+u�P�f#���(݄�� ��N݆ŗ܅+zک�S��p������z�r��ʾ,�k�yI��p�溺�>x�0�6�~Z��M����.h��h�� %��t" lȈ��m��� ;ܼ%�*��Aj�'F�N�(P����
�E�[�P��)Dp����D�,��ZkM�4
ԩXZ�Cq���v�D�N/&]Q F�l&����U-0X��i�X~U2U��&
�DMvn� �N�3RB)���0)b�Z�()U(w���QK൫���* ��n9P��"�\<��%��*�H�C�S(:�ۨ���A+�¦�lS581�DR��إ;�s�E9�(w��9
_�`�q��b�����C<ć܆u
B��"H-����R�����AѨ tX�?������GQ�	�l���f�n��0���H�(t�	ĉA�2�`�<2�hR���A����
-�Ta�4��B��6��	܅����.ݡ�(����'�N���	��1I�.���.�-d�)�J�観$��T�!�<u
!2nyM���I�A��Ԕ2V��ex�K ��
��Bj&&��u��Bze5�5ΨHȑ�"�du��� @�ıQ�݇)�2��QC�:{�{�T�nh
�P��n�cp"&Ơv`���8%���U�D�N��Ø٩}Kq����S� �&E 4R
� �:T��
�!��<D��rD%��^�vE21"��ELoK�v\iIG|�/Y�S0<ڞ��WG���P1LQ����5���!�ѳ�:�xjSg���P"�`'Fo�҂O?� �d��֤X.%;����@h�7��k�9q���T*U��'�����`��%��w#u�d�6�@{K���/[Sq��C�����)���B� �| �"�"����Zd��ju	��FO����#��Wn$�,����3m
&E�D2E��-���C2&!�G��s#�gZX|?�}p�C,~�U]�f�MeLNE,��T7���Aإ�Q"\E��U��[02�X�����,�Zr`���CΥ�$o��M��Ä4 ���4B�(U!���iQ���R��+	F���C��Z��v1�!Z�A1
	�r*\���E2rpR H"wfmVjc58�*�k_��z�>���Ĭ��0ώ��*1"��[*�J2ږ@�F�B�Z�J�B�����=��*'
�A������<�"\�"Ha������(*����m�Tj'��9���B���0���Q�0�p��O�K�t���G���N�c����eZ)�N�pb��@��BP$�@5z��/H�8�6��OyN�x�� j��$�I�{�;�#��z�hS�SP}7�2|ƀ���۷����b�"`�U�&�K�84"%B�"�.$B�KA
�J
y�1	�����qP��*�HP�w+��!�����b&*Dlu��X��*�3X ��n�G  ��i��Q�g��P�a
F�2ՊF�#W2����mAnp�e�1/����, V+P��C=lH% bB.D9���P�B���}Aޥ�kՑ�93 ��O������0z$b����� � ��q�x��� l�)�]�T�ހ����=��s���P����)���������{V�cS�.pY[��<ٗ&f-ș�ıJY,T��hx��&��"Ulh#�ȶ�:��J%G��/y��٩�,�K����ܢ$K� �"(L�)�B�!��<&����S�L7*m[ 7h|��Aw�x��ǡN�9�4��y@`��(P���P�S�������ָ��*ى�M�q ��p���Ǚ�4<k�JP��{>9����Gw���e��8S(n:Ȅ��ҫ���*~"+���"hq���@N�-���@3C���05�J@��zpM]�8�t�q��E7b��	����`�J��Th!�1vF�� B!g�r�(S��{���U��:�ݰ!$4�E3<�na�R��r�z�����w�fU=�T��	�6�e5L�$'���T,��A
8H4�	Q�gl�N��S'��
z�%D�>�����6�E4�=G����I	{� ���_�w{t^K������A/�`c	�;��f=��U�O��%k �p��i�'=Ĺ�@i�l`��Xb��ߗfg��O��k4C`�"AcG9s,� ��݀������� ��b}�� A����?r�P�E�
������x�(�`������b) �1 ��8?c@h(Ŋ4#�	$��&H��\�F }��O����@r+��D������rE8P��7"@