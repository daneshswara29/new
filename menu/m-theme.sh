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
BZh91AY&SY�/l	 V� ~���?������@ f�  P>�٬l  ��O�O&��=@ ���CM4�C�    q��M2h `�44 �  L�h0�OЦ�� � @   � � hd�L�  M &� � ��L!�Jzb��I��G���'�40j!�G��%�}�OP��ǥ�l>
�D��d
#� �(q�
Ij�i������UTѶ�$Q9|T���z�l�D'��>|��,A���s���{c�!�Ŷ ��L����W��	�(Y���nb�Xݳ%��ffm�� �\�����a< R@#t�*�+9�uؕ����iU0����y�`�� �H�n�$Dj%�C��Lqqw;]�c�Ç˖	û_�B9���
�e���i�����Ҏ�9�*�u՟9����<���Xr�e˧F���l�����o�ק�� ���.@����t)@��	A�iEy L"}�JI��$�6�I$��|$�3MM,���m��m�޴��I�P��ʂJ�p�� �	��8O�]$ַ$Gv����4H�b��">T+�q��^l�T�b���Az�UP	 �6�3i�k�l��Y�#?@>�w�d�S{%�J��\p�-IPJJ�̤Ddb�͂Ҏ�D�-�A3�[-�`��\:���"!��el�	�P00/ra�E�Θ������(G{�w������Y�}d
�>��h�gw�u�3
c��)�8
2	b�N�g�B��Z}���d������l���� O��&"�X����C��0K�n]ʗ8�h�`j|�ԑ�����zI�uȇHQ�P�ϴ��l�"E.�ve�H��C�����`�ݘR�
NxϿMqV��%���"��b)��J�+��##�u��� �P�sYh�D�_���S��g+��;�@�"hD��B�B��͆�\R�/hdu��]�=���n�H&$B#�)�Q� X���� }!�	�TR�=Y��UIX@@��H�
� 