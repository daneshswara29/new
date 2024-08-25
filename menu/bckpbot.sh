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
BZh91AY&SY�  ���g�� ����������@F@�  P^u��NrŷA�4"
yz���F��44=@ � �h�M@2�)��i�O�Ƣd�M �   �  )��$i4z�!� 4 4dh �  @�C@�CM 4� �� 	&�I�?MO@�T�?B�(��G�����=L�P��5�2ijA}���\����1�&~�4	��Q�K]��7漭G���RQG߄���
���y�-饾l@WU]��B�e2o(�R�M$2Px융���@�Z_L���JK�䏄�~|����˚�k*�튢�z�� I��B�RU4/]��Κ��v�#f��=��pƎH���B �Z�.Ԟ��xU��]B�3[z9�a��2A(�x����@�@ʐ4f��	Vd6��O��Dv��Hc�e�0�'�i������ |����y$Vt�� LIb�øW_w��f�B��(Ǟ�F���4ʬ��UP�4j�����iMmRDK���A�w��Ԙ��gd���`����l��-<;�l���sq����� LѨ��ꁴE����6�@�\�,U*O~�ͽ�"��7��H����6�B�E��
h�]�{R�ɗ��U�r��<iOv&�1�����On
��6�u��&��Q�`tF5]��:dJ7I�M�$�hh���t��:B#% l�+�T�TI�V@�t&�N�6 $� 
�u��*���9��-�9����+��M�8�%��K�Oe���(D52�5b��{d�Ef��Hi��S�^e��ƴ���,5�xB��,|*����R(����@�(�t���@"�L��-O[�	S����� �B8%�Ǽ�l`c�7���[\�v���1*H�M�U�P@�*���=��
4ʇ�E�$�.��� �BPC��k@[��\�|��%�$ppR�"hf�k5t��i�Cl���+��uı�`{���cɮ�j��4�	V�fhY���e�Ek�a"�7q^��/#ZY*EG�H�ɔ[Qw^a,kq�]���rnd E��2JU�$a"�����Gܚ0�[x2�sj��J��=� H�E p B��K@\)1� f�t���ٺ�p�~=4��B=@�P H�� L��ޟQA@ DF1���; _3�rE8P��