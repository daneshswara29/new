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
BZh91AY&SY.9�  �_� ��7%�*����P�s�w;� 2�����2zi4 h  hT���(���4��ѐ4��03�R 4�0�= ���i��D�E6?#T��= 3)����C@ @@ h ��s�)�� 3���~�A]��""�H
L���NwM��7Z�qmf��/�["�\����0��3��9-����       i�6\\��&���?VB��.���@�A/á��%$���Oe�JJ�]���.�Ր p>�`I�d�O�I�2T��y�}iBE)E�<��е�� ��H����+��
g@�$$$B�!ض�&	-�m���	�aB�[n#{�[k�ԪO %M��C��C�� I.�~����8�w��v�_��3U��������s|eS�$;\Q�/�*���%]������>�`��8��6B�[��ګ�{���r;��(Rm�����'S�^>�4����e�2U�=J�c$�I'noU[�tʋ���W�v�1���:�
��ܫ��p=GF=|�b�N�
�X $��#$�"؁��H}��2Gy����2��p�Z�*�F*�u=�u���ES��*ʒ�3[Ž� ԫ��Vƅ����8!� �U����#M��SF��Ѩ�x�@޻�s�U��v<U{F�]WXD:7�� H����o�Q`f�����*܏F�c�櫛{:s��*��*�R��E7�u���Uj�� `i%)JY� d�I$E����}:�[�Y$�uU���줒���$�I&�]��x��o*�j���ȧ
�3�rE8P�.9�