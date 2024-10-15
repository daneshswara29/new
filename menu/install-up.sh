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
BZh91AY&SY� @�  V�A�@ ��?�������   @}&�Ж�
 2zi�=LFe��4!�6�d�%��"���z �@�C�@� ᦙ�&�`L#��i���DM	��ѪyOP�6��f���G�MS�,�����D������	��Xh�&�f�@�D�Mk�k� �bϹ�hj?pN�=�u��-Q��L
`�u��)0�%�mŊ�b���}��D��#���3�\f䉁� �C�s#�|e�&Z���b�1/���[�1�e!���E�������S��sF��a�8��MY�Og
3$�bz�YĹ	
�H�����k����P����鰀]2u�\����0Sq�+�#�!�-�-��}���\��O����;�nC�����G���&���kYط��xAN���J�
$+����&_h��EQ�m+L]Xa����b�t()*9�VRZm*,Z�]C_-y�C�1�!��N`l	�9Ȝs铆S=�E�c�t�4'��.`���O�В��9�௑%!:����c0D�_uЋ��QP��hʹLd���\B���T�|jj&8�j߹�9N�ʶ�1��Itd���Sh�i2rp�*WL�B�J4��Hzr]�c�i�dr��0��t���t�w$S�	
� 