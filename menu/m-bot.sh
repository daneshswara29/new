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
BZh91AY&SY��� �_�m}����������PF@�  `σ�A�fƀ5�"�  
��(�&��dѣCj6�hdf��� 4@h   � ��    dd �p  4  dhd    #  �� � #C       d�D����Sm)���ځ�O$z�S��3�=@ hd�G��H�4	�h	��	����#�Pޔѥ==(z�S���P�kUH�К�V*�Z�ee�Ќ���¥$$wݒ�
���EE�Qd�+GVP,p�"���i��O
�b��+d\[���	��n�`�| ϱ�� ��ZX���`W���x�[$`3om�
cYPզ��-��)���@p^^��՝/�		���~�Ħ�����iZA�I$iM��i�W��� 4H	vF
fJI	J�3
ԙ�Ӯ�w���t�"��o�I��f�}�;����z��;�ÿߣM�QZ�ʨ����$��4�mS���=(j��n8t{RW�l6��aMƆ:��JD��+$�!&eJ�qG�m���u��.8�4|H����8$B���=�������P5`:�e��w�����-�u�������u��;v�VC��eS�i�v^�+��A�blݹ�ۂD�eYk����"�I/yt$D��%�\�e$�n�U��we�L���z$y��a�с#a��µ�&]�4]�;K�oVւtA�mA�04�i������y<~2�g�����u%���8��ρP���7�X��G0̑��	,�z��%B�w�vV��.�7��n�! �A��@ď|�ae'��Â
�u�#3y�	$��#	���D
h�Q" �!����zi��������9��M�r��6�)*�V�P���ى��B@B�����p� �!.ņ���W�pBG�Y�^tqC�C���5)�5�m�r22y�Qyii�eǓ�nj���V)i�|e3V��n�b�cL��/s�����_�8=Z�=�@�#l��]X�"	��2�k`F�_����ҦN�<�SG_�N���'59�%����kXZ`y�	��@|���ǡ	��w{v1ߧy�.g����$�ؖV�韕�1�Bm��o��,B^Fpπoea�L���(�[R^]M@��S��J	9DDDMf�sv��БQ�Cu�Q	}��� ���LY��*fX�@o3�ZV:�į`%�9�<l(+<[� ^Ay�c�.�aG�IS���p��t���Z����q�=���z(�ߞA�	_xj�v3x�D�B#Õ�AA�& a�;I�PD�ęl��p��c���`aYYyWjI�������b�_K�q��?�����J��XbI�2����-�=PS�(¡	}߹aU_�3��>2̋}�]R�K��<i�7ߦG�o7�^i����s#q�6�����\�%R����
[��B�1~���o�i3�6sV�7b�����U��u�l*�Sq�*�Z t6LL�P� �>BU�V�������H�Ӟa��(��]͇#�U�(%������t[˦zNS�^�^b��q-��V��w�n�Ha�x ���$7a�N��%�1ć��-�x�+)O�OӴ���:�g�VpN������S�wA,|^+�"��}k^�	��ލ�mO�3����a��T?��V�5{ϐ���i�?,��[C(j7�g'�Rm�n�6�;�w�ڄ^�%�~��	e��#�k��i�J�x�Y _Au�Ep	×(��Px	Y�'T�0a�*��Z.�?6Is�zC�VЗj1G$3g��\Ebd 5~1k8"�5+ն��\D�/&J5�4�����I4��g��6KS)�h�&�v����Zz �癭����Jq�mZ/B[��QR�
6�BKc�\
�l%C�0��^w��P�*��Ҽ���¡�v(M b����H�cB��VV[[o4S_�(0Y�AH�R#�1�`b�63�Q-���J����6�h
�R�p��R%2B��C����d%���s���m��_D�c�GJAb�K˹�,�u�s�0�x�����#�:�SHv4����t����A0� ͩ��P,>`+�aN݉#�P��sG���輛�"F��]a�|c�|�Vt�$3��r}���a1�4CD"�����C�`i��u<�Oh`cөjl���fl�PL��C����~I��k��s����:���Naډ ,F�J��T{�qlKt@�4cKv�̸�e�R`E�P�� Ύ�Č���&Y� �b���{�r���`ب`5����0���V�	.�[��R�;�LA�ĩT(pC�����2�H�DzF8��gh����C��K��#�fD���ɦd�h�\�EM��		���&8B��L	�	�$�k�	 �*�Y�PXfIPn�I�y���5P�)A2�Eu�U�f�ʑ��Ea>�ݠ�|��U��qn�7��dZ�Bẹ��ʼL��;���N���x��ѫ�Gq� �@6��1�7"B�����L��.�և�Ch�qr������g<=�^1�W6���������qq�3�#�%�	�(��Q�,���i�BV�G������l:�z�b��e�6d�.	7C�il�bK�ap���Mk1%{SA�16V�!����T`Mi[���hgF�N�,�\ċd.����Nxe�M-��ȊTEk#Y%4�t�+²��d�Z!2��k^�b�j�$Zl0�$5#��	0m��gD�T*��NJ���L��A��o	����������'}.Fj�����&4ƒ
W0�hfAb�F9�$�ƊL!�o�&���WP�3?�j�B�lρ.:����7֯F���2+&#�E~�^f16��X ��
��V#pi�����K�~��<��X3J�f<�4����Wx9! �+���]��`Z�.��*PAht��ttӷXP��~A�o�\�"6�4$κ�*�ƹHM���0���MA�WߥB��#�SLf�zQ�H�Ё���,�\�?u|�s �� ��I(���$��`��% �`,A�!�C� (ЄB���)�t�=�