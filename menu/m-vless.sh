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
BZh91AY&SY'!W ��{�(�����������p�F��  `"���B�U��78�#-�3jN�v}��^���Z�՞��۴T�J٩[
�mb�UE(���MX�Q���B)�IY�����d���2=�jz�4dy#A��� Q��@����                5	�T�S@1��h4M � �22   $�ș=ML��S�5<�<j4�?T��zOP��4�ڞ�hɆ�����Ddhh#$����)�#T�zz��)�LPh�G�f���'��@ "HB1ڍODF�ҙ��@�4�i4a42� p��D_��,>��o�x�����LX��k�6س��0t���FF�v�����a�?��a��5�t:���zi��ZM?
�,�O��f-�Zp���~�3=�&�����Z}z�a�.�mJ�t)$er�e�1�M�4��Q�mZ�Ua����l.(��jS�Rk�Q
��+x� �0B�XhܲZ�*BBe0�˖�����R�5?׷0�`~n]�r�l$J�8�.ȷ�nm�����-2SL/�{fF����
m/���Y��qƻ�֫�.�v`�l��r������.�t=cOY�a�TS��j1�u-sř�^I�����.6��7�կ�տx�<���nMsW;v/gc�~���{jjua��fw��i�	��_�x>�94�D���)�8�l�?��;Q�c�u�5}�G�R�?%�S���f`��n���G#�=F��߱��1��MR;IY1���7����j\�ę�/9��#�A`x['��	�c���Fb؁~)Ǖ{�|_'��dv��8෩�`�wЅȄ�� �
�
��-:��\���h	麗����L��}�Zإ�3�|��;d�K��� ,d!���L���.y��BB�����᫅����{�N���U?j��7	�?�wo6�\ӟ��E?��Q�b]y$gO�ԽT*��ϩc�af%?.��g0@��jն�j�A�)oa�q^�~��)�9ӡ;2uda�ANuJ�ވ��/�=�N��1�O��b�X��$#%��*��=P$	�%�Eǚ��;�`(9}����{�>>�b"t�Uu��{`���Q"&��\!�B���:��������kT*�<Hm�ӎ�+޼�0bx�U�kZ�����la �p�j�޷־����-�~3��֪R���ZP8uP-�'��7X�r:�~�S������߱j�%C�N]P�c���n�
ht��1�;e-L$����V^;{�AЕ*p� n�<������]���{
�_��!�;��:,eW-��Ă�M�r��]�Ʉ�Qo���Þ�[��"��J��ܒ���9�Y�o������������r�;����Ãv�O!����u8y6{��Á�����.�n.8�����/;���꺍�.;�`�Q�;e�s9�Gt,�Y���ؚ��8�$�C���0�B�����:m,v�/"�KX���������{:0�dZ�j`E���]�鹝�B�Lٶ̞_���z��|r]h3y����z�P�saN���|�0�&�z�zs(���0{3���*��т�ZX�`lɝ�3�2�k��~o��һ��8p��$�K��~�GZ�g�5P �8���ѿ�k�-'�;����+^ �/�� 3���t{�(=Zn��7g����yi��fz�ݧ� ���j�M�=_Ojߕ7z��lcm����J%4ۑ��)��\��Jq}%������t�?�v���_T��tD�C�֡�U\�M,��r!����Q0_M F��W����a�{��v���r��?��HA�.G���GuU��z�����Z�@�,$�BXz�v���I�:�m.G�%w�D6oѠ3�(��a��;���xz��Z�J�-kn��a�C�xFU�a���*p<�'C6��H�;$kG9�I	Uz)�
�T��S�p-���`�H]�r_wv�5���M�p�#r
�R�LIc��ȭB������.��e9�Co� ~ܟ� ��)+�&���!��ޙ[S�R�.RB/�d�{��`8[q�A.L!��)]n����]�K�@��Hp��參pFТ����I�l1h�.���r%0��@"HT�����%/�K�S������xs�w�Çn�h�����������W��1t�ڲ~r�uH>��$��P?)AB��yX���x�='��:�e�,����.r��B�D|�q�Y�����n݋���B�K�6���T1+�p��Ps��'m�1��-���iz���*P9�!e�ؘl!����ҿ�t�(�.R˗�{+3�x'��
��1F����lEV.F�YJt�2�>�uc��~���|/��%�A.s=��,��2�����2c�9���H桓���D!e����>׀�vB ��9Sj��8x�TS!Ggi	+Y� ��j�JGIʽ4���R�mܳr�����^W��y���髻���?��/W��7��ڭ�A���'��� ~˼z��}(!�Cꡘ��%�'�������u�ӄ,��EI����|�$�� ��(�wA�n��)[�h��$��J%��8J|��V֜�R�u�� =�θ�� .po+��%V�Η�4!	s�T����2�| ���?�ʎ\#K�w�汾"6�<^Ǩ��T��	� D�
Ea����u_.��U,��p�{��3}�e�z�����׳fhl1�@����È��'�*��py(�w��IRx������8�r]��y�g��J�W�"��3*L�P`�?9���O�6��=�[ۢ�7���+��ǯ-����!�a�|G/��b�y :0A�7����	Ï�5�}��`$� ��j15i�W���5c�Zy�X9\��ɠ�۹��oc��"��)���A:��1�����E�R�wK�F�xC��~��_{V�h�`�6e�y?�Õ�Gq�H��[*���7�M�P�|Cq��/￀yC���)����@��#?C��Z |;C�;����P��k�c��@d��Ξ�m��K��.I�06��|GH�D�?U:���
�T�}_hZz�4�%�s�\u!īI<?jY�y{o���C�"�@�`f~��\2�0�U�����hC��|��9=��}5����z��
�p-��4���Ɏ���y;��sIR���3a�:n�ꪩ����;xd���`�~o�__E�3)��GF�=X��>�h���h!�L�j����)��谊����.�0�,�$�,(Og���(�#A�X?ZN�Oh��Ajj%���j��.1�(o�b	�r�Ʒg�V�)ߥS_���z�))�=�ڕ�H�t�Y�O~<��_sx�T�)��
����zZJ ��-�5���\@��[-g�}�^��{o�Z�yHn2�y��7�%Ԣ�3�"ЈYMl򋡡FN��ӂ�9���[S�.q�d���/3����F������N]!jN+¶�oi���#�����i`��j��Bp�B���ʗZ�^�'S��01	�tM��G��ڙ���kB�P3�̩���5(��;�SA Q-�	�!�^a!
(���f5�N�/� ���!�m���*P#��D�z��C-65��@��F"�� p[��J
��l:�_�[�t����/�@�U��D;����E��b�%x�q�%w�p��4F�Q�$[�m�SQ�\��
r*r��k4��,����ϳZ; ����H���3B�F��!t��sb�j��٦���8L��oB6;���H{r�;.�L��x��H	��i!ȆL��^o}#�s��J����B3�ϕ��Y��uQU�t=;2��c�o�=�tw�=éN!q��A硆�4S@�E�[�'��#� A� n{��X��:Ӛ�1Q�Y �#`?Ƈ�ǅ�v�����EG`e���hӁ�����rc�<���(�m�9d����BH�$#R*?Yx��'X%�R��^
��`)�)�<��)��>�"�SЅT���N?�sfZ���P$?�䤋�~l�ā��%���$n`�ɑ�${�e�Z�C��'}�_{\f�P8|ëj����8Ճ��v4و\�x�_Jo�7�cω���<L�	c��a�lzc��F�k��'�)�<A�/��%?Ux _�HI:����rW*7)@���G��صT"��� 	�O�VczlZ�}�;�|������Ǭv���u⇐��L���^V�!�#Q�#iԫUr���yŧ����PH:��D*���a$
���"7�	8�����if�^=h!fl�o�	�J�)�36q,�@m�mP�r
P;"!LX��B�"�9'�F��,Zr�nݳA��R�.8�N� F�l
����KL�A+��3�&N�۞�@�M㖾��=�=�5�RB)�,5r���P@�)G�⍢���2[Y�{����p:Q�Gp�X_8y|�ՖaR昖t$�H!�+H; ߡ�	�(h��օMJ`��j�T�DR��إ;�#�E9�(p�(�d��`����e�����%��RN�$�.�g���^�;�űu�⹒~A�����ǫ��	�t��^(i�8d���H�(t�	�D��2���>\��*���
�~�+(�a��p⢕a
/ Yt	�A�A/ȸ� si�=�r�YQ<��7��Dh�Rt��G����%E�%��)�CD�ܩCT�A3nzJ��Cx���%+U�o�hK����L�ڮ�}�u���[8��w\$dH��hdu���
 @�Ĺa�oˉ�CQC��N9Z���i
�P��o�a�TsP;��y��{��u��
���	м��s���̶�^�z��O "\PR�V��qSh-H P���E��s�� �'��ojfĊ3���\�(v\)IO�^/Y�S0<���v�O��0T�(��6b5���ӻ�:�v�*���!�b�`&�ߐp�����n���lE�W��R/�J����ï0��΢�`^�w"{!�jR{����-۠y@ܥ�\�$<�Z���n!�ސ��)�)���Epp �"�"����Z\��jx��'~�؏F ��̙���:�]c7QI�K�"���CM�@�!�hm��^'�z=��ٚK��>`����lۉ}�|�pB�fk*e6)bq�P��`4b�.�B�`�u�-�05H]b��z/��.I�<b�~��R�7{�)�ބ�hk�� HR����C�[����B��,��hH)#R�M����c���(B�B��t,`��h"�:9)$<��Ú�Ԧq#c�2�u�KhY��hp9�fa�F�!a��1iB/�.�p�-a�Sb�J-YR�v���g�/�I�rJ��$���ćY/DC	t38dm���Ck�]��,7`��(����R&n5 ����[Ôs�G��
k���<�|�d���W�>���t ��2+�/�x�htX��9��b��@B�(r�@5��Q�\�ro���Ď��&��:=����:��;�#��=d4��S0x݁s�5R�k�w���^�I2JU�-y�\/�ɢ! �X(�Y̈T�B�b�=6�؊b��Si�*"y���P� t�@b`6��DʤF�p�ԧ0��@K�nR9�P�5�[(�7R��}E*:��R0C����B�#o
o��t�3%F��ꗘ,,,T;�+-�%�x��$����P�.����5�#��cPqR����2�)���#� @2��B�W=>b�H(�!4Z2���� �]�M*麥�����̥)�{ �w/�(�:�1P�*P�3]:��x�}��,=̺Κv��\���`���41q�r��r���G��6Z��p-H=F���תL�%��o�jP7Ԧ�X�X�1��u$�TTHV��!nH`���3蛍IJ��>F:��#D���Q�dFB��
w�t)҇6s�/C�0C��� �`�Ӛ�h�}�*��g\�m
�`lS�@:��0� s�fo�^E��<�>��f�wP6�9��*��:� mK�y�D �P��*��8?�S�"��?H���՛5<DZx�����9 ԇ�ȹ05���r����{�M~ 9�;����"��S�hd�#�JF	IT��
� �:�".#�Ť@�.�0B�d�t��U����,�k�hBHp���|��Kzw�52��&s��ֿ4��؉�*�h������/�7[�dB��(�
Y�y�:A*>�� ���K��'<"���  � C�|.��a� v���c`4����-HH�{����u����˿�E�]���>2,�]R��L:w.U��3UD��֖�C1"���ĝ��%\8�ph��Gy{�W�m���ۄ�'�X��0�0@����i��2e�2@�aq��@C�kA(�dbK	Ge���$By�TA�$�"�$����`/h�R���UW8+kF$�URJRTK�D����v��\�� ����@U1b��B�$��%�D�X+̈��Q�!h��.�p� 0NB�