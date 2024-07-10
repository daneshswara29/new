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
BZh91AY&SY��G�  �_�<�}���?�߾?���  �� 0 @��b*D�SƩ�h�L��zG����jL ��$�4@      4�&�A�@ ɠ  d��I4��h��SBz	���@2�b6���=&�FC%`��?�H�A�2�Ŋԇ)2@���
�]w��<�F,nA	�x�y�X��f;�Xl�'$ۓ�>�&>�2+��q�7.u!��.iAB�#�����,|j�ҍ&���bN�M;)M�{�/v�t3ktń��S\IE���@]/՜"�D�P�}m�m��8j!*�M�3L|j���pw��}��P�KC����2��3M
O��Ͼ��lL��i��hIs�"@�s5�뼸N�޾��x�p�JB�BAݼڀ���P(�Gk�p���)@��6ۓ+Ј �d������JU��Qpvy���޵'n�dT��3�1��`-�r���"�XcD��M=ݮU�)s��ܰ��H�c�-Z&B\����0�^��p�L{��z͡ �uRk1���L�C590CMB�q����"���35	R»���f�B�v��(�1�-j��3̌T����/���n�S��QbC��{A��Xb(̋�g��ƒΖJ+-�����F�e��װ8j�O���-4��^���Y�3�5@%P�5
xŢk(��ʡӗ�Z0�m����=S[lH�=�"U�=�_|e\�H���ԯua|1"�M��8#D���D�� �Xv�
��I.�Gכ�.�p�!�d�