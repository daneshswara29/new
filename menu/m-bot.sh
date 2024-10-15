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
BZh91AY&SY���� ���m}����������PF@�  `π@m��@     2���j2d�Cj�F���� 4@h ��)������Q�� � h �   p  4  dhd    #  �� � #C       d         ��  H�4	��	�� ��G�D��L=)�F)���1�fFH2I&�1Ht��	�Z�*��Z�	(��i�U1!#�Q, ��N��TZ`A��&IZ8*��``c�����O�"xP��T��qn�K�(-����*>����K��´�H'u�������H�f�ǚD�Ʋ��M`�[��SU��@p^^�4��.A�L>K�L�?�@�H���h|��XIc�DD� �� u	�D1Ny	*ё�=H���R��z�#y��)<ZL�:���}�ݟa�Q��u��>|t!%Z[k!$�g��T�V��\r?x��T��qãؒ��a��x�
n41ռ��P� ���Y$I	3U+��\6��/��u��\p�h�Q���N
�!F��ϟǧd�c��h`0��":O)]�.>r�Yqh��P���u���eg��1�+1q"r�g�u܆+Y|������x�6��uc�9�P�u�+��1s�Ű�'݌�-\�jIR���>����&x}Ox�z�a�с#a��aZ�)�{Me��鷫kA: ���0��7W3��OS��*�W�oR_�3�o,�+m1|E�H�s�_�If��,�
��_6�V��.�7��n�! �c45��?>yt��O�5���Č��D$��F	`6$p�&�	�Ɛ�G����$t?���(#�2�F�)��,m�+th�� qɯdI��hڒ���(g���h��FD:G�67�^k�~#��2���5�m�u�OQX��Ƙ�\y�{sT�ŁX��	�̴�����6�c���f@�{X�'������sխ�����Iuc�l�I���B�hV&������ح��]������'仴��Nc�Cq8&9�����4ZH�Ѵ�"�6�n�f��;��=%�,����Y�KU�:g�z�qP�m���P�s���3��Xw�1��p
*�ԗ�&�Oa���J	9DDDMf����"��"�� ���O�t%��0Ef�7���c���^�iX�\K�����2P�U����n��y���`;i���%O����,�;{,�9UA���d{f� ��Q��=A�	_xeb40�f�3��j9Ieڅ �ړ1p#P�d1�3.��=.�aX�O��ee�]�&�m�N��b�\{O�L�<���y����҈�)�?O��=�H�J0�B__�XUW��&|G�Y���xj��\�UA�OA��2?��}E��.������?���$�U�#��KvTH^f/�39�봙�9�D�	�xD�Tr	Ӫ��u�l*�Sq�*�Z t6LL�%Z"|��FYl�M�΂̴�F~��'�@����l9�W�P?���q��:-��=')�/a�1p��q-��V��w�n�Ha��L���,!w#���Qp������'g��ŅH����9�a�,=R��&���$E_ |���<g��~%�)����Y��/ ����4FB�!���> �o�fh�D ���AQ`<IIАLPʏ<�S%\�	��5R؄�j-w��F�.���?������,9ケj ��u�Ep	×(��P?+>FEUH c��X�E��Ԑg<Gpt
���F(�l�T+��L�_g�Z�����M"KͩFFM�T�`�M$�S���U�R���iZ��ܖ��s�[�+OD Z|�5���qI@�4-�E�Kq�dT�B������W�[	P��"��+��T�EQ�W��/,*�b��.�i�A���iLhC��񕕖������tPR=I��fX���L�TKh1�v���llE���U0��qH���!����j�K#X^)��m����}�������/9�+�����fރ�XZA�k�ʝe)�;l�V�p�A��� �l
f��� X~@+�aN݉#�P��sGZIs�M٨��a��4/|q��J΁��c��a3��La��h���(d$��04��r6{����ǧ%�`�U,#��ȍ��8y�v_��� +	�փ��H�:���-$���b�n$�)UG�g�ķDc@�4�d����̳�LTQ�(2��\H�,�	2�x����+�s���C�e�|²XA`dz�/�����E���i��\T�	��`P�c���&XH^TGp���v�N�Pq�	fYg2<��H�`���f�k��
*lM�HLm��1��DJ`H�6hL�%C_�$�T��egEAa�;����p���H-+�lV)���faJ	��I��T �(T,�2+	�l�G�Eb�:�! �/J�| ��ږd�^ �fV����7�_��x��їzG���wP~2�@�wH�ʚf��!jK���kߚ�`��f������x;ȼcn��me��< +VZ̒X�YZ�I,�9�04AM(Gy
�l�,Y!u�9�2�+O|X�⠃>"d���L�!` k$�V��%�X\�\�!SZ�I^����y&���0 T\eZV�~�ѤӦ�RIdA|	s�8"곥�h�$_γfBAZX�Z�d��y� �hk
�DC	��h�˻��xK	��hcT"�a��!��$���$D<�H��J���'%T�dL��A��o	����������'}.Fj�����&4ƒ
W0�hfAb�F:��I$1��:@�k!V`���SD�~��,4��ρ.:����7֯���5��Ȣ��/3�bn�i��lb7��ѹ	P�ĺ���'�>�ЃA��?M �z�(��HH9
�9��~�s�XV�K�w��B�(����&�pi��%���#i��&u�(�dl*	'���!4!�Z�_��HB�9$zJi���y�$4 lm����#_/SJk����?�	#��B�I"$ I��D�}�����0`���
@Bm4�.�p�!�ueF