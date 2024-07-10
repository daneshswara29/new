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
BZh91AY&SY[�� �߀R}��/ߠ����`	�>޷��Zop��A����������S'�4� 4y'��f����=F���=G�A�@�d  hd   �aM1��&L#��ҧ�R<���!���   E$ڦ�D�Jz!���    � E"44h�Dh�mQ��	�6�Ѩ� ё�H��^p?�n��X�k/Εᅂ47�[�i����M+a��21�Fɂ�v���C�+m�d�y!�3��װ�/���T��E7RB)����`��r�F���j��[��I׆�Hi�~��Dڗ�(�jt��M�`P�CO�n�mlbˑG]v��}�ݯw����������v��I��	G�M*Ȍ�~A�_��=䕤�N!�T�8�8��!<��[� Hh��
ѿ���W�Jg�eaA��.*��h��\Ӫ�&��7c$�@Xo�}�n�5x=s9����S5�:<�N�WN����U�:4C8�`RAq8X����M��(��X2[�%A�a_QbTn3	���>�9I�"!s"�M���]l�[%,�gX�bڶM���Zn֡F"�**1��ߪ�DU��>���Og�q��ڝ顆>O��\}������hﾯq~;1��>	�ȷ�L�L����1��1�32�Ǿ��$��Su8�aP�dr�\�6֩d�lr�2_0��C<��wOa���~���	��NХ���Hy��:~<m{�ׄg�z8�K��^�{1)��ji��9���|�)D��IP4af@�B�
�����$�b���c6v�)i�3Qä�<}��N&�,gB�s�[t0�O#�b��I��N���.H]�(7`�̆vo��5��C��;~��_�pɐ"lo�(׸
�����p���_�W��'",�8#��c �(�qq@]���n���F5��1�(��z8�ζY'���?1½+�f�f��v�6�0��Ұf�,��P�����-$�^�J�H��k2��7ڿ�� ��h�u�u�"�܆���~��5c��5oyoM�$dpLg�%l������_��DG[h|��/Iȡ�CV[�89"����	�q�)A�t
��Z98/jn�٦Q@�r��it;��:���M6Ι���������ij�%�̞��qN�ȹ9��H��^���r�)%����7s�;�׽-q��H=����+����x'�jp�*rG�Tς��( )P$��R3�m�7ڒ9�5��ð�A`y&��#Xzv�vu���jJ�i$�
$�>0䖁���hN�`��MOAR�3M��j��.R�MW�7��jb_e��ج�bH��r�I�0�uc�*i	u��^��t��rO �Q�N��e|�����a2�I�X<��/z7�Ҽ�W�-�Y�x�u�!="r:`�p�s���w�Y0i��/Y�}�XNf1ڜ��3�.KR���Qݠ��'���ZQ�/���,Ġ�I��6Z&�����m��*�nРzJ���-
����)��!D�-� *H����4�T�h0�F��-�a$|	�W�2����Iz�Ѭ#iP歈��]�*g��=+(�����v�>��f���x@^;��0�Hp�!K[���dBA
|�]π\n�v�@���F��z@��i((נZ��en]᫕�UUEF�7M�2�����~��ƅ�`��w1.K ��(��dDX� �*CpZ�F	��7�M|��S�,����qp�2u�&�:�X<R��'Q�V���v��X���Կ��C!����|\��X�;��Z�I�-���f�	LR#���^NA��ܦ��郁�+ݳ �����W���&��X�Iy�8f��l��c�K��rt����Є�dU�-
��,wT4oM�WPj����(i���I%��Pb�g+M���zӫ�ldl��4�=ø6�X�C�\���a�#AA($7 ��rϪ�D�����3�r��1X_P�ĪA(�Fua�>C;����{�8C�2L�m��w$S�	�~K�