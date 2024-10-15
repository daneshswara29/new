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
BZh91AY&SYW��� ���qs���?�������P F �  `��P@�  4 A�� ��dCF� 1@  �h4��� �Ѧ@@��@ 4� hi�@44i�4 p� �@`�i�d � ���42�4��I�Dj�
z���щ���zS�� �(�S��F5dѣe4 z�Q���hi��z��ш�������y���/A4J�	&0�i�>l?'��uv
�RJ4o>��{#����Bu�?��E>.� a�L2hjs>G��>�
Tr$߃4!������4�[�7�e��,0�dl�a�~��� &�H��aC��^naF��uhcshd:[�����65>f��{n�#6�ml� ��59�oc{H������7B�q�����������:imt���M-�����)�d��Z����0�6���a	�Ü!�!6��̇���N��`~/�<���7������00>�MCF��n<WM-��o2��L�D(!�\2V�@���w��Z���0�!a��t�9�Q桌x-�vZڐ�a��;AD����m%H�_މ��x�z�i�:��������xG����C;�a^f0�u�y���~��a{`��$3j`q��?���v�@X6��X��H��	�>�d�BO+�~�L�K[Z§x|���B�����#��;h�۞>c�_t�t�����A�����c(u�).������l���������!���[b��Ci��S�m�@�����SA���ٳt��MHT�����PjpE6�-s0����������^&�f�lu�B����iVo[%m=�6��$����Q7�jh:�R�	!���|`�C3�Sȇ8�c�ǉ�(j1�����fM�&�(� �� Bo��`^�Ѣ�+�����C�jØ��LBN#�dy�����(�5���r�i̘ơ+|�SK�Hf9L0����4��T+�t��;�v�`$%+���3d�f_`X�SSCR�[Z��p1�;�hI)�jgV��-��$�02m�Mnk������o�1�a��m id;�6�L�|z���*
�h]�8�X�����#6���5;��c��';[�7������=���8�Cu�7���8Ý��Ch���q�c�z���{o��w���9�XZY;�C��{c�d�H�����o��'y��F��:O��<Ij��&N�h����wڇ��f��a	=�HC@�04=�K�ԕ�B���*iS�@�ʂ��҇y�Xa�j{��9�.xP(m|��kRCC'���[���d��p�X�`js��04�!'��!���a�ﴃ�w\�R�nv����(�I�B`�M#0��X��i��5�`֗!�o+H���f$l���9�KCs��kq�g���cH{R�3�r��q��?Sp�CK`���� P�)L�������H4�t�L�hd��`H�����7��J5��ش85�̙3�\��9\��|C7��4�+�u��P7m#��\O;K��ީr\�I��d!�:�I�{k���Ȏ��=!�0k��!���r1^ PBD Lc 7KlW�9  !A�`��H�

�t�@