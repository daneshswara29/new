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
BZh91AY&SY}C�$ ��������������P@F�  `}��q����=���o���{�y����;�y��}w�]����h��W�J����$�z��W�v�T�Q^��6�VZos �B4	�S�<�5OiS�	�O&jx*<�SSM�=OQ��f�b�SE6��3Q<��M4 ��   �   �=OS�OS��=G����hB@@ɦ�4�@�F&�$Ԅ"j1��I�&���02�OMF����=M(�A�4�$h4&��M=S�z��z��z�I�A��zd ���"Q	�4&F�'�F�2��2�JF����Dzjh �@i�7�
�����)��G��xiG����������:��ֱ�R1��u��B��M:G�NEN�2����>��#@D�qFRT(�FA�UD�T��	%R�C����fDV�E	H��<��p�)a��؀�Bx���&Z�p@��;�u�ʩ:#�W��|�z���L��<��W�n��M5���τ�cZ�|�#.y�qWlK��8$�a��ļ���tHeӅ`�h�K�IM�GE��\7�l���0�5��M�eb3R����������9s�N��*i�w��,�s�$�x흙P�ç�"6�A�me1�M��8��DJ���Z�h������J��/J򺫌OS���)�oԗϊ?=�.�Y�_�D`��ɣn�]�a b�r��ѱ�&�{��w~7�]�\��6��k&���&����&C�s��îd��bt���*��L-/0\K]Ԑ�,�:Z��$�����[8��e����P�y�(@���"8�j�yw��V�?�?S���|r���rI�_Ş����*��́��L��B�.[�i��Tn4�qw��9��]>��}�>c;���!n�$�"z��w���0w(��M�H�-�=C�t�k�ξ:��	�"{���Hˀ���a�`h``���H�k�j��o�;��:+�>�G���)�������q�y���SM9B�l�n��Mѳ����(ݻ��(���<&ò�ȵv�6Q�ǘ$��w"gb\>ϯ��,�Ef�w�)ɪ����a��m'�])��-{vV�J3�6�L:
����X^��+�X%Eu�N^�k�:=︋t5�[�{��k�1�g'�]>�͑EpJeX��Y����+7���:nQ�n�������(P���2�2m4�[�/�A�e%��6Q�p2��Ͳ��&ó�z��e�ȄX��iల��q�VM����U�x����wp�H�=o-7r���pX���� ��ll�_����=��5	^�9�.��wnt~#����ǖ��HD&Ga�L]����<�R�s�kճ��/E��h�,�'N[9�Q*N[�1��������Ĉ��z<	a2��]V�!#��>��˨n?�&i4z8w�������.?�h��Iܒ@������fZo{Z�IQ�����	���Uqn���fhp\��������|����Ψ%�d���n�K?��;h����mZ��5F� M�dYP&�-�<����sZ�	�^w��U �P��R�h��xɀ��<��E��w,��W�GX;�J��<����3�r:�"==[o$6�*�+ ���=~�����~��(c10�T ��~O�UD��t��ۀ[@Dت��*�D�"I�d�aH�Z�����?<�F��5Q3J��cB�¨���
+ᄵ'Gmy$��YL��ڍ��	E�6�d�kUJ�,*�)�`�0�d���G��Z֬���X������?o&p-�Z~#�y�
��eZ�,C��G<�r:r-�g���������̭�B4|�\�<�����\�T!َ�/f����p3�ЗK%���z3������Yl:p�Δ����wN�B�]����Q`��;���a&G��� �4�-_�H�B�%��� �x9λ�Q�ѷ���8�g����,���J���:��ձ'z����4�<s5�Q������^4��Q]��ˈ6�ED�GƱ[N׫e��q>]��j��,��W-6n��:��N��v�)Pt|+��=�&��w ?E��y%�'b�1�4��"��#��H�{�P�+� nHVB���:�H���|����9&�߼9v�d*�o��|#wCա.�\C��XAJ-��Y6T��ɾ���	D��A�)Y��-�n�`2�fla�d^f.��Ll�s�y���أs��鈖��	�<�]L`M�	�����_I���aB����:�����mX.��){�{II�B�
t�.t����͜�H|�!:Ӡ�Z��}�P��c���[���U*�I4`�,3�o�|��&�	�T�6a�����K�n��-�Q����Z�UUU>��\�h�X���IJV(8�������-�=��b�6 �u��g1lZ����T�K�$#h������-�؉�5�ڼw���t��|����CĀ&����<�*�}+��w�]�e���M��O�	m�WD��n��$��a��U͞�4uipW�>���s6𙁆Z�x@�3�+��Ęe�n�h�6���u���f���1�d�9�uܥXJ�|�<�����G��5�: B<7
���Ӧfa]*j��������Y�3���ٻ�g�Z�/z��o�i�S��UKM+�^���������qƟp�����o�d�Z:�3���S��r���{�D�WY>�ݷ}(����>�6��<��r�d�`q#�������-�)ף�r�Ѧ���>�EOy<w�翓�ɦ �"�
�f���ƞ��5�آ�<�Q��<#zI�8����:�I���7�%�G
P���$F���j��1ELPe�Pj�KH�a��M0�Ƴ�Z�Ğ�7�Y=��mQ�ymN!Uo�3\��#�'~򄫹,E���������k��)a�K
'?an�.:����#rq��Kg��R�t���n�f�زJ��8x�:��C
�1(7��g�ӂ`�Bid�?�K��ve�iݎmߗ�,ٲ}��do�7Ճiz,��cX!��Qn8�ъ��Ri��*j��57�u��p���KӘu��3�}
�v��'Cx�}�C�&�A<��ۡ5��'lF��s�q�G����n��ڌ>R���]�,���t���A��t��Z�m�m�T���}�y���3��v&�Ӥ�av{��\.�t�GAm�-�R��;ly[F�r�R���ӹ�KN��U��m73eB��mz�)j�Ԥ˛e�wcw��
���f��5�s�c����h�PK�fĴp㉻1���~��{F�He8sDկ�y�><ܝ$
i_����0�-���ݑ�=B��_w���<��� [�_�!���,6���ᘆ�J&n�ē��Rd�A��>��}D+\Dy-�O����>��-,��־��eĒQۈ����^�0c3�9�r� n���'��_�y�F�]4��I�G�09�%�`���@�D���6�?8Q3!��?N��:��ǹ���Y�+i��"��R@�Q��mmI��j�4g�m����cB�8!pY�J���t�Ϭ�1؃���@I ��e�u�;F�qސ0\�-X�S�f��q�D�:�:3V#��`���,��ĸ|gǰC:��0L%8
�����s>phT�G2�ee�`r%�
.;4��p~*B���0ȳ���m3�!Î���!b5�jv/̼�6ټW��K����_�s�Q��s��=fd�Q��C#�e{��ѐ6�-u�l�����QU��(QEQTXi��T#pP��yΦxm%z����go{�s]�ݎ��CgL�Y<4C
�E�
B������F��4+87��6�P�SbN�"�[]7�Δ
k�G�;����TO��@��J	�j��`pUDU9�꪿��x����B��	�)|=���@�"]~F�yx/\h	�` �p��xv�q�,����C�ŜJ�2�ÃT!eH��1m���@����R;�HL%P�I%<�C���:� /��(e��|�!�5��i��}�
��1�`>d[��=	!�x��-(e��!�j"�hk��Cʿ{j\��Lý��}p�
�Zq�g7*����v9bC�DcR�A\İ�6��y`�ڢ|�rܨ�'�ö#z!b�K�`gط�Q!!�͡�8B��$�FF<|�U&դ2��-�af{�vq� ���%��i�9��h��)�N�4�bL��������!ee@)���]'0\�v�JM
i��K�\�|M��J4�S�ǔ��د[B��i�F�'qh�QW��hw�9T�����U�Ԁ;V�X�䦥N-$�D��|2�Ⱦ�|}˻2�_[(h�U��l�Y*\��뙎��h��O0d�+�`���E���
��kt������%ΫJ�.���"=f���{�R��*�wkʎ�4�5\����E�Hf[��t��*}����rM�|�hS��jb:��8��CJ�K����v���Q�AM��CR@Q;v'W�3�fqKY����a��!lR������2�Z�M�u�llB`ޞF��KՋ �3'i���/�"�9[����,ݜ$�R�ÔQ�Ud�(oQ���+�c��\��u`iyAwA�O��2{�f��Pm:�Z(z��м����\�;9���� +�۶ռ8F2e�8�w:?@lJ|���/w���Q5�<ƛ#N�A���{�\����)����{�I��w:�6�97r�vд҆�� �Dj�	�������+$�Ė�:JXzi\c"�N�%��V��^��U��j�6�kc�`��&-�c�7f��FD��MESW3)aK��4��B����eX�QA�4f���nA����Mwl��.��:����� ~<m3N�(b.����PDh0���B���
7��O�9���7���\�l�b$���F�e�U���=��x
e3�+N��jh�h��5I�pdh����q�34��7e�9���+^��̹��
)��_�9E�	��Ő	Ƴi�ڌ����`Y%��Hg�V��ʦ��P����m�k�j �L�Ԋ���	|����HLk�E/�\JJ��2�jM7������p���ӽѻ����&�6� 7	B6w�"�p1)���-1yS:j��ց��L�Vf�K�aE3g�u8������r�w�D�6��<6s -� �P��ȋ�B1ziS�3v�^Mo B�BlU��_�yM@X`�(�`*͒�2ʶڦp��cH^6�/���䍶���dk�D9��A�z@9Lx)b[=�ǧ)M^��6>��Wbjr7���{��[�h/��/%�������k2^gaͺ�o�}!J`Ҟ��[�q�/b���|MԠ��Z��=�:n��o�@\�			$�^��D�[8�S���zoy��"<n��5���7 ��؍��)K����p˭�Pϥ�u���Z�(�A8sUUӲ�2n�	�o��UZɽ���'$��E7�`�o����Dҹ�H�o�<�AcL.�ف���!H"��TBERP�
O��'�������^]�a����S���H.V�=�z���\�bv�DUFƂN�%?C��P�X�lկ|�����w{4�z�I�yV���齵�L��Eo8��X����ES+H���T�b��_:��YDQ<��~P�H���x������Qd?���EP�$��B��R
����1d@�@ 1!k��T����)��� 