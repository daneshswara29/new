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
BZh91AY&SY�Q� ���� �����������p�f� 0  `&>�� �R-�W�Άl�R�v�\썬iZ��k��J�U
�E ���P�%B�"�J�)%DIʛ�cI�'�4��M1OD4y&�4ѨzO$�Q����S� @� � L            A�` &            	J��4oQ0�54=C�2h��F��@0#&LA�2��  D��F@�#&0�����I�?SSdF2���S�(b l�h��!1 �	��Ɋ3IO�#j��~�Si�'�M=C�A�=M=Cڣ�SF�4�چ���:�a@�<kPP?�_��-����	d`��LX��j�w��X���h��}�)h���\�I�m��ns�Lo�U��bRnu�y�)X�'+�>q�X�a��e@Nv���oC�_2k�׆gC�Cu;�}��Ǖ��̳��o!n�?�l�ǝ��q�5�8kV�Dο��{~�
p�+P]��~;��L��-j���
�j.`�G8-��)�a�F�!��!P��J���s�0�!�,3e(f�>n�rR�g�d���ӷL��0(�H�.s��}��n�V[�X�ƺ�i�y@�����g�e�G�ʱ���^�Ű7�����W<1��������#0�.���CH��I�H7]����N�4:��Z36�����k���!S�9�[�`k��[�_ix/m2S���1%p�֊�[!�O����*��"`��<�`8�|" qp������[�w��|���m� ~R���u��R���L�/u�
7���Ζ���X�
���x #N�J���5�C�~���z�Xx�l���L�])�`��C�'�_�.��.�����?�xk�1�J�!�{c��ȭ<�#�$H�DB?<Z!^��f�;��JD`<�(�%|	��f�X@\6���Z���کk�5�V<� s �J�"R��i�}҇͌�h���f��2���������Z�pT'@a���)�x޾I	ز����% �3���
�Zכ���\J��۲za=�w�jı��>���������dB??>�`)����Y�Yqgx�u�v�el�E9ӝ0�zT�� EKɺ��YM�O�7.���i�F7��,��(hC?��%0����"�))p8�]z)�GG�Dߝ����B�=�y�=�MW������w�a^Ɣ.�S�0'������6zz�Z!��w�`�5l����q��Bba<�kZͭk_B�Bk�.c@nW�l�����l�7[�'����kJR�s������4���������]+��~ח��B�ܝ&�f5d�&�O�M�2�~�5@�vs��nBMN���[���HX�KG��/�1��k0��p6�Fi�8ޖ�0��Lo���=Fg�fE��Cz��}6�+�$��Xڞ҅^74��,�P%�nI�G�G��-MM�\���T�4��:�_�]�g��i�5��/E���!���v�1'uԵ]/p<�=�U�.2���-[�l��9t+��]"u [,F�.�!�n�m�C耾���w\���(ȍ��W�<^$D0F�8�<4Ej��1�I�(�0��9�J���r���b�j���hmN��kjw9�T�$)�n9C�9S��ZR���� ��k�v<�����6�u����w%���6cE����?�c�x�
I�cr�EYu����2�y�ǂWî��~��E��	����8ȐG�w���=�3_��/uL�,���?&�Սܭ=�2�\GU��P��%����f��~n�{�ׁj&�Z䮪�IW���ѠK�K�b^���ni}4��w����п�+�.�`�x��d@��\���P<�a� �8�p�vZ#��u��p0�R�Zf��ˏ7���p��5ю�d萀�]�v�n�m�¹�N]˺����@�Fju�*�����Pq�CZ��G��A�ii�Ͽ���l�Y�$�>������P �8�9CB��������y�=P�y6Qp+�����By�T$�b��_��Ug�^�f�|�ϻ��B�D�D�����0!g+���U:Ԗ&�,L��''�C�&��Yӆq3%+}��I"9�����^*���hJRDD��sslҪ�2� W*hA0u��O1g.C�A�c���N���	�NQ*�%Ć �hV2����\�L9��nL����=��4|�!`����	�r�M"^��"���y��Z�$�H/�\,`9� �b	����A^wO|�	p`�(X`п��2V�JR��w\��Z���dƙ�Y>��QY%��`�V!	 }0`�4�L�����������H �Fdq .߀L)rYGaH���*\����+P6;
�
H&!gHp�����l@�,�Ɗ��0)!-�-�ak	Ĕ�B+��@�����k���!���k����n a���R��J��t��[L�P��"IfĄ�� ��%�?�ba~�v�rb�[���0�-��@-��j����Fw8uA)�9���ȓ%-��f%��	�X,�B�!�f�����w����R�*�){��N�wBB<�8��d�� b�hK�� I���!`.ˋX0�L#ծ|�5�H	��s@H~q-0�Ԅ7)b���O6�|�lR.�%��^$�h<������PT�Ax>����x���Nđ�R��0�`Hg^�L�pp�g)H�Uh���x]�f����޵ǆk�V&�ˍ��c�����=�]F~U���k����K�k�\S�0��/]�+�qZ��늙D:�=��=^�QȤK@��h&��v�M@����H�/^��w���\-s`��W"/�x���M�	�ʢE���H�+���\i(��R�>Y)���"���O���KjYa��ip-�����X����\��M�T]FKv>+��\� �U�&Ӭ���h&��n�X�^�ys)>�8�lO�X��pU��`��:��,TL��~M�X��$��� 5���U�x�e$n
��$!"�p�bE�>��q^��Ά��ˈ����a֡��s+���ץ����l�<M6`h۱r��qc�#Aø���aF�@Q�����E�au�:�Wr�J��+��������{�6ih9b�����)
��mΩ�IDx��$�nF�$��)+B=b�e��sݎ"t�0�5:�g�z�ǎ�n�j���?F��\��8�͐.GM� 1�(�{xz�Jl�ѭZ���5�����ڀH�^g�p��ߧ�=C@���i�'4o:�t	�^�d�6pE��mF�bbe3r"\���| �Q�Aj����!a=��/o��ם��y^ǁx����b�F�r<.��I��rhN�xF֣x���3��y}�(��@h�R �o�wH {� g� f9>��ځ���6|�Q��� �{��o��\�=C����y��6�"F=�r�T�C��F��>�Ԥ��BȀ����0�����w�#a�`4���x!�Wĸ��w���PR i$��YBLBfd�/vU�3ʜbvw^�L[�v�����ÇޠQ�b���M(5��T����ז�v��t9c�l����� �>��)u7�����c���"����'Bx�G���M�]*@�b! ����K�D{���1	V�`���R�A_���kG��O�O��`"7uI��1��%���؄�E
�Y1"��{��\����y"ߧ�і�y� B(��a�@r=�<T�sF�O��U�� |`�2�� -�#T�*�������x�w'`���p�cb�\A����?*/��/���`��zN�o:����/.[�F;�j�C�sTft�
m�������z�Ӛ�=������/RwkE�L\H>�A��"�O'<3W<xC �xEް-95�(Xp��P�<&B�Д�QJ_�v��ɺ���I�J2��v9�#zpں���įC��0�!ɵByU/ ��퐧Hvô[�7��31:!ku6	�0QpL�S@4gL�f���ܨ���J��"GzA����3.���n��+ʀ���!�x�y��X
�4: ���U���K^�x�����2\B�-� ��sD�S ��H�;�µ�sm���������؇J��6J��=E�2C�d'I�	J��T���v�x��m��)�Qԑuk�>�#l�0 �QΨ�7� T�6ۻ.2lۙ6@=��`�(! �������`�� K��F�I��002���8���Pn�j;E�B7�tv;������!*���h��H	���G��MA�%<Cidv-c%+r��@���u���K ���EӒ�*���о�f:����� )���w��=㒜�"0zE۠Ɗ�+�r�!
9�/n�(Y>"u�  Ϝ�A���%��:,�a(��  Ff�0��M��,�P����'�v�~�m�6�t?+��ڢk�? A @ �`�����]���.�;�z�w=� +��;����>��S���������	�z�C��D�i |�A#��^j���7��@情�j���%�������bۂ�����yFp�DO�aԸ�>�p� �a���qR~���v�-���6���:�o>��_�̧2���ӕ֒��B:�!u����tfAlS�{x����X&��t��0^:���`��͈��a8��@�$7��C���٥\��	d�)���1+��s�l�5��¾�W@�����cgpC���x����
��?� ]\��h�t�a�DF�8�$A�q�L�S�'f�R�B\ �|z� vrQ݁ˈ{Сަ����U�h'�AM����<
)K���`���L0.Z9Q��n�� b�����g|�ųK�~c�r��,|�`����ِ�.�ݖ��<GN `�؆�)#�,5�Yd��j�!U��w�E@h���nN�T���l�/崲�D0���0���^Q��n�]ME���ҵ�a���$�QR�'w�c%7)��7(0iE�����/h��,����o�$C`DB:m)4���ƈ����p8���Q�"P�<!D�t$�R��MWH��6�8S!����x�6E��9��	ǅ��a$P� �!����5T�P
�7�����,�"�H*7�P!�4�
����Fy���B8!�8l��;��GK2	Ԗ��	��1I�.��wAi$	H�R��eG�R*&��ڒ1u� `z�dK�?p2C��!�T�f-��җQS�r�h��ë\��}�'�7`u������`A)dІ����1
a�H�����O���u�Sz��5*��{-LlQ�}Ⱥ��S���Cq�}V_u ;7u�-�[s?��� ��(pE������s�o"Ԅ �AQ �x*'Z]@�A,�>���x7�"N�ȉ�*eG�m�����4�>٘� ���9���GO��΢�Y��X�W�3#B�:C�C��K)��p�ňP{��B��l��p��9Ξ |mK�xJ%�B%P �%z[	�@~K"Pl�)ύn܂ js,6E� ���##���Zm]��n�C��^�y8	B{�,0����[BzBvd�(/�`������̝b���O?��>���ct}���D�P�[��k�+h�yG�,�,�H��=�<x��b��p��;PM� ｌ�C8Zޓ!�}�+�&�]���/���v��.���̎j\{ �h����=�VJC4ܤN�YѰXCM��j�
&uG��DdU��f�I�<���R�M��s��n�*bZ�$V��F!M��3��!�T�d���F�je+r�c`��B�Y��]��t"�́�S'' ��-�0��z�(e �*�**f_�D��x&С�P�5E�&I�a�88�#d��b�ȕL���q�a���MT5��zɥ
Qy��R�ץDF�����I�}�}�0��$���3yl���i֕P��*�H�*�xR�p�Au\x [��zyn�q��*7�ޚƇl��ѫ@�7��V
^/�;��hD�pAȾQ� R���N�pm��"PI�I ��V�X6$C�x�<2!�R�qK��q]@=���$�����/�b. Z�Jw����R�|I ��÷���� �P!�<���8�e���J�u��B��	�v�P[���;�Cj��=	p��(D;�pA����w&H�nt޷G�\ъY��z�oE��`f�)EB���
s ���)Tz��V�E�):8
�I�
�-��o�_��51hJ��I�C�YG!������#�jCp��X\����ЦJ���x^C&`\�����}���WP�0+�"DaI&6� ̂�Kt��[��P�J"o���/鏧T�DD�'���MuCT,�C�8���ے�[4��(�<�p��|2�.�h`L˺30�D�Ut�b�p(r�el,2ce�R�bF����&�e�a��R1|����K�QX,4�=��qGz%��$H�p��!���3CMU:��	�믶��]�j�@�w�p>R��� �.�*)�cȧg6��.�H�pR�>!x�v(���D.܀��ˆ�X8��rG��q�^j�v�tg��`�xbP�?{���H� �M®q�C�kP�K���E1)��@�C���~2 z��׋�#��ǆ�E��� 5"�p�f�]�� �Mz��Cڒ3(�2�p/b�Ø�
^f]}�msU�\ �wth3Y�`^"R�%!`,?F��"��C�yģ4�HD�Z�ڝu��pQ$8�J_��i��K���ý�!�r��:O�p��9�_ơ0ab�f���.���1���ޡ�B�|d"!��:B+b���D:�Ũ_�K���" �� %UD�á�_e�<�Y�A7\Z�����-$��o�)R�o��`y����/�W0-Y��@�D9�����Q{��>�D�A,�6ЫL�;1�ȣ"	eh[��0Q���^���m���;D���C~��$!�t���[U�aA��AC����d�a`4�|J!S�


}��@�(G���	aPQJ�@H�(#A������_� `�L�F$ZBIRE��"��U�ɦ"�	 �H� �r+�Ο���%EL�0F�����c����Q�!DO�rE8P��Q�