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
BZh91AY&SY�� �E�@ ���?�������@�D@0  `��'��î��=t @�H���=� G���  6����P  h�����O�=L��� ��     CDT1=&��4&	����CM4a0�!���QFOP24          p4�M���F�d��4ѐ 	���F�2�D�L�S��zji�z�Ld4�=OP��OD=$�!B��@����Bʨ��|�C笶j*��S��F4b��gO�3U.��:��ZMt֯¡*�!��9��H[��=�p+V�Ƶ�.��6�8S:��s�z�!��A�ұKt�6�p���J�Da�{g����g�a@���<>��s-�h��/¯�N�90r�T�t��s5����J������.�ē������g�z�������    @іU��0�}��mϭ1����
��T+Eϩ(I ��N�$i����}o.a0�}�R�JUB&��bg�bgc�!5��$	��HH2^�:�Uw��5�A���l	 DI)�\޼�饪Vk �|-*�3)����[�\���{����ϩ�Y
!��m�<��%c��z;�>k�w:r�����Y_��!S��}�iED�֐Z�G�����k�@�<�ڼ�e�v�#��5S�G��+6� ��-� >Zl��KmG�R$�u/�B��y�S6kbɞ�!B�!R�11H��D����e�Vie�T�U+(��US������)k����6a��͞��qb��Ay��z'XQ.$���.�sm� 9��\Q
%+�Q�.&<�1 �w:�c�<�fb\8Ug9u;1����v�e��}�v�ٮ)�Q39F���A�5����~��e�?f�./�}���ϵf��#K�9\�zڙ����7��>�]w�c�<(>�i���M��DΟx`�Q�L=7Ū�[�1��J��4��wJ�*�����ҧ�vH8e�ҕUUXK�y�q�d����ڟ1-2�Z�
�Pj�ӣVS��n�_�����ᇲ���L���߶��K���vZ�X Ri����v�TF1f4�h��7�{t���
KRREpG�U�	��fYd���"  d�{,�cwwO �$��|mܼ�)Ƴ�J��&���UTWE@�[C+䐼F�]wU~M�s��G7.�;�z2Q%"QTF��W&�)5swc:��8N.@���3�d�������L6ԜS\N�kL��Z�c'�[{���.98ʼ]��UUUR���������ͪ�I͈�,�T�y����M�� h�QJ]KR�U-$'$����Ɣ�UJޝ�1�����H2�i��k'o�f;�� [Hj�δ�i޾:td�Zt�v��e�����Z�)m�e��r_=9L�6�⸭�R�U���*�)ƃY/A�i���774�rēX�4hŚ$��������&��i�IJJ�Q��c�[zA���Ւ��߁RgA[�h�;ɂn��'�0N����JU+%�n���&i�$�7Ms:8jK�H/5Fd۔�ȳD�*T����4X��c.�]d��f��Z��AUľu.N�gҥj���i�AtI&I�M+1��4�v��l�(��UWYL�b��H;�8��}�[��/��Iii�5*Lɸ���I�lt�Ƨ�� ��JHJ{�kC���U_�]��BC��