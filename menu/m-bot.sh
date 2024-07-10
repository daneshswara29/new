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
BZh91AY&SY��p� ���m}����������PF@�  `������n��Y��؁�Mf6�T�A �&���=A����h  4h4�� 8    242    �� A�  � ���    �� 2���S�'�I��ڔ����b mb4 mP��hi��)4h��
dzi6S�a6�CFF� �44(L�F���h���z�C�P�@�e4��hi�5 	&�!Dt��P*�*T����ہ�S�	�	YN��۞���W"*�����a��D)������f'�@�Zi�%��TD���FT{#��8\R
µ�d��ƫ���%�7�d��&#1g�"��4*��sÚq�[v�+���1���(��|fo!:�L�����: M22�	E���" � ��2H�CZ$�"��}h���%EpoJ4y�V�.Ɠ0�(0�K2ի���5�Ћ����Q��:+Z�+$��{$����o��A�Bj{\6�<�t���!�+'���NR������P�.����+�]�w�.��V^��E����K�HQ��}�X����(\�)�R��O����ZX���q[h|���+��xH������j�e��M�����@5����@<��@���l-D�<@��\w�W�T��8����V�"GO��
'�4��0"k4�,(��E��=�34�vsa�g%4!n�*Z@����-/U���`�z9��{a�[7���AF�'�X�LG �#��W�����w��t��*\feay��D�p`Ɔ���3ΰ�*��i��Ф���$� v�I��$�
�|�� �li4w��(�~�3��O�?���	�>�Z�7����~����m��Ǩp
R`B��xHiv*��4eBˡ�p.I��:�aLꤻ�?	�5)�:M&���cLC-<�/��6����їw�?v�a;H�1�a��ew�5<п �3q:P ��2�Z�d$'wHG���;��c�m�+d��ӊ��o{I@��퐔��8F�P$9���a>;�cȊ��m�|�È�ϰ�-_ó��)f�-6�[�4c��m��o"^V!/8s`�vS1��p�j��%ס� e�h{���0"�B���-n��a��*9�6�З�z@P�z*6]��v�� K˚,(:�	ZW0؜FFF};>�]B���tO	�E�J~����I�JѶU�C�<���+�4�|d��eZ;�:�d{�)��d��2�Pm	�hB�v���`C�G�p\+i�k�(\U�I0;�mopl^����}��	�ĝ��qiRL������x�I�5�T"/���i����;'L�IoV��̟����G����p�8��$m4qe�}wf�QR�"b��]DE�b��f8�	A�����#n/DeF����1J삠�����P��8f�b��B֘�?:��T9 ���5����,7��10��60�5��f�Ydo�Q�-sŜ�����ib��ކO��6ք�(b<i���epԇ��H��Y�wK
Q��n���S�*8�G�4�E�I$S�ȯoǚ��/i�Z�U�i��Q�T���]�J]v��A�&`
������b䌁xJ!������:����;U��+�L�@� �����M�(��Xԛ�ጬ�-DTf��J���:�) H&����$D��6BUD$A�5��K��ťC�q���Iw�2m$T���X�$|<#�֔�Ž��W��)7���&1rփPD�ah�03�Uz�J���䳡���V~�R�Y�(�x X|r56�ᴜ`+L�b�r�s
�6mBK[�H
��#3� �1��B�L��E�N�QiB��fM b��j6�1�Ƅ?l�B��b=ƽ]��0Y�1D�$C�������0�54�fh7��_�h���RT�A_Y����4;XvK��BZH�R���m��j��)�k�\q�R��ǰ��`��xV�|���8t4���;E�V8d+� � _��wr�@V�xcE�
L;�
P�T=$|5$�ĝzH�k4�u�5oiW�3�n �1#�s��a!� �@&�Ѕ�������!k�K8��[�$�e��`H��t���F���`4j�Ɩ~��KqdJA�DJ��iBr=76%�ƁimЀ����fX�M���29�c��$q�VkB]��aM�0��`ئ`5���pH(G�+�	z�~9�7¦ ��T��� ��,�r�w=�Ѵ�}$� W���3�5��q����e#��e	���P`�QKbl�D��z��"hI�	�%hxAPFa
�P�����	���OI�

J� �Q�"s��IL�L�Z4�	sk�G��*� �� ��J��.�ޤ k/lh� ��r��K��̆�.,�&�э#�M fgH���L�B������RW��7yy;9�em�ٿ?9pt�Ä
*����I,�QD-N�pB
(Z �"!���ѱ6(KQ�$���j6�1̼��0�0L�\̓P��BV���+�!��w��Z����,LA��(�!����D0$�[J�9��`�*t��H�B�d5��๓>���e�� �Aִ���&�$@���'A��ȰBe��j]%d����D��aXHԙ����$�Hi2��SC�-r�����%��e�2��������'t�E�	�Lc��H'I����f�=��A	I��1ik2�>��hI��W ��"�Fl�ը��HࢸY#IB@o7�W`Z�B�X�M�TV����ϵ	L�b\���Icǝ�3��mE�_,�o>�F���$�wY��v�q�V6�G�v
�[�#��ޠ�%�}����-�$��E�z�� Y��Rc���DK�y��_ݸ�<�&�T�D�li�Rd"D�!Z��д>�qy�� ��Td
��A`�	0CB`�R��A0 ���!��
4!��.�p�!��J