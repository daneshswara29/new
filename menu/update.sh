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
BZh91AY&SY��O  �_� ��7%�*����P�y�l�@��	� L � i	�'�OP  � �4Ѡj����A��d�#F!�P�j<J~)�m@��� ��MA����L�3Q�@��  1�����$��A�9�̵�f������R"5�<#F�@%����9Ca",Sr      "6�=�gw����G(�GM[��!([�����(�_���Ո��F��ewT�n�>�E�2���
��j����}�q�w�ݕ��=�]V�PZj4����A�:�k�n!B�!Ez(�R��J?uTh�$������(�^���ԣ�-X-�����H��(�4(�������3G7>ʏ��V�x�ry��Z���[�&����d�S�G��;�}�W��U��4�F�9��v��?m�b�ys��EM��i1>�cz\?5pQ���b��y�q�I$�Ny?���:�K�G���k�䄈1؋B�{mQ���G����43 0�p�kr�1j�A��6l(�eg�i�q����TG5Bs�+b�1G1��(�����A/iF�a!3x�<�v(�Ҏf��7��p���:�8���5�MZ�&������G+��G��Q�6��0jB���$	�����F�a�J;}f����ns;�J973�(��G"��Z����z�N
:����&n��>y$�4�����\�$��4(�m���$�I�j���=�>v���Q�7�P^��?�w$S�	�L��