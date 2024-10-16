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
BZh91AY&SY�`�k  ���g�� ����������@F@�  P;ջnٹ�v3a�dS)�ɦ�S#@ڞ�M ѐz���4J
=�=RxQ�b�4�  � D �ACji�dh� F��    �h i�@�L�0@b  I"i1OLB��ji�� 41 h� i�F�!"d�(n4Uz�<-�z�V{��y>��ȶWœ��1!{+"0��.�����|�3mث.jVd:F�*]2\�S�]�@�3�s�T<0��#ZTE�
H��E��
~��l�2�1��|3��v�����6L�L�%�(�X���܆׍��<v�w*����6ʈ���8�8�+�,����w�fw<`��x�,=���HC�B"A�9m?r��#�Er-������H����'F�E)o���b�&���xQ����%`�a�`�n�֡1�(eQ�5.����3MI�Mr����k���ʍ����WoX'
�AB#�!F�AгN�x�̘(��0��l�W<B&ox�Ԧ�ƷC�5�� �8i������ݷa>-cⷤ˛�W�#bF��v8��f�d'cA����Eu�MᆝQ����픣�}[J���Ft�Y����b�2�@<"
Q�g0�GL�jc.�E?P���\DC�GQ����k*���tއ*ҋ�oF>S�V�M�ŉ!�j�Jg�P���!�Ű3�IR�c+�^�Xh��-	c�n{�a��	-��bE eyp�`(�;%�D0Ą��\
�*fp��1I3�c�*n��J�
{��y�J8Ǧ<��Ɗ(�2�]�S��	����Ŏ����c��5F�1���H�+$pl���ʌc'
ι���F���L��w���q0e�*Ty�)L2�*�I>��a"G9"F)��?(эcPRf�R�r�	bn���]2���Ǹ~�r�e��T�lT�ffpɭ:�Ġ(���ˊ�h�z+��)�
�-R�R�S�D_b2K���(�Ez�|�0D��f|NzO�9"���}-p�B��y�4��3�J3
�l<���@���X��VF�RF�$��f�1� �O�� �`��@@' $8`Hc��7! �a���?  ����"�(Ha0i5�