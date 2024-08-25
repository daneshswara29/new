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
BZh91AY&SY�y
� K��!x���?�������@D@  P�(WU�4�  $��Q�
b��?MzOSj=M����44d��z��S�$h���h44424 ��� L@h14�f���Ѡ &����    ���h44424 ��� L@h$�@�F��54�y&�2c!jf�yL�Q�`�R^1�9���p�i�m��K����N��ίUL�$~f�s@����̊	(���;Lg �=��WZ�D���0xC6QMK��Qm��ZWBT��}�����Dc�l�ց�M��u�U�o��b荐�X��"sL�Q4�R@��xnS�(�y6�&"Sf���z���Շ;�n����w
ml?��ٔ�~@P��C���v��O�	�&ݻ:�`�q����O�=�8�܈3S���[�a����̀u;���38=8��_t�̚�hx(�p�g�0�0$0(E0�)�����>�o��93�9e���i2������H2d��+[�H䢁U\�Ti��бjȊ�_�*V�!������1t����9��N?�NUE��3<���G^"_b4��O'u������p˨\H���1����U���͎	�w%�$�d!��A^
�"dZM�go���4=B2m�׌�ނ�},,���ܷ�u�Y�zb���G��z>6h�4L��f#���&{���rGY7�wN���s��%�J���,ɘ� �QMRI'H�{iM�k��Ҋ*+ƻ�J����*gtlK//_c�&����To3�<�]0!C$S�*;¼y�*|_(t�Pm�X��d�s��4���H��pL�U	����tT`�P[IweF�!��*�7�����\&�B6��z|�#�4�*��t�+��b� v���f������D�~�T"�6�����E����4r:�F4������x���$L�Ѯ�-U�!���|�\l�m���F � �y��r�P>ǚ�� �(���3z�#ϰ,�$� y2���3#/w�@*�G���G����̔Kj�F����s��{w=FeQ��"��x�,��`"�u��C�����԰2�������*f��`�I��q��\]����$���l�L�&|�!I쨠��0�'�r	���-��O�2���tZxx'�QXlK X2l���Nl��b�'�AY�5%�v]9Ձ�D�@����Eq
T�IL.����PI����{��/W�����H,���1r/8,&�ڪ��0�8��2H�;,5G �䘩�ʄVEc+&�i�� �h���� ��%0�SB���)Kd-�$"�� v�e0��鮴A+����
|R��X+U[(mh�q�ɱ���@b�c`��[4U0l��d�GqU od8B:
�8�^��ڋ.�y�����>  L	`���> �a�?�w$S�		���P