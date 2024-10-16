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
BZh91AY&SYw���  ���=s �����������@ f�  P�{�q3�9;�]Z͸J!���2=SȞI��LD�Q�a��j6�4 � �&�G��&	���	�� ISH�H��m&�hѣ#F��P� 4h 1i���  � �@��@��I S�OI�)�h�Sj4�&M44   E`[e^LG���o>����P���f�����S����İ\W�T~�&������Å�V���몈}Μ"ɱ_7|��z��a�kJߓ�^�t�m*b�h�
�Q�N�h@}b��U)$L�q�d^u@��iBp�Ir'�knEn5�{�ǤQ�]i��Ҝ���C��H~�t`�y3���'�����p4P�*y|�)��>Q_%niY�2G}gNA��|8�g[���B'��3��-7`���r^���*Ŵ@ �~KW!�"͌���"��S�#�={!��RE�!3)�������]��Q)&|��1�,�F�6�l�$0��z)VC�H.�w(��+�&���
��(�.��k��F�2�����[~��6:��HL�5�x�߆�RV6-��pS�|��lݾ��c���*ts:P�0C� d������KlD��}�I�s]sk���9%�l ?\|��$��V��PD��� �-�I�	&�<�Iy%�Ӛ����К)o=��ؓ��Y�{a^���ڮu�r��1F�����;UTv&����v2IaM��mƪ�6�6���c�κ���f�7YˍHV zC��]Nf�!HNVS�KtR��]M��h����*&�{�fj�3��j.H,49�PQ<;�RG�`��K)�3C�6#.X(�
-"�.��۵��Hi�+�f��kN��A�pdpZ/�}D����19��L$-��2��1IlU��/D.�f#� �YfCk46jر"�2���,���~�?a^VF�KG&iJDF���9��,u�ГV �&�Rę���#�P(�QH�$	�)�|0�կ� �P}զ8�ʩ�(8�8������qda��e4��X޵D���$��":r"L( ��O1�O����qE�&�fS`��,z�Hm8$�`C=�j8�aeF5X3�@��4xr���0�W�*��!���v, u#`-2�f�%��&	3�j��o�qDfQIj�)c&�ŴH�f)/��u�z�i�#�RDD�&� a'�eU�� ��"OY4��]������ͭx��jr@�{4Hh�"[�U�� -�$(�"t��Ih0�2�:L�S[O+o�@&�]�X;�� 0ES�.�p� ���