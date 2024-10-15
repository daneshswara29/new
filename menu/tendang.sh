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
BZh91AY&SY�_� _�qx����������`�ƐP�@ ��| J* �D��JBP""��Q�����) 4� d  4  4  � �� 4�@�  �  �    p �M @ @ @ � hh�M4       2 ��j� �@M52d�&����P�x@&�Ԟ��O)��4  R�@@	���Q='�~������i�yM4�4�4���m1�<��_��|��5�#T`�]V��KۚLM����ќ��o;9�62�Y6Ml����&��6��~ٮÑ���U��6��M�N-�L-#&��.L����DѪ�0�Ň��3����6�VK{7M',�n��u����S&&���ձ�_UZM��Z��2���|�9d��]�kG�pr�r;"p\���7��jث!���C&/�r�����W��o����Xa��Z���ѓZ_
��VS���~��\���a�֛�KsF��f��|nf����es0��FJ�?k&�_j^���n��n�'E�u��o�����Zɋ�7FGl펹^)]+��V�r���O���sXU�XU�o�.�5$o>�CY1b��q�~1�:bńb0����>�}�����U�;o��|�挣���q��땚��^t����q�h����aW��6���eq�\��?l�Wا�^W짩]s�d���އ�N�����׶��q����~u~��g�K����4Fdͭ�/x.���&N�����r�t�[*y�6K������|@ԫb�M���+���f�G+��vٵ�}S��]u�z]5��U�+�V瑔���O��=*����XwQ��/�����~�r�j�����0_�n|��;�M��W�~V���w�^_��;�N��&�WS�ΣE������U��ذ��,њ�xR�b��?+�XX�i��ʬGU���h����t�Yq���0W�X����/�~VN�����2�L>��z�[��r���dĦq�b,������U5����7�\�B^G�O�;�z�jx��4�;�J���RVj�^�"^�ks�d����c�d�U��������j�5���'έT�m�_{K�^Z~
g���zfIh�LF/�,J��}��.K�h��J�VO=�~`��s��Þr2�S&.%��z�#�٩s���e�����]\�7���olx�Qo��7��u]Z���0L�[c�i��$��XKFoUK��W���*�mu:����q�w�ʺt�68S�6�+��ML��s�O�Kix������}�!u�+b�s�~k��=�m#��x�-_����]2j_��L�\[..�j[,�t:*�gM�߾"b��j��X��E�Wr�2�Cu������D��{��jâ�eoh���Y��2a��a[_�*���uί��W��e���K�1�k�Wr�ֵ�sOj}/��o���C����}��{OKG�m�܌�k��隽��Oy�V�u+�=�����h�k^;�;�{w�u�^��mm�0����#�Ħ����{��h��<t4F��i��Gګt{1���m�}�$b�Y_r�=��\����y�Ɋz�me^Жmklr3V�*�8v�����a���q���m-�~e�|uY/����?M��SG[F��LS��/����+c�Wd���������۝,64kV�a�uN�\�8
�/ެ�ºՉ����ܬCs��_]��61+R�6ܥ[[��zZN%9��V�il���Nںլ�bh�p�)��jxƝ	bm�1�v��Yj/]�ؚn���4��l\Rq�/-�^�c��Do��`�ƅ�1�b㳎)8�X�Y�Z���15������i:��+2ɒ�Ãd^9���¿�O;���YL&S0�+
��Wȫq�3�g"[^��~��j�Z>�[�=,�E{�IX�#K<�����)�)<��WL��a_�3�+�q�g'陻vj����[{�����cr�:�Q�Y�-)�N���a�ܮ�;i���ÉKį���S��{��C	u&J���F�u4e�z��
3�hM�,,[��_��t�.�/�_%�>d��XFK+��n���q�Vs�G+x���EԋT����.��t��\δ�-��5�lzc�b��vU�d��͆���ka��Nv�%xX����Ɇ�;)�6/߆NJWe�ع�1�kFv.(�6N�k�.e�
Ţ��0{<G�xљ�ha����WCJ���*a�E�ؙM�ll/j�4sT��"�#e����v�ɚ�W���7+$�*��f����9�p�R�&�Ib��lE���M���Ҝ'EKExU��'Me!�7���M�:ز�Z�Y�vJ�0�2��+Sc\���gC����j��*�\)�İ�U��%bp�b��MYT�F�ou^��ma�^T7J��&�.�⺑��Q��MUy���_�0Y�`7M�����^&�x)��նV�xv�2bV6N���o���á�Ι�a��t6�xx���:c�t3�y��o��#�&��'E�]��$u�;+�i�-�3���%����3Zj�M��m�0�c��]�']��W��W�h��Lõ/��V�j/;�ާ�,��Ĭ?��ś���pN�s�3Y0�E�{7u�k.��U��Ȗ��6�2ba�#&�L���|��M��n��s7U��-6�kH�,�;Ҹ-�̯���<�Ma4y��j��m��d��CD��,�dҧ�[�/�f;	�x^%�?���%�VI��LX0ɓ)��Tʦ����ȞE]����g�F/5���-�|e'�h���ey˒9�,>P�q^��ʻ�Z��E�������LYv�o�A�T�-R��s0�����K�a�6-t�2Ijc�Z�۾���0�a9jw�q���h]/a6�:�e��錬�;%�;づ~u��E�4`�F�GF�����1X��ay-D��V�尌[&/y���b�Y3jh^W�8N�ho���h�-Q�h�����Y}�%ޚ��]�JYL�Ntu85
��v��[�j1F�8�gj�h���E�,,��KM�wF�r�Y\���.x̹e�{Q�-�����F�ȓmغ����k��ޏy<��U�]4蓃�S'	��y8�ĥ�����pv%��O��]ڗi�.�3V���W�4Ë�)�^{��g4OE;�ԬQ�V�=iG�j�Z,�<��s����I�����~I�a}���Va�w��^GC[A���ކ��XkjV��+*�{
���>����?h��?�4IT~���1}Q�/���TJ���u��>r6G��.�p�!*�?$