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
BZh91AY&SY�b ����� �����������p�f� 0  `&��fT��U
j�L��R����Q(R����BA%UEA)ET�H�
���@���I�B�*��%MM�l��3I�Q臒h1#Mi�  ��   & `             0            	� �            "Qb	�ɡ2h�MO2e<�yOѩ�"1�G�5=���f��245=ADѓBf���S�E=6��O(�O��(�����zMG��T�SG�P��G`�(�*��}��H(�_�m�}���
R	��!�LX����^�ŝ���6A�O�꼸n�Ů������[�3���bl|��Y�;���������v�{Oxv�>��
�Ga�(�*s[Cg5�!�~�D׏��Bs�bi�]�5��.l.e��cy�o����Õ���xֺp�V�Dҿ�뽾�
P�+P\Ø��kS!��]V<2+"��t��Xr��4!cЄ3�HT!`�����0�!�,3:P5h�?�����J�<�zL+����,j
6%K���"�=�7L+-�,o�]��x�׊�w�hX�Ї]�2�U���XξX�w��ql�����^&fXb�ӫ��u2��dj��8��$5E�7BNA��Z�#�mt���`���4Ѧ�vm0�(Wi��j�ER&�ccD�zNd�#+���]40�C�� �k���&zN��->舁����?W��LE����)���wr1���(eǉuJ�3��H(T֝�2:Z���bXT����g��4�T�IS�,5�o^J����1	~Xև2fx��5�Z���'�uE� <��u4�O��5�H�J��z�����V�eQ�@�$P�!LZ!^@�f�:��JD`l�(�%y8"�M��1�R����k�5�fAN�g`�9mR�H�����=򇿌�h�Z#ܛ̦�z�|R����%�:,?��g=�Wc��d'wf9��h7���X���������{����̪��s�	��^�w�J��#�g�h�H2 F(S�:�Ȅ}<�ְ�S�g
-g�nB޳��/���E:ӭ/�{D�� C�����>c��~��i�>�Ǝ�}@u��p}HCN�?vJa�|P$	�H!K��B�̥�w{T@1����xE==�2�7�_���
�qڍ�w�P��NK�	�_(n���L�|ͭ�{�wаZ�=օ�z�&��kY��k�^HB%p��ij��h철�L�ۺ�Rx��0����)Kz�0�Kd^e��\_P�m�j��_������Q���lLw1/�5��t��~�栨�1�";��$ј��#����)V�����̾ �y����0a�[������{Z�A�̩H�@�j�L� UB��^�͓_�e	���Q���sa��$Ǝ7�H��1hRq��K�N���'�,Uu䃀����#���X�w�3V��,�������?��E�[d7�ނ:�N|�T�!e$Ŕ̩tݧ��557�)��'���K(:��<E�q��{��2��t|�_�]rf� �	��'�h�Ȣ-y�Ó����
}�~�Qy�gGO�cH]/&˼�����򚃝nN�ot��a��<Ά���*r���)(h�� ���!��n2���no�CD�"�,k��đbxr�=�9� ��@�
�*�k8�����@���
rt��V��u�l�3stl'�}�}��S9K~;�~Ǡ5c�����޺Օ�fmC�Z�ӳ=]no���l'yC�-���U��J�ڄ ��������KI�o���x��Cٽu"�V���B��dӼ��á�p`���t� �J�k*�ٻs+{�ڱ�l�
q���%�&��E�i)Ǝl�չw[�h��!�羞�9�{��?m�@!�e�A��Ty2���ؘۨ���lC������Uhf��9p,��gu��}���hY�1����9����Ѷ��Xi������$��9%V����?�z����[>=��HI;i�`C��U<�KSW.%��B�?r�:���t�x>k�U4�����<F�?z��d�0k[�$I�AL��h��0`�g�w��ދ��B���QC�	�N�*�0K�A,Ьd"!���ʸ	@��k"gL����/ ^ �9�C|"�	q�X�&h+�"��/H9��BA:����h��A`,A0^����t���\$J4/��2V�J	����o���Z���ٍ/�����RW�Mh��!�@E�:�rd��)�����P�A*�>�<� \~0��e% |$HAR��JP�@�̠�K���b����^��Bѱ�h�S*BT1�� ��E	Ĕ�B+��@��ۏ����C�!��i��F!rj��(?_��ݏ�6��T2o�S�����M���[�>����ͻ�Ɋ�n#���@�I ��n!�)A�|��_��\�|�5ıq���,1�@�U#�	s$knR���kK�;;�A(Օ��+ZZ1�B<�9@�X#F%H@)R�hK�� On&"���.-b��0�#J�{���x=E��^	��/��r��SݹA��&�i�^W�v܀�D��M'�ZwZ�.��ޢ;�0ֆ�@�=�֝rG%L\Pj )1:4ͬrٯ�h�RP70Q��!�#�c�?9F�a�P��E�+U��zw�2��<Fg�_z_c�a����W����m6ҺB�^k��Kް�"���u������D�'sA6	�7�����z@���C�'�!m�Z�R�E���?����ܠ��yB�"��T���H!����ƐB���Z�钽�9��&ߪ}8~����ƲQ��~��O���ǡ9�Qu]��"qzz�x≁��ax�5��a*���"{�ѫ�����B��3o��Bk-TL��I����9�ʗ�M�U�NN��5|@�se�B*0d���"A�"��F���2�7D.QM������B�zvzE̽z�L��S�s�XGn�l3!�!��qΑ�G��q��L(Z�v����X� q_��S�A�e�뫛��BP�o&@ZZ��O���AHV���J�)Z��-U��$��4��C���m;�?�*^x~��n8�e�Ja��s��i�r�ǆ�T�Q��6Aa��ܾ�@\�ܥ �t=�=���⭿�|'I�/�/��g� �$����8m��n���8<�'߭��9�.�7qֻ���?�.�p�[1@�GU���h&J�UXlU��5
B�y�ܽ]��Ҽ-X�N�K���^<_���b��N�=.��T���4'%T;F��_���������ԣ��a�TJ9������ �����-� ^$,������m�na��� ^I�5��,!��!p1!����4�@�+�z��J����O�˶��^�Y'�0�������c�����ǌbG����rH�|Z��5"H��R�4X#I������8{����Xr��V7��`�W��){�>��]ܢXp�֡("T�vLꪨ(��4ӧv
]O{IG��f覜ȹ���Iy)����me1RĤ��E����(}l``��upb��[a� ��/�u�?��c�%� d=�<������*g�=���n;L���/��")�1�эi�ɕ� ~"��������V �Q!����<C9��:�JO�?R�\$�{����@\TF�(UKxc��ixp@�N�:��ߦm�%p�T �
˴��^��/e��`���M�n9����Y�ģ��E!��tX-�⌾�PD.S8�[���r��k@5�HrZji@9�6%𠉃� ûyen�k��Et�w0�yw�"�0O�E��
6�OIsȔ�QJ_�;�������IߍUH��ޱ�:q^.f~A-�>�ÑFN��3V�DC�B�
��;Ln���3P�v5gC[S2�^��y�qj�B\�����UN�;�9�S~�$0и
kh�`?�W��!��!ׁx���X
�0PC>�UB�/��9��� �K�@p�D ��.��*di�Y�@腽[���X-�`"J���3�5<��2C�dI�	J��ީS��wy�����Sb
�)"�k�>F�l�0��QΨ�5�@��n�~ldۺ�pC����@[����vj����T*P�~���ZZdǊ҈�q���X7yR��d���9��u��i�B0U2�ŸJD$	�bh#ʆئ�nqS�6G5��d�mB�H<!��1\�[\���AAt�J�:��s��MZY�4�=��v���S����"0y�"��cE�ĹB�
�΢�'����@3k�H1��	`V���s�I `Fh���kW�T��&�~p��(�po��3j�����D>��x�H0$# �����{�q��P�����>� +�Ah<� ����Jp*=(�*E>�aE>ށ6C�D��ȉ�� |�z�#�'�NZQxW�N@փmMjjt��⣐��q�
d�=1@:��˾2DD�~U��n>c`������E�o�%��y��~�2�ә�A��~���ԧP�Am�J=��;H�s���K�{�S|�ا��`���M@��S�s�G��y�hR��K��@�(-'08�&�0P�b��6�B�e�B,���lf1+��t�g�k��Ծ�7@��qT��Ї��-�C�@�8���W 8��@�j��DD`s�`!DR�S!@��:�Rt�}�%�}}�����J!�*qj� (:�È�QF�b�ʘ�q�e3�"�(QK����B]0�塃�ɷn٠���X@�m��x@�*W2T��r��:�T�Ա��\yy����B��Gn[Z�^ \ 'W�
RF�,5���y��� B�	��':��
��9��N�B��E�$�ŉ�aF0�`/���0�d�/(��� ��f�j�!��pL5���@�N�-�n��dS:���:��-C���nzE�b� �dd�Ha��Rj���ƈ����o8�t�F��D��Ii�6Sȥ/� 55]#�T@�aȖ��o9�6žTs�	�}��	��H�%�	@kT�P
�7y��x:�"�k`!���"�YB��FTx����B8�8g׸z��GJ��K �j�����Wu]�ZIR˹Ԧ*�����THE�34 ���W��0C�l��t*J2��8a�!�p .P�B�0!��5�j��Q���'d�i�`w����	A��:���(��l8�
P�tLxک�m`5*��{�L-�[b�ҧ���9h}Ɣ��@0L�K
��u��#�H6ho��8�s,!�H��;D9"؄ �AQ ԠvTO�2P1�Kgo�����lH��P�����L��^���*K��h.�R�Oq����>�Y�E�#.�@W�\ ���J��U1�X�X��C�)˙<&�KS�v��S4��I���D( �%{����J�P2�ark��� ^k*5E���	���@�ػ�ݸ�X�K�N���A�!�qp��ӡ���!:rS�`���)Z̛�*�C�N��2{#�n��҉���L�YC�V
ü�
�6�Q�,�,����(x�9�4�a\9G �CPM�tǅ�C:�k�%����C�Yf�͗'��f]���̎J\z`�j|l��:��� ̙ԉ��oj�n�(��_�@� �"(>N�$��wv�{&�}[r8GR.!��BH�EJ�B�%����	&�%�1 T�V���M�\�P��چ�2,\�E2rpRH�x�<b�5��4���MK��0���C�꨸���c��B5H�\-!r�����0���t/Y4�E[�HE �B����W�`�:�����H���S� ��(�j@�.y�G�c}�B5�&��w�B,��UB��&^�j�י���a�#
�8���#�#�A�r��X)�_�w���9�G�/�w��X'���b�Ҡ@B�
��~j�4�v�}v���{�c�)����+��N�uU�	��%Tx��̘��'YCR����^�b��k�v��5� rP�Ϧ�k�М���1"� �	�(R�zA;���F��x�8��C wR��P� �����#�{S$b76����qr;��Y̡�WZ�.�(�(PZBN�Q�r
Ea�1J̭Kf)9���I�
�-�T�P_�
k1hJ��I��22��CE?�:�F����ѵ!�tP��Jh��
YSe� ���>w]����+�pMe���H�AA	�$�tQ��c�Y��ĤNoH�"!�ۺ���"Naa�h4�X UR��4��J�n�zڴw(w%N\�e�T�C,B�6�h]�D����U�勭��������)nA�0l.!DY�}P1�"IHXB�q�Y�e���e���Z"�뉐$�Bg�!�B�d��*l�0�:{
h��=�� �@������S�9��B��w�2��p5Q1pB��`��C1`e⵹�É�mU��C�v-��ȼ�e�<�(}��q�}��:�z��pP�04���AK��Zqp �@>�����9ﾈ�ȴq��Ha�@2���]�@J��G[�C��32�3��Dè�
e/]\�L^)�|�G��ݸՄV����R�&VB�\|�������jHD�J����կ'Z���Iҗ�R��l2:��2'1ð�ͥ�z���P�0�1/��p.��i��}�c��P�B�������8��4^�� �S~�~�2��N�A�ET*
'�������� �`A6�Z�ό����#���*\��\����Wwe��3fqa�r�&Z�0�!մʷS��p����w�V���pU��9.�ģ"	eh[��0Q��h,�`���o6c7	�CE�0HC�w��.*�0���`���`@/��h+��b���ȁ@X�#�A�	aPQJ��(�� PF���O��!툐_�@�B� �H����� �"��UW W#F"�	 �H� �r+����o�3�#� p�@P/� Z��@�=�BD����)�X�{