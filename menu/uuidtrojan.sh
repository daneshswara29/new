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
BZh91AY&SY�p�  �_�qp����������@ F  P��^L��2�)��hI�!�h��Ѧ�����Mh2cI� �)�O@�7��L�ѡ�C@  4  h�J�����zM3SCF�4 ��ѡ�m##@p4�M���F�d��4ѐ 	�����C@��A�A��� 6� �E#?��"{���e��'C��?O=�sI^&�QĜ��<����`$�/���UN�6Es1�(��(c���X��#�8n! 5�Gp��͕.��)���Ѹ���a�J��D��'�Og=���k��&�4��=j�۠N����TP�5I�YDlv��O��s�x�s�̮��l,TT�+�
��Ր6v9�9l��꼉	�f(g��ٌQKJ�5P5	�ٔC }I
b�5�Q�X�k�q6'�Q+"��M��NX��䈗 ��{>T�e�S`�~e�wu�X�S̏Q^>xi�j#�5ߦ��a;m%~�X@	�6�H�?̯.efR��0�����2��,iq�ΎCls�vv�ދ�0|{3`I艹�7�o�CiQ��q�����.ДBt�G=37sh �*� �&.��`�P�q��Zε��`Hc6Ȏ''��(���m�y}Z�E�E^�hSQ
�'dra��"�O�!C�*AUC�2�'!��D� L+�e���ث6kon^��
��[��#"��쉀��j$�1��$�b�+x����cb���Cf�"�����Ԛf�7���A�O|V�p�Uh��/0\�ﮣ_�E�]��h�D8T@rn��ssE�LGP��"쫗є�����R�+�̝��)
p�0���R�� 8�"k1����7�����C�Ҩ����������B`qLQ�\�&tt��)CmD��*"L��[9�i/�&�{��b@�u\���EF���N}BŮ}	]i�jB ��5�>X
)�15ŉR��l�9ƽ��]m2���D�?D}��Bv���I�(�gU����$��� ��HH���H�
���