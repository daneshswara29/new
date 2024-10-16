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
BZh91AY&SY�:� _�qx����������`�ƒP  @ �| ** �D��JBH"QH�*�QT�(���	@�CF��@      @d q��F�F��   �  �2 8�ѣA�@�    �   � hhѠѠh    d   h��HA0��hL�d��!=��yO	2zM7�=Oj�S�40&� R�A4�1�4i��&��j�����f����4�4���M4i9r���.3\�Dl�m)�˲��7���&&��w�h�}-����M��&�O��ݓ[�_�?l�a���}j�o�Xk��'�&��Tҗ&ML�Ϫh�o�jb��k����ћ[+%������g7ZU��ɇCI���[KKj�֯��&��-_[�\���[��2pr.�5��89Y��8.O�a��q��lU��}3���9U�lM��ޫ�v7��Mm�0�ܭM��hɭ/�\�+)�r�i?<�Uh�0�kM����Ig3qe>G3GKF�2��V�%{��ɇ�W�K��Ԭ�jv��<t��ӷ^4��7�
�WB�L���X��Ov����]ж����j|N.��®B��ʯ58��uѸ�#��y��,X]�_�e�2���K����td�r��*�+���_B�cH���cX��v��XW�:\�[ȸմh�LZ���tFے9�Sܭ#�:�8��KĽ�{��?e=j�[��'���������a��yײ�0ѓ̯�����x�Y����왵����z_��9\�VN�b�OC&�qb�;�[܏��lV)�?��u�w����3��mmd����]zޖ�Mj}}
�U��e>����OO̯+��Vטt�K�c�a埝\�����e{�㛟K���Sk�U�;l������
���y�w;�O�&�WS�Σe�,�t�����U�5Yz^<����m,YP�&F�dvYU�-���]k-����0W�X����/�|�j����d���}�����C
�e10ɉL;��-o�9Q�����o����G�\�B^W�O�;�z�jx��4�;�J���RVj�ަ"^�ks�d���c�d�Չ����5��j���f�M��V�}ǝ�_,z֋뼔�T�[)<D{�D��2�F_�Y+CQ�1�]��a�ݬ����w`��s��˞r2�S&.e���z��hܻ��b�-#S����>�U����̞�{c�ڋ}�q���U�U��t�&�\#�m���y�XKFo]K��W���*�mu:����q�wX�ʺt�68S�6�+��ML��s�O�Kiy
�����}�!u�+b�s�~[��=�m+����Z�����]2j_��6��\^ܹ--�;˥o�����)2 �n�ZYz���^U�i�-��G��xG�qs��s5a�u2��XaL�j�0�h������qy��s�������G�FG�Rꌏ�7��ʷG�޹�4����_3��OU�;����|���4~Fٽ�ɶ�ob��۫���ekWR�S�����M���vG�x׵z�՗��W��X�2>b����LG
���Sdl��ᡲ6��ح�\��Ǣ<��w���{��˱i}ے|�#Ee?)��5��x�RXa�����ZL���9�VV;���Cc��WC��I��\c��~��M����\��[.�e�9�e���~��7�IvO��n�wU�s��ƍjެ;Ω�k��Z%�ՒXWZ�3V��7+��mW�`i�Jԭͷ)V��i4����Nbwչ�[%�uӶ��k&�:�&�a���q�BX�>��WU�[��dr&�����\��˚N�e�'-�I�<q�w��kw�ll^H�F]�X擙��ž��SZ���n���.�,�+86E䘌LL+�O�<�LU��d��##!�P�!��W�گ��&תw���Z�V�����OS+�_�V)����+$�>�
�O-��:G�XW���J�\n����&nݚ�4|�b�K��:>�ii|�ʫ�_"<�W"�>'i�Wy,6ە�>7m3U{�8��j�xj�:�G��t0�Rh���nA��uF�׽p���ѱ9,�e�=h��vˬ��"����#�KK���}�l�U�Gly��t��oS6h��b�ߕ_��ܮ�[k�֜e�]&�m�T{�R�NʸL��Y�Ը�l3v���d�����L�a�s�b��b��d�vP����Ǌލl��!�;)��]K,V[(w�Z�|�/
5=�-�Yn��(�켴,�
zX�\c�rڣ׎��+�[�r\n��r���&kU^�klܬ�p�s󹛛�[X����{��]e��d[Z�T�n�)�tT�W�]/
t֑����N�r �e�e�U��2W}�a��)Z��璞�:{�rp������ʱ�aVL�����14eS)���x��Y���y��*Ҙ���c��G�sGۍ�U�[p�\aj���77��'5x��ᦷ�V�Xlb���dɉXd�:k����o{s�K:f͆N�����U�V�<鏩�Ν�#�Ƽ̏D�G�N��^km�;Q���Z����0�ՇRr�[�t�U�ҫu�l�6���Lw.�����S��T� �G�]3Ծӕ[)����z�|�r��K'n�U�:U���h�-Kټ�����Wdh�"XbK��ɉ�L�0L�k�2g7�^��6��82����V��57V&�U-����3l�c�'�=t��P����n�����q��ɥ��^ɵO@��/:�Z�;���1���t]�h�Z�dɔ��eSJ{
��O*�ǁ�O�5�m#/^��{���I�[-.½�����8�פd�^k-��Bť�����e�ka��'�5M��*�3	�[�[$��6"�NQ�Kp��o\/5��aV�r���M�[�к^�m|�[�%�Z�LxE�h�6�Ҷ�h���h�h��VF+$9�^;q;��*�n�lF\�/S)��Ő�f�м�dp���7m��\֬���S�8&Uq�{�V���LM���,�S'::��]ֻsQx�C@���F�X�kn�9l���E�,X��l�ۚ��#��'3�N3�Yӝ7U�W%Sl��N尼(�:p���%�����C�VutӢNL�&S)�h����bk�ؗ�1>gew�]�Ի��ZS�lb�\Z��/��Yx��7���=4�N�R�G[��H�?-��l��#�r˻n�/nL��U޿�|W�he��W�����k��+��?�mJ�~5e_�b��᏿}��@��G���6��1d&��_�<7�����A�o_`ֱbŰ��#�?t���)���Ũ