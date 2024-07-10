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
BZh91AY&SY}�� ����8�����������p�F��  `&�����*ձU!�V�i��;d^��uδd"4�q;l*� U)C���J�%]2�]� H)u�lt�:��"�Ya$� �544ziS�
���yH��S�$�#aG�ѣ@̐  �0 �   0	��  �  ��4��4 �            $ԥL�Q��4hi����      ��  ("&	��yO&�h?B��O�S)�'���?SS�h��6�����&��z�!�RB&A�4�224�h�M�Ꞧh�	�)�(P����zF��P�h48�E�;}y���H_��d�Pn��' J�d2��Ǧ$x�H�x����J�#�%�5��=��+I���k�׬����7���fno�>��>�Ru�'�?�q�����y�������*�5:�r��'cK�����7�k��K��8�	;�g3�_��ͦ��Q���]/�(���1Obr>����Md�����0�m��̙5)Lr��z�7bo�;�2�!�����{����뙒KR��͌��
�n����UZU��YmX�ULR#m�m����avb��kbV�I��G1֓�P��)+�I�3	J��)1��"�SD�q/�%4��L�B��s�b�T����4)�:w�8̇rLɃ-7ZB߱*U���)�ʥ�N���M�s���Vմ�N�<�L�h�s����8�R����U�ǾjFK�Z�ۢ*=8ߧ�%����jl^�d�������˝��b��:��.ͥߕ�dt�6.�:����k�m�뤴��<y�q�o(���˜ʕ�^�p��#�̥1�$f��E)R��7����S�:SN~�Ϻ{Ԫ�Ì}��)�/��@"0�\ ��9��Q��}Q5L���1�{[Ou�?'��q.#����sph�%��<+ۂX�0!�uB��@-R��^FZ������U�}xy��Z3
p���W-�¥�ZA+<[6W��L��֭oϴ��_���y�0}�8d�����0e8�ˌ)�U3� B�F�Z�/�������I��!����y$����=*˖=��Hȯ^҂3��F�'Rj?�]ۣ���bE4�fo�}]�0S�0�ݱ�ǈ?��#�:��H���M��ثY({���T�C$��w�N�4����c���6]_Tk�6���B�d��u�6�g�kw?ܟ���)��4&t����օ{����5�M0Q,�%�1'�����^���Ǵ�j7����P�8q'֙]DH��v%��P���$��6}����V�:'�w�o }�Ƈj)���!K@*��D��:��kqp��_�(��J�a�Z��/���٬s��ϟ�^��v,���_���Rjh��S�s�gš�1sW2^��*��"b�
.�X�v.aI��s������Zh�<:.���YJ>�����3�<-�JTge���*���Kh�?���Ug�Ԉ�j|?�Z�i�q�)�,�T��U;��WO���w��|�y�����N�'⡓K�mQ�ɰs��`F�	���2�U\5����y� ���lDCfz�]��Դr�����n-6�������4��j���|�b��`�L���y�*U����-,�#˜���i9���t�5�k�9�:ё �@�'-ZJo�j(��S�t��p��Z!A�9l���� �y�Z 	�Ͷ+�x��a�����}�;�3���1�V��p����$Y5�S�;H8��!kZ®f,f9[a��2�R�UDC`}��=�2���<����p[Е�fB1fC!��&�k�e�*vĞfW��:��t�h��o;F���_�ܦ��p��.�ב�1�����
Dv��N~J�ǳe"x�`�:%�N���F�j�_�=ҔQF�_�ʗ�X�/Y��`�$@���F����s�V1T�'��xbUoI$�a�c��Oǋ�6���L��7�$!��	
��WX�����ޓN�q�p�Ѫ��jqu�6��Os���{(����-�2;	/gSC�?w�t�q��6ӵ�rNJ4�Āg � ��Vn�����cc��A��GA �r/!���w}�W���F��@�̾��nTHյ�MfL�^~�9"A�,c��.R�Bժ�ZP`˫��a!%�ꨋML�J�P��f��gR��{�½�r��L=��5宵m�d�!hS}9�@vN^]O}d��Q>xQ�g������vV4�$�ܹ�{�SG�.HR�գ\��B���ѽ �ҩ��d���V�~�t�P<�Rq]�q�k���43f�ԧ����&dx��N�"*�"����Ò�AX�$�W���Ө� �I$��(�V6:���k�U_��ء	�s6������!�aad
&�B��1u��[OU�MW�DZ�B��ʼK����a(�R0�$�@�N��
���`꯺�#E��>�(@ʱfe��m���y;!b,Tb���^x\7_%K)M,��IE���⵱I�Va�sD�5b�����j3`��nרZ%�؀0�H�N�O���ߒ�3$�����]h6)��d�생�ִ32!h�������������x8+V٦�_�G����!�0�9IhU�T ��x�`H	qNe͹̌��Hȍ�{����$���~����-��Sstߐ#BK8� ��n�������y��R2��l��l�)�H8�6!��&S�S��JS�}����B*~hg���׈�=T4\S�'� >����������{�R�" \���{3��7��^V�o�&��d �|~�"Sb���A���6(G�h"_h0�i�z �����A��!�B�Ïc��뼿>���d��ę3���;�M@��q�o+Ļ���ns:��d�(����
Ri�����H�*?�H��n�̖hd���_���O����
�� )�
�^|e�d�An�0y������R�����5�I���\�H�>�	$�5C�:�Mg�9��crr���C�������O��Kd})&��%�{^!����6�F��y�=O��}��Z�ΟBmn�z���atF0�a�D(5.�"� �@�R��D�{{��k�j�'(\���%��O�%�D|Ԝ�}�&N���&��sBm4R���K�yL��䤾����6ph�r�Nc�3e�|��I�ORl��]^쌳{p��`����N@��'��~��h@����)$�I��r֠�x �����$?�E',@���MX��cu�T�M5�{��:wF_H���Yn¯��>���?7.�'�+���6�'6���w�c�J�l��[��h�Տ�{\�b�ܤ���Bř��k���.��|Vd6�t
h�^�0d��لYO2��%��Д���gz7z�1-u�_rR���x��&��7�I4pF�d6&t���G6�z�4�w��V[�JX���|"�v�S$�eb�L�M�`��6�����>��}�"��,`�d��!�sB{��l�?�c����jؼ���|(�Y�K:����}͡��e��h���3u�f����O�$�M���	
d��C�]%_�˲��0�n
fK�H�(�0�#���h2�����?/����V��(�F&��@zCg�1z��&$wP���Oh\���ݳO��I��~$G7��E�[��!vTwQ�.9 -C�*Q�$��cL1��I�s��/���*苷|��Pj�j�ؿ<&oD8D2�ZH}�$�A��%���K��P
�vJT2���%!��y���f��2}��>�m��/!`7�%�@��Mg;�'����uuv�yb�"��i��Y_�]d����$�Ӕ����GZWd5JOv�aI���Q�H��?���@�H�BIkH%�u�6���z�?8�N���D���Ҷl�]r�EӐ)�c|�d�&�#Rf��QJ-:(P���Q��--�]��Z{�G�n�+F���(��b7�H���DpC@��c�8!�z��9rI��x�)���]gi�,��g��������qi�`kD�"�"�G�Ky:]�����G�˓�I;��-Jx��^&h�QgNdO�-���x�J%�p�JW+ZU�M�~w4q�&���6F֩t������2�����u�d��U*�η��f�5NԗO'j^���)Gd��U�+Y�C!g��I���6�?�Y�L�p�;�	/��N��G;"j���*�,��#OyHu8E�ݰ� �Cu��x��b�)�l��(�4RS�T�[bqqBN<I$�ƻ&���J�}�$��2#DM���Tm�Z��S�O'l��M�H��"qN�M�"�fzd9))IJ�T�΅;�d36���(�/�ꤸ���^5��(��Z5����E����dŵ�$�	�����Y,��Z��W	��E�2UK�����Jl<mٛ0bkȮQsS~@6�z�nt���KK����[z.h6G:mϛ�m��P8]�]r��U���eT����V$�^�Wz�pL̖��wYyHv�T�Y�)˭ⓡX� H������.��
�9T�W�2j�ޥ�Q���<&���*�UH��;׌�!ǪD�L���cy�Q���1���&҈���L;uOy�)��Ք,�;�9����d���Qql�RS'7{!�<�B��%zR��Y�n�.�T�J���eZ�J����:.K��^�Չ5�#d��`�8�ԡ�^q���=#�^�Z>����bHi���D������1)6�[�(E�_
0ZPK����L��YȰ��q|`	����t��b��O�C��#��#={��q��t d��@�VzY�"pk����2C�!UU)�c	�M��u?��oy��'���ltI:��_���)�M�|�T�P�稔�5��"]�̟}��� 
v��8x��6'���YPӿf�;x�m�w۲s;z_��I��By�}�i��<p�xq��;5f>�"�,F	;	��M-���@��*�ݵT����o'ޓ֗>����>�0h��.�*�R�X���b��,�h ΐ�R�[8��h!{(e{e�5�u9�9mȢ-�[�8��D8��J1chPaH���52sM�D1i�!sj(��Я�$�l+��%D�.PGd^%�$�=g��N��N�#�nڮ�`Nh��x�P��J'~8���W2�����{o<J"�C�6̰�d�b��S��M�2�^-}�{��N�S ]�h�泓E�/���g�bĩu�h���:�C���㯏��w��C>�pt�	 �.�X�R2��v�5D�<6^bfXQ@�I<�K��� �Q��j��T�L;�_5�z�+�F�����sVI[
1h[{�/����X�����a�5����$��Q)UKD���j�	 ���AQ���V"� ����q`(��fL���+�^#?EQ,��Jl��Q�D�tݬ$N{2J���o�*4��l/1:sY\�S0�`2��m�o�XFFY �T(��b�æ��e*H�-بh�33�}@-�a���(��hnM�9�&6j ]�0�_�b��2�l(�9��1"T�(L�B��zHI��j gn=CG<a�K���_T�#aJҬZ�	E6�/Dޗ��|��abH|5mݡؙ�*y�!E��g��S��iU�J+�+S��v!��V�Г��n�8�#wA�O�k�P����RR������L�'g�D�KJ8x�<va�܋l�l؝����鏚3��ٻ��[�5M��wL��|0�GK�"�*'IRrLOJ����'��;=���jMdOjK!��3R�Q_%��`��ZU�-T�,����T��R{6Q�jI������ss��ĝg�Z�T9�8�¨p��) E%�ۃl��E;��(�v7Ab{�@���m�Q2��t��yוΟ
��X*q�YؒH�@іКŲ�3�3�ZU1��0.��)X7�H������G��9&�I�I�&足��%��N���v'|0�#kOh��ܛKv޷�x�\�Ē5HN�ӭ�u#�N��#�t���)�*l~���~�j;��ޛ5��_ay�U�d�Do6w'(t&K�kģ�ىR�)(�$�a�J�V!辫����&�2�C&�mu���KkK�"�"�q-*ZG��9��p��v3�
�aY/REazY��3fYK�����T�qh�-r�aH�@`�h�T(:���(I�B��	e��d�(D��:~)2^yh�R������r��M���
%s)H�ij��,�RТɆ���M�md��fA4C��;$��y��㨕B�=H�����`�e$��E
RpٲM�Yk"`�.���TB�]{=�/���x�N��f�䒥q�|R=���e8|hߥ#`��v�rZQS�nG\I{�{�&�(�Gw�#�'HQ�B�Y �@aB���4�/4
���]�"�Ł�B�a~�O�;�X�[�NR�������1�Jv�J�G���D�uApp<Қ�1x���9����:|�U�D��%�Ri��M��Fd�ҩ5T�K(i�U,��0Ѓ,((I,!� �o�g�UB����B�5J\�/.a�js'�R�$�kzK�o捓��%���i5}�9�t�y�[�-#�\��{����%ue�Q�
 ؉$'fMK�JL|���)edM����ne�����n�e],p>زg7�47a;[gz{��qҝP��eB�Q/F[&$�"�D�X�!��U���Щ(��Q'
�M�F�Xޛ�¦���Jf��t��v���v.GU�Yb%��o�����z��9��)�XZ��^I�����x-�\�)07^���9"u�b�Rk��f�6f�ŅjT�$�h%�N�,��L+E!Z��J�3��SUR(��ֆV#Y��ev�@�.�H
������&�F���셖����-�N�R�(�b�8C���'AԇL7/�p#N�*�^�ת��Mj�Hs�ZKm�R&c���j���\�)U��Z�!�|c���Ԝ����Mv�����8O]q�[�7�y�� =@Ћȧ7�WWGY��$�r��R�R˾e���䥳[cTmD�O(}UT�w��O��Sޑ�8]!���dQ�q�"%��#e{Hy6d&R3H������X^>���$�UR�8�$<r%�}ϩ�a�%y6�o� =�%GT(�� �R���%��QOH�
�O���$Ο�d�H�$|�e$M��$��fT��6/2�#(0��e�)q($Q��|=5O�[� �
EF"S��A8R(��f�����I����H�B,)��H,
��� S�ȣ�D!��چ$$��IUP��@(	` /��`��'��7e~��}V����U(	�g�Q
��(*$�!�@da
��	!$)�BJ�Ȋ�:� b�ESY�6��?�.�p� �z%�