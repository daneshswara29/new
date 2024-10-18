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
BZh91AY&SY�a(�  ���qp����������@ F  P��^�����ǂQ�2S�ALz���L�e=2�Q�h��=M�C@����=�~��Tl��� �@a ��M4�	��I��=S���C@44 d hM IOJi�mOԙ�Ph�      $UO!�z���  �4 �@h�$@F[{HE�1�4��}��@?*=��R
{ֈ@#ԉ�-F#�����xp9jE:����4g9ǒaH�B|UN���W�_�˭+��$��a�|;n�L�
E�n%�d��[��fW����1Ko�`�}�����b @$�b�+��~I����ۆIH����ƽu�;?b)�(΂\%�X,Y�@Ɣ�p��Cl���r�e��͜W�Cd���u�uDU(��L�M�Л|�2냒!�$������ y�`.Sb��S��'2=9�6�Ĉ�_w���`-�$Q�ET�὜���k���L�����!ç���Ŝǳ�Y͉	�P���=�?VG&��z�1�)SJS��)Շ���r�rP�徺��].�V�|�h�ۻ�K�c.���4o�Rq��h%��i-�N#�	0���-��� ��2.�u��δ��lt"�K�2B���vE}���aب����n^�(��
�C�?��T&Q�dR��&T��7���h��}R�$�H{\k\��Șۀb�6�	�i��.���³�
���I��=|e� &� �]5{�6�K�#�F�<�"Xs�7E,S+�~��6M��ts+��2q�8"IÜ�	�?O�.F^3�	�0I��Z#��Fl��%6�fݱ�D��G����WV�DG��
�N�-��8�M~r�&(��=V�B*"@z`/�"�pJR�)Sn��D���IR�a����O����Y��<Q@z	�鄗�����١Р��K��0����_`&�a����9�i9� Zb�j=.�a���)��W�U^���0���ĲV�c^b�-/���T"b]n2��ìt"�/3�t�#�$�� l���CG���)�c	F�