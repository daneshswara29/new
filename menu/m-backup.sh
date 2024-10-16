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
BZh91AY&SY�${V ��������������pf��  `<���櫵zQ��n��*���2ROj����i��i�4 �  C��� � �R#4   �� `#  M0C 0p      C@       	@����T �F����1�h  �HM�jd=F����� 4A��  h ��&�4��C%?@�FL����ڍ�i��� щ���"�{�5��ѶF{�1[�s�Q9�4cI�̢�\��%U';�jj�(s�HDN��� T�Tf�R �!d	��P�(8_Zj!�P`d�n�몊�:U���N�)*��	�Mt
��4�E����xm'Ė.ߘ��)���JQ��%��4s�v��|a\�z������e�=�F,h�L)�8�llI�C���(!=��?��BC�_�l��&��D|���vzj�h|�=\;=����8ϧ�S �$�i&Wɞ}EmLĂU/�]�q:/LAq㡭�B�E{'�7�)����%��,��!�(?��F$���E
S٥� 4V�������?!��[M����m�PE����X
 $��7�$YCd��tqH��ݖ�@D¦#WD������kѯ����	I�k�a~�܍�=��7�ZXYǆPO�^l5�GG6~��18b�=[{�ԑY�㣨k��}K.�g��Z1�L����RbE������P  ��F x�! �DP$8�!��Ɏ � r�p��}���\��h���LƐ�ȫ&��n�&�nt85XMĉc����v�W�h
!#=n�ס�*��f��������
@�L0�,��X��'(�e��L�m����+����{VY��4Ġ]�6�1�9�rPҚ��y��qz�h���x���48,�le���Yp�T�|�$_� [�d����9�y�OX<�@��+_��w*�焦���F�P~kotm�u���Ka�3��-t�Q��(DPA��9���C?9@�檼��D&��#���@��u\���l��4����f��@$V��[9"h:@�	
9� �Y{��YXL��n!�kx���]�O7??k�d�+,�)J^lد�����RR����iI�
��4���o�f��]D٢=|6��3�bs3T��Hʤ�2˝���n��\X���'	��WLZ_.6�qP��`�ί��������BZ�t@�Xv�+P��w���0T�L׸��N�]��V��/C�Z\0��6j`�@	.ȍ���+�T��xiҁ41R������4����4���I��Pe!d�}�������Q��wæ
������;B�W�-ۥ?q��tϞʐx:��xY��d�h8PU��Ķ��'�2؜8C
�-����'ȉ;�[�r-�Z��Ň�J�O	�U���u92�pL'�3&Q� ��ҳ%�im��7ߜ�g�=�,Y�_�N�WB��9�@rg�Ъ�/�Z�c�7
��L#\��;Ȃ	��W��I ��i8Z*���2�]��_�D�	\.j��{��+&��(��hZ���ج���BN��&��t�I�4�<�~�"�+��<y��LM4'�e�zw�߱��(��80��Q�y)%y2K�x'�ƀ�,,R�g$�"WR�K�Ov��	d �-�p �q�a-��A��Ą�Y�h��|��[� .1��#Ic�aG��DxIg,d�h��?څ6� x��I(�fE�"$��k�N�
Ra�������V�q�V E�1�g���Hd&Gܡb�&%�C�x#D0�]#2ԅ���[�D��*&b�(C�� y@,ۑ!�q�,���mm��]i�p,�L��.����zjs�����\�aր�ojri�,��.��p����N@�s�z�SX�u쥄N�
�&�#���/��i�&�p����Z����
bdNr��[�>��y�%f�r!��� ��.ē-V���l�Y	(1" $�pP�J����TI�q�_��"c�^	męC� U�g�6D$�ΆCq�ϩ3`U�S1+,��dwj� H��
68�m'�Z�WD��2�D�'"c�"�w���6uA�>�	�(���P���9��Wt�f4$2 ����w���Un�AR3�RlAL9CR���,����c6�"�
�=�
PH�<�x�B%�]�te1�>�^����ӖYA�Hr��$�8���	��(h�|��f��d�qn0����[3%Jd�ze���f9�L@�d�Ը�x���:	���x�YC5�݈�|�K���IM�;˳k,�o2O^$�^�;�~}�K^.�d]"(o��o�M	�[f),�& �^��d�0���he�3�ZXU..'�("�.�Zf�gWGd��CB`oEa45+�����(Z�&�� H����w�q�� t���<�	ǀ��9І��7f��{D�J���齱f� C����tŏ"ѥ��a�(C�&����*�D$2d* C!��R �/��Z�Tj�����$��C�d���@�D�CL`����)��#ڰ