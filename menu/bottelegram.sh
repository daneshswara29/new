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
BZh91AY&SY��[  ���1s�����������@ f�  P�Rr�gks\vͶ۠p�D�D��6LMG�S�y#�#�bi�	��Pi��S�	�z�Ɣ �P���  @ $Je4���L�����6����i��mOP   4�Ɉ�� �L�  $���jmi
oE=��z��i��jm@� 6�@yJ�ey���çb.5����x���j$jM~X �4��$�G����S��I8&���+��?8���<���|����-Z��g�V�`��j���x�\҈rg�8R�e⭦�- ��m�9�� ���t$)bd3*6ؤ#�K���5]��a6k&_��y<�r9"�$7 ͣt����J�����Oo���� F@�`Bg��X�ͩ>	J���3|n���ãM*)���$�Rӆۓ��A��d3:�n�%C7n
P�{���E��iÄ�� l02��忳�?��\Ԗ`�F��}`ښQy�Z���^7!��^��h/�3��@E(m�c�HM���ͼd�v�dp�yoQK��@l%a"w/�e}#$#F��rԄ�t��"-[E�L�}!_$���TIT����ʤV�Uf9�
�f��:��
���������k�Lt@�C�]�hbѻis��oI+���޷����S��/KMvC��P8�Z}5zF��)�Ϊ`<�jD�t�j�U�w�.�pu>���9P��%N9�^Nf5�t֑�8��=$���Pvo)����J�@Dͷs�@�4�Qa�QEr��I~�s
��RF¶���I!�0v<|�P%��D���.��OaA����w;
X�QV�ap��iL�q���&У#�C-�ie
p�Va���34�T��3�p����+>"�#��J��u�T�%���u��C������Z�c�+|M+��|@5�NS*���Pb8��+��ϩ����uFրԔ� ��WNc�\h�9Gq��M]l�S>Iԅ��Y�7U?��hs�n@�2��ZMY��q�aaDH߀��E�y��T�( ���-��E{��Kd�<,�ËF�9�`\}iRh;��4����
�CyL��^x+�7w7l����$Ũ(�q�SZ��i�u��喳����ȼ��HP����I��=�	��3ɑ��s<�]�9&�9� 뢈p�	�A��S^	��HM�x�NEHu�`��$���v����@�B!:1fM�ZF3��&DA�MK
���er��[f����K�%(c�MC�[\iK'�� ��e�VA��-.���o8�~��r{��H�^����(���)��\�`>k�E&�@6�qJ�Qy��3���	�*�˦�|��(�J-b��TSC�=��&q�'�8���@��V�%��=��s
��9)
w�T�H}⤅���
�$2�������&���y�4TZ���C��#f�Kq���dD�JA���%�s�_�oOy�C���L$!0���;@V	����"�(H@z-� 