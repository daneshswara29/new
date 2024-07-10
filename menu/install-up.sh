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
BZh91AY&SY�+��  V�A�@ ��?�������   @t�ڵ��J!2�jhi�#LOSidhd�@h=@�&��I驐P@@��2d��bh�#0�0Mdh���5	�)��@�����h��`Ez�F��؋*n) ��-n$d�bg�a9���
q����B��<�LD��N�A"�?�k��!w�F8�v�h1k0к��V9�l��e�J�2�|� �P.��I���s��3����.KbOe�b�y02(�V`��sHu`�=�0W��pN�/��:t��q�	��&)�V3�����u�
���Ia%�S	��ŭ�\�>��_F w��
�;���j� �*��8|��I4��"
��UWQ���ՠ��@�߬����I�z,
�Jaȡ*R���#	� m��0��IR�3�c/�+yg'�4�TZ�ݶ[VZ�xg�a� Ŧ�t	H"��Pd����]�Pь�	��:*Rc .�0F�a��ܒA�d��*�c%6��K�=cE�CxJ!?F���BT0�L�X�@�|�p� �J�0�*.��JMO�\S([[��Ɗգ@|n&��F��6��cSQ1����Mi�;����ɔ�r�ň�L��}��K�G�i'(H%��b��%Daа1�Z��)?	���?���"�(H@���