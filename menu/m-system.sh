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
BZh91AY&SY[L�� r����	����������pF@�  `!��]�v�[㻾zl {���]}��{ԙ��w�mw������{M�'sm�tӻ�`݃Y�Ѡ{�kF�9����{n��J^������E!$I�4ɐi�h��&����S&S`�`��2G�F�� �h�M2i�A$��=OP�� hhz�z�     4  ��)�!��)駩42��h�   i� � jD�&��=JyM�#S@S��A��   I&�hBd��?*z�h=OS544MF�A�&mOS@���0D� @L@I��z�&�I��h�4��� 6��i��}|��C�}�=W��阙�f@K�H�x����5OOa4�Q��B��Dz7����.���T0�v��_y����
n:<��ـ��� cf�!�/����b�[b𘸾��*��J��b������8��Yt\�NqƳKSa�2hpܪ���S
ЫZ�mѬyk<�f��h�H�b��p_P0�y�P��)����]�9t��K�ъ�I! �@)$7c]�����9��
�Zo��љ�t� -��:|�7��p�9��C=�u���5�6y�,����}`zp��VO)����lRcB��}��yD3�39�n��À.s�4�M����c��kb@c�� �J��\�S
o��(4��y�J0������	ڹ�2�P0j����}l�t���U1-	���D7��}���tvr�E^�8�f�-��?o��S�b��Qy}�6j�������j9�U%��*qL��'�V���vr
��+��=�/��f�
���2a�H4����gz~&)7�T�F�J��|_�/��>eD��"yBAdS�P�m�ZāE. �BE`���
H]�� $	��Nф�2��e�������C	h%R���T�J��}c��+ԮC�\}�2�α7���G����7_B��ޜ���N�)��d��86���=������ꌙ�%��3吁R���ݜ"�� �3@�'n���m�E�jc~%O�PS��V�/�Q�I\	Ii� b�?����g����"��4�W�BA�+~�$I���S@�=�F??Z����O���D�L����qM���Q�10���:=�)�ރ�H��Қ%m������܉ə��(�8u[r�\��P<Y����J�g���E������y���<��Al��ٿsHi֦��u%�D��TH�Ig����/�5H���� Gtuk	���T�%Z���g�^���L��	��R�eq�qw�M���'`̐�d��­��v�y{:;O-��+�Bf�@w�rf6�$B���u�2e����@k��qs-Qm.N|95����m��s���^����ӧH}>���N;�k�~v�`I\�V_0M�Y�l,ώ���E�$6t-d�Nj��-�����x��F���\(�\��ԅTk��b
�&��:��ݫjH��}�x������n綼������m�6�m;�[�� �K����Wv����{a���r���̈́Яz�C~R�5ԓ,h�̎[t�w�#�-�N�d�v����>�bKV�l>��!s���{Y!�n\R,k)?R6��
�$y�E�ʕk0ͽ��lWh�����H��磹rT�,�d20�a�g�-��厗�j�u
�Gq��Ѱw�,0��P���f}�Dy�22?@	��0���_]�?ǎc���L<��e%/�"+R#� )�ׇ6R  ,�=�7:�Jd �0�\U�DA<�*q-�K#��@'X�z�O7���f�_�b�ȇ�6�0Ъ�;6J�Y�ˍ֙��;�$�䉶����Kp;/5ݟ��dh(W� ;�I�^�
�HR��R;U[��|A�]�,��7��[1Gb|3hDN3�Р�-V�.c|�=/�N�%+�6��Y5�>o_��
�lQ�zHgXq�"'G$G#�\]=%i��5�;~��닦ޱ�kŷʠd�uD��kڠ�DO%�݁y�L�) �z�"'�����1�`T�N[yxx<���DJ�����P}���,��n��m6�6n��00���#�=Ξ�fl ��<�㵍P�7����0ǩ���<4���Ol��������<	��y�]sx����Ƭҵ�R�Q�O[�W��L��l{��$��ګ����!Pd$��x�D''W���w��g�w��RDD�� A��iJIok�X�fhF�d�+=x{�t����� ���m����B��{��PP���(�"k�JUI(�����dք3HB!�����[�侴�E+���C���	�0N������}�N,	�����#FOad�����oB?	���N�~M�瑾�o�j����H2�$`hdP6��_���y{=��g��rύ5�YdVY��|�Ɂ���Q���


A�����5�n^�w��ѷ���|���^$�@�i�]�B:m�n6_u�8o���x_�Iz�a�޺퉗�#��1�K��`���^^+��{�Yw���
�}��!\�Z��WE�W'�Q�mG�0��
a��
=e"
�\�'�v���@�6s��h�(C�%�A'O��,w��Ԅ�@h���%��Xz�ֈ� 2*���­6����P���Jς�>n�z�E��Pe�%�Ă���n�܉38��r����W�ģc�j��3>�k<U����EW�M}z�.�I6�[u�9\C��]�o�BD�}7'M
7��,�|fLbG�ae"�n(�5��9�zJ$�7Cʋ �v�
O2�q�L�6��qST�N��������;�ho�C�C����>���+Մ`{�#Kn��e.����EϺ�m{JI�t����ds狴8���e�ݾh�ve��C�С,Yʭ��N�т0�+�m*~�Tf������Z�3�g�-n����_�$�U����W��wT� �n�}���# ��l@�E�Lݟ%�O>G!��ED�AU������u�s,=b*=+]�V���ww�޳�9� �V#���bzc�8�
��vvOi ^'
v�H)Q)�0mo����tR�WO4�@�g�O-q�.�gE%��Y��ؤ��}���BBA/U
+@
�Z#UN;x���U�ߞ�7Z۷n����l�7s�ym�� ��R�b��Ji]5Ih�<�YE;0A�r$c��*�	�a��t7�ƆcH�EmCkYfƖ��f;5��{3Λ��Ib��`��+�q��c�'x���拤$�i�� �'�Xw\�А7������A\�( wk �;�Pz�`��)���p�i;�?�G�	�\���3o�/��~�$(1�0E�Z���b��b� d���?��=��pٺ�$�~"�(0Z�1����)�{g��SИ�:� �w�#H4�G�R�y���aMw�Y��>��a9(��(� ?Fy�� �b��y����&uš��yy���6�P2NY�[e��$���U�"�`�N�y�Gj��2��Dt�l�l�S�Gƥ�S%;��	�pʹzg���Z�MG�6=1��K��1�Է��&�kݲ�G��Qt����9�7D��~���ÊL�R�`��9BPO@��$�"VPD-_eX:E���9U�!�t�ςW��<���ޛCP�G@�_$��NE	�)�-��MS^����4
V؛�&×����%H�W�z�u8C`c�I�WwG=�.��oO4q_׺�3;Ӡta�;�L��;8��X��Yy�F�LȔ�gV�uɆ>"<�*����f�T%�*��7��yY
0�a@�N���x!��t��R��Pb��u[� !�a7dgpϜs,MHn�Qi]�0��u�<�kH^�������5T�{&ɀ�x�jS�e�>�Q@�2'�$g�t�&d02 �ϱ�V��Ժ�-������g�x_�]�L�;� ��~�C Y���셄'*��)K������-�������������P�W&�5���Լ�ڸ�l�| �+\��$ V�i��6e��̵�y�V
�"˰=���1x� 4ޥ͠2��^>-��f;���%*,P�,SPZ��;h}�x�AmQ��/rQ��b,�vpKA&eQI�������y�~+[3$^���hGHS���z���o���<�<�}�[�9qm@����i�c�[i'\o���/��yC�Jr�H2 H=V����-�@	�Px�y�
�0�)��Hxŗ�s�}�s|�h���J��59�2Y�N�p���Eu�#v��]ps�����F�T gx�x}[��7���F�J�G�|e��\���>2 �z��������a�R��7>���{b�Co�f����ŶP{=A��b�n~�Do'��P�(}�~ s.|��p��ë�d`Hh֞�o��A._\;�9�s��O"�^Ď��v^j	����5>m�1��(sze�ĥQ?�36���s�n3j�i�7q4�@�d�D���b��Z@�!F\��Fu
sQ4���p����~���hk��9�b�.=���0 >|u;`dBBv���]� !ɽ@.D�.��
Ӑ�0ځc��8i0t�� �����-��-)إMt�J'�~�(H�L�;Э\K6&����Xa��
���Y�)���b7�	�ht�'��y��Z��`������5������3�Y��kl�,X��D�A{�($Q��QJ �}h�	S�70ҫ���
�)p_:/RtKyR�c;ꇄ��d� ��hD	� �66���u[r�������FbC�ux#5�X�j�5�&�0�=��;OTQ�F Q@�P`���i<Q	<x���'F�x@-?$ �(�NL����_$XQ�Nu
�m�)�.��p3:��W��40����\�(p
 |��,;�"����	bŃ��e�������
V$^��	#��y�8MI��݂�nmqt�J�#Qս1}?&�p:���,6�mC��:����)����X�6�B��"�=��C��sO��{a��@�:N�� Hh��a`ıǉ���`h�o�~+������~00�58|��Լv���w���ig��M�����f�������CS��	��� ��ȁ*�!�
��7*�-=Mϳ`����Zi��$�����dE����{�c�"HK�DwD;r��^���_K��t��<�qdU��6�3a-|��Q�@A�@�t�=Z�(7s������S��{R�
%Ӥ�v� FF4
�0!R�!Q ��vN^��Q�l!���Q��p�,B����A�lH�j���"w�tK<_�%9ChE�����#�.���렆���j���� �׽"V��!���$�	6��5]#m>�x\D6� ��}�Ԟˎ��5�� �:�i0 w��ZA�k��t�RJ\#!G�,Rޖ2�C�q��=���q1(�4�����6:l	�x�#�A
D�x{�d����P�v�Wծ�!jD��XŦw)���&~�c�O&��Md�.8�c��؆e�R�
U�<�F.�M��2w�,Ζ�T����'A�� %MP�:�y'X�Z`��oT�/��ϯ�#"�����;���h��yu����3���JDH$U���R���P���y4�p���""a%EJ HD�IU,�^��b����H���ҵ
2e]��E�JBZB�1m�l��>�;-
#�āՇ����,Tަ�0�ą��Ԩ_l?Y���g�q7&:x���,���	�ݫer��	0 Җ��R�T��=�j�1��!�
� 'mS��`܈�=�0l���)�9S�-�����W���:��M�n��3�����&���!��������m�b$�Y�6���L�I�G��w�i���!�*QR"pV��y�i��@��:��4x�o�p/q6���p$�@#�"���*���d :pF���`F|B��v��/YŞ,.�r�D������>2�"�=!�`@`	� � ��y�,�w���SVG9�±f�'�A��1fH�\�m�+�l�l��C���x��)�!�>�:��FA8�|ԃ��!� *	 H��I#E�!�����
e����P^�n
ՈA��<�)�24��'�SUHЁ�s��R.�Ur��rU�p%<��~����������$~��6����Ύj��t���^��Q�B��$���g�W!~i��U6r!m�� h�Ȝe( 8Ao��<�|�^uL-�3�Gr^�8�^֕�:�o���F�9��"�Gc|eb�l�#��5�.mN''�zxY���^JB��Pv4(M�M�Ӄi�\��7�}ĺ,��BE�oK�1�JsNz���4|�����J��
r*��[��+��T��<5I)P<���� �� �E� �8��h�K�L7*�Bنqg�,;�}Dëk��q�<Q�֨�F��c��0�c,��,a{���@�ĉ&@Pa�@vK�;0���rT(��q��,�X�&�5�`\�#~��D�4��N6թ�q�� �`Q���T�fX�~@H���oE���{�	�H���#h��Ī�&v�#
>�S�.R�T�8���u�q{�����߆�f�KD�r�X�Mö"�\���S�U�&!�������hi�&$�rl��f�J���i�;������1��mc"��;���a���=�ɺu�'��W��F�P4ZJ'T�������8s"08�9���N�Y�;�]ޞ:�3{�b.d|��P�� �L���
d��ә�T"��~�iӻ�S^,M%�4�-�Ej�Dhwb��q@��|�8Zc5O�;]��#���m�I&b^T�n]��O�p�S�����w���7�PC[�/8�� p�h���x�eѣH����.����]z�X^&*7zi�_���;[W-2�a����A"B2w�"��0���~��ꂪ(����Ӽ.��A8H����˽��LA~�u���d�'|oĂ� 
(�*  +@�F|)`�'���������U�'���5ݘ1EUUO�`&�A��W��(0
V�G H	?���BB� � !��ܑN$�:>@