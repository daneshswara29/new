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
BZh91AY&SY����  �_�qp����������@ F  P��[i���s8J)�LCM<Q�O'��z�S����ƣ�L�S�z����&#&��zA�      4 �	�4�������OQ��@��@P����C�hh ᡣ&�4���a d �4�  d$�Jx��zF�  h    4h4"���y�3��V�o�kn�~^q�Lz����h�akO	�j�)�H�r9=�,��h��z�+	:���Grg�zx[���C��UZh���q����A�OeW�{"���:iw3G��ñ��ڦ˲x?[�hv���I��#v�aţ��0P��藮U�#�&+��k
�݊)�d��<d2�)Į��v��bTT����Ό	3�A���FDU�7�XA�f/0oihf-7�	�E�����ebЂO��3�h��{�BrГM	C�0���G6y�Łu��}�SUs��H�\�Y�Y�I�4�cS_Q͛/��f<�%9E�E���m>k�R���!���?�}T��ƍ�]M��9�7/;���#�%�&h���tFy�J_	�)��2�f�^�J�bjQDR$��MLH2��W\�m�o �DU{Z�MB�ٹòH�?��~*J�>�"�Ωw��~F�:J�v�q2�����RD�u��'��vT�m��E��D��ʑDH{U��������l�?FY3W5��ķ�p�����S�P�((���*��3�ͭ�~u�2�\� 汣�R;޶d�E��e�Svj�;{S�Ј9�����+hxc�歛���)�k���Dg�Eڳ��#	�-�[��	[l�臽�t�4�856ԂJCU���u��	%�fai�؁с��ȐgalD9m���,��F�[����$�� \Q]���B�(��3UD�C�d*Z�ϖ��=a�����`\���6�A+��Bu���H�C���������	B��H�9 ��A�lCQNS�]aRWjR�X6�q���+�Vx� }ð��}��7*!��F���$�� AЀYWF/�w$S�		��
P