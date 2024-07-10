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
BZh91AY&SY��J� ���E�@ ���?�������@�D@0  `9���W�k���! R�Hb�JoI24������4�2hM4�hhhdh@M  0��Љ���b0�@�2d�f����4F� �U54h�hyF@1�Hd�=@�mG�PD�OQ�mSM��S��d�F���   @	&��B4jOQ�=OSЃF��e�i�Ҁz�S�����I��M�_<g�CM6ёB@�ﲴ���I2�,ز.	�uD�2d8:�a`��r��U��4�"��b1*e��D�I�$`CQ����]�l��Z�K�k��V{�R�,z�ҹ�A�qN�x�ጤ�i�L�r3F����m��\uK��_��a�%_x�����48��K6�Kd$ɀ��.�>�EUUUUUUUUUUUUU[��UzY��?y�n�c.��<JG1C�"f����l�$u�"�̌�c0�R�u�(�"�(���*�9b��������ll�.;-?/g�]Q�X�U��J�&�3�r7��"�EDaI^� ��7�X�\�wI�_�?E��r �>��2îh�w�5�C����";c�$�ME	��@��{)�Q����b �(�VS�$�4	&���Z������J�-�>���8�����7�#MK�@�al�Y:2��Ã.�QEQEQE'
�
A�W�nU�oB��4)		�jI(1d�9�?�#�GW@A�i]`w)��}��?ʭ���<���}�Z���` -�x�"Q89i��t�tq ��;'���)8t0��$��K���n�H�r8����2��Vp"�ü�T+`�#Z'Op΂۬ݘ���N{r���v���N)�������4T�������K�>¯���W�p�`�`8����D3OR�v�hS�nS�{�9��V2��J���熍@Ɣ�����Qī�8_�ȵʴ�5�x97R�����]���;uX���θ�U���u빰ξNX̎$\o�{ ���l���?��TM�|,�gR[P�	_���P��@�WE3�MI�Ɋ��ŕq�HB�I$�J�ʫ�y��l"ͥ�^��ԇ:�2�-���6Hr҂����!dB�AV�Zמy� qN�$���LjF���Wu����I-{q�!w��凜K�4"��^A{
�q^*ȱ6j�(W�A�ٱjv�h�nz�c�21�c�1�#�9��!ʺ6C��Y� �Ez7�B��$$(*�&C����V�����G��8�8&`J�%ޱ���0q�Ei���1( kK'6y�y�+���_H��A�D22D,�
h<��yzA3�$!���9�YU^��e[�zl������D]���E��x>CjR���.CI���&��<
=PY���jK��=$X��ͽ��
��<�p샠z#p��7�m�HK�s8��E[�b8 yCQ�︪��A������� �
�1�c��I+�:���!$�GJ�۞�9A��M�$�7�Y%$�P�_%U��K��DUUDU^І
���j�"��)-d�p4���[6t4w�B.�.;���8c����0"H?���f�� �����"�(H]D�E�