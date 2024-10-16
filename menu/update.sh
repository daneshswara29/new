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
BZh91AY&SYV�_d  �_� ��7%�*����P�7���e���LH��z�������jj���=@mG���d�jh�$�$�4�ڙ �@=@44 hz�����5�M6�   h"RSe24�F�10�4   ����F���i�{V�q��8B�y��]M��:��ڔq�@�B�"��M�D�0wt�HM��*��������������2�����`ٳ	�B�=u�e���/t������g�d��hE��M=4U�9=( Q�4Q�)�_�D_��s�V��l]����%�Ure""��a�9��3 IQU�IB��EQEQEQ�I(Q���%�IB�
(��8IB�����9�&-i$��ۮ��Q"��Q�WI�Y>2�0\2vf�W��*���������&Hbl-�{)�ꪫ:�خ��tL�N��gMݘK�L+56�n
��d7���xm��J+�(&�Ru��MԜ{�e�
�S�R+�v�ՅUUUUW>�4���\`�5��\��X �W ���ƍ�s�9���5)���F���;���+�ĆLCf�p�Y��hѡ�0��E1�+%�r���,�1�GL�T�\B^��WJ�X�L��X$E��g46�Am�;�R�ͻ�&��g�Vk[�h�ol�v���m���x�&�di�V�5L0�$,J���
ڻ��5���2a Ў�������tp�[0���-��6��|c[.f�/�}��Zֶ,�S�UUR�ÊN�.�,�S��$�	&)�EP��ت��e�I����ni�?i��T��I{7	�rE8P�V�_d