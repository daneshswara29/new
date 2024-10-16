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
BZh91AY&SYo�� ���qs���?�������@ f�  `� �"	  ��@d�F�@ i�@  84h�4& 242 M2   ��F���1��� i�  � 4�Ɉ�� �L�  "��M��d�2m'�7�M6�����S�bz�'��OM@RJi��=	4�G��L�##MS&j6P�j �L�W��݋�����������I�+j��6,as�{m�A��)"l������di�Bu�'X�~�� a��2f��7��
(�Jߋ3CK{��-���h�g�3xY2qa�83d���@�?ܒ|B�m s�ާH��kvE���ۃ0��[��m�mj|�5���xnf���I�M�59ٹ^F�����BN@��֍���f{�]�C�-�SF��;{D�2xP��~ML����a�n���!�p���9XC3Y+��9���h~/�=63pnz��``}���m�x&��x�"��d�a@���!	��|w��� q|�C�}J��2HBi�6��/y�C�p�K��k3�u���l&A{.p��ͤ�C�<�=�O)���v�ө&"
�
������Nd3�+�a��
�Xb'�jG�q�LEF�!�����d��`�6�ѹ���hH��'�y�{�$�D���*w�ƛ��W�����0��t7	�j�BC�<ŷ�C�ۏ��o�(-��]w �y$�tDK����9eHp:��C��_KQ
�m��kU��]
�������KG�lkkt��MHT�����PjqE6�.vX@jd�A��nqh�#@kt���Щ�u:�+[��[�c���ԒM��pC�M���O96�C������󌆳�)̇@�k���&������Ɠ���&����=�|�!���0/i ̄Ch���idGq�s��3]�3�X���8��7a����������F�,|lƦ�m!�s9a��&~PѸv]���s����9@HJ.�����kk/�-v��ͩ}$-����qP2�;�I(5���gW�SB�i쁁��M��n5���#cĂ�Q�m7m��S!�P28�A�B����#5$2kV��kl}O)��n\̙9�Ѿ�3�a�a��{.����o3M�����s�H�n^1�5��ǭ>�3��/�85p Ù���'|&��`���:�}�;c�A{��;w�jOQ�|�!�K����wۀ�����x�ֶ�m�$�Y!ě7��xZ��v�C���M�a�f2vX7!�A~�y���B�dB��mϑ�njHf��c��F�d���[���;�NwF��$$������t���@|�+[{�ͼf��D��d&.Ad�ka��u�`���Fļ	�ey��f� ldH$Q�3t�or�a!naA��{���4K�
6�x��c' @�N��[�B[GH804[����[P�0�J��ma ���55�͓���-$�or����p�B���]���b�ɓX؂�~���09��K��w(�y��4 ���lh9����z;&wK��*M�S!!��O��@��!�����!��gCy��qB H����@ � ��]��B@-�k,