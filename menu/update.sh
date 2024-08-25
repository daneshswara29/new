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
BZh91AY&SY����  �߀ ��7%�*����P�c�� xEMJzA�4=@��ި ����{T�   h M��� � 	�   �h��b���M'��4�e4j���M=CM1 42h4��?x:��N1����s��\�[�jX�<Ѩ�"#Q�`s�0�n�,<������	)b��     )nz]D�}�6J:�˶�|�ġZ�Y�B��F/,Q���lO�g+�a�U
1!ݱGR��Z)��D�9ޮ�P`�1Ӭ[���~ �^z�#�� Ԯ*8�+	�(��(��<�&Y	�!(V`��(�d��)���B>R�`�6-��A��9�G1�AM�Y�Pq��bQ�?S�� ������FQ;a!͹ ���"��VI(裱�[�|�G��5[�u�F���G��0���Ϥ̥
M��B�&���ܖ���"��6��
>G�G�I$��Q�G<(�(�Q�۵�~RBD�E��}J6(��������_� ��-��q۲�9.�ҥ�-z�7�?1@r	�����k�V�4b�C��Q��BB�	sE�eI	����moԣ{E���p���9�9!��g����ݠ�x�Au�oQ��FoQ��Q�6(� i�si����t���F��*;{�m⍈�m9�5[Yלe/Q��F9�����GAŽG6�[��9$����$��>�����"I��F���ˉ��I$��(�Qޣ�G����(�{��M�����]��BB��cP