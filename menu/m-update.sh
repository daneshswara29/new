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
BZh91AY&SYA��� ���E�@ ���?�������@�D@0  `9���^��vt`�WCJR5����ѡ�  ���i�������44�2  a1���� �0F4�m���hCL�g��jz�S��   ��4�h �BLF��2M2i�~�шɦ� i� � �"D�F54�=�4ڞ����A��4h�� �=@�!P(f�0I�?g��7��\�Y���I=�M�i�%Bd�80��igA/.���+��ʀ-b	"�j���"���$bT�	��� (H�f%��u�ñΫ��[�~r���+^|n��=m�\֠��BӫV&8c)=�:it���Q�u9ۛA�㐱���/��+�?j�U�
T<�,ق���o��a̛K�W�       9���-IŜ�)��e����o��H�(z�L��l��G���25�h��	�!�B�	�ȃ� ��+�0���ј�N~~�:3�]�8�{�
?d	�MA��2���8Et���=��Ր�c(0iq�$r��������S� 4���;�TGM^p��<�ȃw�lx�	>|�?Z�i �j4`A�P@.����$��$��(6��}E���K��볖e��^P�O����R�0�&Nۭ��q��W&\HB�!B!6*Ф��~&�Z��)�B���lv���M��H��;�us�V����a�ܥ
u$�̻��/oʒR�7�� -Gx�"Q7�)�!�f�) @m;w��5,$���L�D��t��$c9��zKP�7Q�BÑ$�V�vѩ���gAnk6\P�3���,Ȃ�1�� A�g-m�y=�=*4v:���}�7��U������� kP�p��q�U)'qV�;��q�Ci�s��U�I%
Hy�F>4�@ �k��I.l������%�U���i�}�h��Jw
��rN�|�v��̊��ָ�U��ueR�ξ.�Ř��}�"C�"��%)�'�9��p��>iԖ��W��V`�AwP1�U�@�tɾ�90U�,YW�!	$�I$��ʽ'�̫am,����7*�*��P��@��
�~C ���%[�k]ӭ��q��N��^���F���[��"`NE]�@�]Qw��凜K�27EU�"�+�i� x�)��JP���/��b������61�c*�����*��<yRI;Ql��6CϽ,����E{:B��$$(*�G#���V��HHͣ̀�{�� �W������|�9�Zh B 55��>#u�
�6q��~́�D24"���4��`��L���1����VUW`��w���d�5�{ܼ�/ ���>|��-�\����U+��[��(TP� �͆X��tLV.
�oo�z�p0�:��q�y�s���m�HK�s�Z�u�\Ű��8F���pU�CW\��Ո�3���c��I+�u �j�2I"�UU��;��p�Bh�N���V��J�ԥ�.&��$�I!	$�HЅ깕i�W�Wo�ɾii��El��h�Йoaq�d�t �x�� ��H:è��` �m���H�
3p3�