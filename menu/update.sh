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
BZh91AY&SYp�Y)  �߀ ��7%�*����P�y�( Q�z���� �� � i��l� �h ��4ѡ�� 	� �    ) L��Ğ)�i��h MR*i�=Cd�$z��4z��  pp	a�sM�U:⏰�o*][�E,P���#a��k�5d��G�$@�!"���D	'�D
x�      �������k[]G"��qы��[������J4�h�먑R�
=�e�L�p��$�$ 5d�
�P6�$ă�$c��P��@�bN,��z�m��BGG�EX(�PU												�F� �F�D�������V��6(l<-�u��J��a��d�A�K(cᱨ �W�R���(�f���>�[�"��x�!�� ������T�Q����j>3'�������T�U��Q�t�l>:�����3)B�O����y�^�mK�ƑF����=ǁF���I$߃أb�w�y(�Q����!"t"�V���y������ak4.  `"��VCi�Tl���f,e��;����@���"�9������x�򸐐�A-h�j�����L�����nh���[�أM��G7f�0z�&L�{�ם���Z��3Z�3Σ�kQ�^ ����l$	��Ɋ���Jt�L�����4q8��plgє�Fꢍe+sS[G&�C�r�m���^rI��.�I"z{�=8�N%
:��&rI$�f֣�GZ�:�������s�yMT\���]��BA¡d�