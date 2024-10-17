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
BZh91AY&SYƲgW  �_� ��7%�*����P�s�Yp $SM6��a4 d   EOj�(�iL!�FA��=C@�UH�2`L	��A1 ��je4aS�5M��2z��F@)��)OP�D��4�I�4`Q�7&�ϝ ^@E*Τ�^�B�����b^PJd��T�p��¹�,�]�ʚ"�Z���g�/��2��f9-����  "     kL��1txL�}=)�dD�~���*�$!�O�D��b��m
 �P�J"�p T��0� �J AI?�'��r(堙�Ţ�)E�(��@܀ �K\��Jbi$�(ccc`�B�!�ۄ�%��ێ�p���!��p�!|S��]v�k� ��?	����>I�Ki]d��Ɏ�_�r���*�h���C�=�O���9BC��!�E�EW��$�૴g�^�o��� h���HZ�n=����״<��o�'��4)B�o�H[D��1v7���cH����?銯�ګ�I$�t��V�]1��uU��ͯ\+$$E�����[U{<w���_a\� �� �q�$��<�d�\�@�/�Z"+�wȂ�P5	��;�K,�,U�j;R���FF�T�����BU�f�� ��jhZ;�
����WA���a��hҟF���� 3u���ޫ��U�6�춠�!Խ���	@�� |*�v�ڋ%]�&n���n5=O5\��לe0U�ȫiK]��ͽWQ��V�G �o�I)JR�`/t�DZ*���W�s̒u5U�����I$�M���w��U��X�J�`�ħ
����ܑN$1����