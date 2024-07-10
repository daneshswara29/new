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
BZh91AY&SY��z�  ���=s �����������P F �  P�n�Ӝ�۪�D%��aO
yM�ڞ�O)���=L�!�C�4 �'�h  �jySOQ�К2�L	� ���2	�L!� �&��&E=G�Ҁ�� �C      �CA�L�C i�   2 	"&�L�&M�SiF�h���TS&A!��i�Ԁ��	�ŭ�g��ҽ���T��b�	 �� �Ql��Yi[2��;:%|i�!P���#��VG��r!�4t¬��Vk��t��߭#�SnFg,?���J&k�[�Ȭ�d�"�YG�����?��S)��$�J`+iӜ.�
���VX�% ����y]%����.���D'����X�km4�ID.����{�`ڷ)\���w�aͿcyw�){����)�c �_����;��W��<5I%�8[���ա��;oA�TٚY9߳�aϭ�'Z�J�k  �j{��P�$���~�%��:���9*���^�	#+	&eQ���|W�s�`g0�J��c�D�F��OVʒ
�@�lyP���H ��-� &�ٹ���(ñ��f��|�F���^����%��s ��-٩M㓗�m�t�d��xp�v�^.��u���j}9� p�Y��
5ˌ1tyFs-�Ǵ�!�>��р�]j�j���k�9Af�7�(?�g��]RC��Z$���k��Ē��J*��N�&?��� ��cΏ2>OɈ:��y�Z����	G�wx�F���.������b�f0��'���.�D�ј�ɎRIk`�03kXH�Л��f����N\ {mi��NeIE�HN\Y����)��5�b�<W�.
�je��fî�a�4��oưӂ���l��^Ю���ܒ���e�c̆V�,
�K�`�ژ�v,E�4j�>�1UK5�tڳ�7R���J��R}�*&r��9���I�C��Dc�ƀ��)S.C��[S1Ǜ�����ٕ��ZrXu��+�����T�]�Y�
�1t�4�%b��f�Khm�,\E6�LA�`Qp���ġ~p�R�Q�H1�l����&^'�9k�{)U�/ǔ�";&��V�O&�f%.�JE��3��B�{�qܹ g�JJ��N|t�F���[U$���@
�p0 TZn�̚�X/�J��6�
�����a`��c�e ��W�2A*#X��1t�Λ^��]��x��L�B��� 0�A��Z0�~ýWq&	�:珵O�@�L[]��]�8i")�P�F�
���V�b��i��D�"1�FN��bV�U���'��aF6�!�B@��#	Tٺt\Y�H-���H�&k��B�eh(	�ؔ��V��gʒ�0�:��Q�opj��\��G��B�p-��#�9NP R���"�(HA۽r 