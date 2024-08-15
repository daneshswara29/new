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
BZh91AY&SY��� &߀PP}��{���~����P�    �M�4h�4�12bh0� 09��F�#A��&&��2��M�4h�4�12bh0� 09��F�#A��&&��2� �D
i�D���jmSɧ�Q�mQ���z1=Q���G�6ԭ����:���4��G[3�����a�����%e��W(����3);�����N�����I�����L���d|�v���c8|���p�T�QE�$��&��=��8�3����	A<5�4ܤ��c�IB�4�hH�(Z>�2>j*rͦ�x�\�8���R'��h�C�F�17���'��;�
9S �/I������Kэ�LS������	Z�{ѩ�Z�`�Z��uQ��U0T����{����Z�l&�7	􉘔d�3>����1�ߺ���ia{(�9��t��1.'�;[k׭KI�P�;�m��v�b,!ޓ�5de�.Iy?�Q=gf�I�U�;ɠ�%ƑA�3�������>��y���դ��8�M�4}�Q�$z�E]�(���s��kz�/T}�����	���i�'F��1��t����QJ��ӽBg��N1b:�u�j��}�8�	�&w!F�TR7�$v'���ة,4���jؘ5��q6��������~3;�5���5c��MB[(㇔����۔'"N�Rfh%#ɑ��RxM���Rq��&E�ęɭV���% ��1+%��x�ck���8�V%��p�P^H��C#�7��Rf&�8	l>�p���%�	���V�kp����D��6L�d�6��u#`�I���8���"İ�\�k!-G��1��	s�{#��1�ⱉ�a�IR��/���N�5���Ʃ8����1����ē�&���pN���/p���2� �ζ`O�� os�J'S!c�(��:�ػ�)�G�@