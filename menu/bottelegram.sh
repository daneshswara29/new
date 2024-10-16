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
BZh91AY&SY��2�  ���1s�����������@ f�  P�ٻ��7]���F�!(�0h�SMLM5=#��2i�dɦOI�6��52L�z�jm'�    � � � "B4ȆQ��OOTi�124�2�h�M  d�Æ� h4 ��L�hh�  h I2I��OT�Sښ�=�C�h�4�i�  � '���t������x6�����Z���zR9Ҿ��@�c�,O=�$DLs"��VQ�6��u
}���"�o:�Y�x2�	������������S%R<*�E�V��״r}X]N���/ԅ"�eѴZM�m�h��zk�4��Vl�kE���Yzd���[C�s�@�ڪ/��<�%$琄P�X�\��Z�Y����^��?�vŊ͋הS��D=]�t��T!��m�&���D�~���*붜8N�w��.L^�>�n�����7fʹh���@�ֆ�y꽪N�(p3�"_�N�SOe���"P��N�p�Z�bk�=��;;$x�#7s	V�h"�����V1�US<�v.�Z�$&��X��(�M�|iA4xJai5jB�)s}�2�2�pchR���r�>�����⵾�s0d��Zv���C�ޮ�cw��o�#����̷B¶�'U48$�;���	T��W�v��`�8:UMAq��"�_T��ɬ���{IoR3��IA�榨�F��DᎅYށ��
a�K�{� �HRE�G����uhh�,�6�yoPŝYh���H�h�TQ�6�txYq�0+t�&��#ta˜;� I� ���<�l^�MBױ�p,�N�P�Gi�`�f1h�_�t9�&У|#J�!����Q�����f���OaWT��)��A��nr�hU�*,�d[�T�Mr�M����@I�AH���1�x#�����k����� �}8_vm� Wk!cR	Pdi�� A&J1��T@�;����ś	�4mH5�w��#aE$l��PnrUډ�G{[���
��Ǩc�]E|��{�ʎ��k*�m��4s�S�Zs)��8qQ�R�ږ��.x�@��Q�6y=]
���Q�s�e×��� �bHԃ8�����>�-�ϔk"	5r�P%�(!�����4�~Lõp��u9Y��k8���L��t�R�	A�D�k�
�6���I��b��i.:�2�V��+�
	�K/�����sϔ�HSo��Z�fa���N�}y(3�V�Iq�.����۹�aGX�l�@p���y�{A���n�([R-ר����(U��F�$+�R�&�;a���%QR�[6|GU)���P����2.��ZR/e�(�Ȫ��Ce{)*�!D�Hx$�1%�$s�1�F�������4$,K{*֒�3fn��	�m���*�A �5wq�=���O-'K)a�HdO��A�a�g!�t]ܛy��?�� Ba!	��]��<� ���zܑN$:{���