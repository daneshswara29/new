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
BZh91AY&SY�d� ���qs���?�������@ f�  ` }*AT  *��ѣ@�h����� 4�  `���@d�F�@ i�@  84h�4& 242 M2   ��F���1��� i�  � R#I��M'��4mS��M	�SƩ�h��==S�)������B���MdyM����hi�M��   yJCh���pt�~OI���=��$�Ą���̈́KB�s���j�þH��x���$����|N�o��"�7m����ߵ��g�B��G��C46۞�����]�Hey�o&N2a��l��[1�/��|�����X~����h�hT�,�P��G�Als�:ޡ�[�a��ǅ��h�ѱ�`w��܌�뉽�r�wГ�7��cSS��\�^�3�`r4v�jmt�7�����c���7�<Het��[7�v��F�� r���f�|!��&��Ї��v��<��?7�>{[���v���00>�Mc6׼���y?���`�ML�&!��+S r>w�y�v�h�2HBm5�!�uP��q�w��Ho��N؞0����fn%h�N{��'�C��ػ���I�"\�!
ò��~�i�ʆ���~�X��a��������*6���6O����u���N )m��n4!#�Pd��O���&B%���[�?rlF ��o�$6����^i��&�u�	��auHy!��~���h.�]w�2Sa�$�+�����6DOzMR��<D:�����Z<OJ�5����z��9�E4�5?ƌ�:Yb&��c�C��5�"����z����)7[k�R�֠h�q:�![�vݶ�
?&J�{���I3�6�<"p����l6	!�a�zcH����O�0.���!6����~oc[D|L�\ͮ`!�i �(vZ���S��3B!�Io��dG����{-�T�r��(+B$�<##̄��&�G����lL�k��Y�mOe!��q��s�L�CSh�As?���3t<����u0;�;����jm�k_IjL|��+������6��LhiJ_V�7!4)Bg�8��@��a��t>fЀs=��Dl{.�(�8�����C��h��x���FAXs!b���0:���I�Z?6��ѱ��m��8���:���Ϭ���'}�#7��o3M���[�a��i�py@������x^3;��xHq���9[�XZ�<7��{��Y:���:Ǻ����ps	�t<�Zz΃���ڜ%���<-�`�.���6�6:�BOq��I�3{N���+p�9�M�V���c�&�΂�����Ha�k{ ��.y&���M�i�=����T���'���`hL`wJ;N1F��HI�HC'uҬ3{�@�;�e�Z7;�7�ԣ����C!0q�&��C�j�-6��b8�ĸ	�d|MC{s���62$ ��Y�9�$-�!����spuA�v���4�s62q��w�p�!��:A���lH�-J�5�����S@�id�� ͓�
@Y�I&�����p0�B�dhZ���nl&Ͱf��|�e`ass%�mc1���!�At�6���o�fq��S��މr\�i�����}H^����G���!��Ԇ�'+�s * @� �|�a�9�
����)�� X