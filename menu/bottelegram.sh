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
BZh91AY&SY�H  ���1s�����������P F �  P��7��k�uֺ�4kH%h�����)�����i� h�#&# S�z �i6�=��jm&'�  h 4@   �)�5@)�y�y�4�i���yM4z���� 8 h@M2 d hɂ H��$�jz��OQ�Q�Q�jdh���� ��=G�@�*�Y��#�/�=a��D���E�ֶ)MǠC��_+�AӞ"&i�E��%��O�D:�>�{u����Y)a-i<�`a�;1�^볪�
g�BG�C�mB�cZY�9��K���	2���	
�,Me���e��E�6�6ނ	����Y�/m��v�z���3��Z�ʴ㤚�f�5�]jG{�LO��Sې�ֱ�O~����8p��C���4��9�*��Υ�mD�L�b@)@e����_i���p����f�7�f8�WrȪ��Ő�U�"��V�(����C���n�[�͍�q:�+L��8��[h�^��φ#��G��2wsUc���r�A��uS=��5�:�N�+��te$�=䅜�<$�\I\�����uH��;�apNm� t�Uϻ����¶t�0eAצ�мC���B���Tኣ����Һ�r�ͮj�T�C�ڈ��X6�|6�H�_K1�K$vb��BL�xZ�MM.M䈋O���2��*�UQ\����z�D(6}��D����C�F$D �*S'UC8�I���[T��e�6�2iQ�?�LI�<l��J��l����C~�� 
���2�70��s��|KSy����`�6;
t�9�P�hQ��u�ˉ�T��z�Zu~Y�1pA!	�)�!�(xf'����vR�άZ�f�註��Z��f�6��2��y*ّ9��`��8�eH�*��Q��P�+��H5C�kh[��9�C���`Q�t�C�jH�q���y3^6��B�ٽ�92���"-�`����)r*2���ۃj�d�iE|���
͐��M�i�ɪ։����Os pⳘ��t�^IX^�����4�-4sy�Յ'�j�4�{�Y��� I�(N��P��F�.��Q�wQ�R�R�I�:�'/k��`o��2��Un�i�нl�.��Ҫ��PD'
���L3Y	��(�"�B�:K}|��.	�������<v�PI>Ӟ�&�B�9�2�^&�����'�ۊ��3 �1�&HC��u��/O���A7`�S@kBm�M�3�u�dr�S.�m�_1VZ��+g�i
��f	�P�3p"�\T�S�9��*�"��;;
��3���\J(�V1��S��n�U� B�U�R)�j��i5S���f�蜌E*nM11��ݵsIT�����K�v���J�L�j7�Z
��6B\�A�[u$����6A�.�l�9�G �Y������p P���"�(H�?�