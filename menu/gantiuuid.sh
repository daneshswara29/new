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
BZh91AY&SY�� �  ���!����?�������p Έ�  P9��c1�4���zI�yC� �hP� hx�  �@D���ħ����4���ѵ=G�P ���P �"&�	�M0�FCѦM��@hdi�2h4�z�  CCCL�  h��   p  �4444� � �hh � ����K(�x'	�R�%{�:OPb<�X�-ׇY�7bE�|��i~�)9�]�a�i-�u]Os���M��=�E��V*>�<2����'9�qr�[0�`�N��@��f���oU����z��vו�2F����7	�%��꯵��Ԯ��������뽐�U�,��xךQB�1R2G��ّ��K\ƅ P����������55�j5�j�G}����\;��ϝ�j(�Z�M��+� �n�zHM`�.;
��B�H��03}۷��uN�L��'�)
�1&ц��N�r�g��̈�+l���uH'1-EX�^*1��V;-&ɤ�TJE#c!I����H,�,��ȶ66&��EŃ��L�;�7Ξ��X��QCڙA��J�PR�ah��r)�)��֠��+,q� � �|����D7�.HM���H��\/�䵏�3��>N1�9�Wb��$�6!4jkcjY��5ݖ�-j�Ev�swn:��d1K�t�ޣ��7T�0[��2}���~0'6�m�(��ўW3H)�� �U�*�
���M�?k���.��]6�˿3�E7tG=a?�P��PD��֌����}j���ak�	�r�MZ��_)ͪ�$lŭ�����1�s�'4X�R+v�@���3����T���n]�'�ay�4=�d6�T��n�,��]q�P8�vݳ���P��UC7�c��n����U��t׵�om>�"QF�����/{�gG��6�4⇱ZQ2�q\�o�7��s>��Y�DD����PRR�H�C1�TM�b
��I3$�/f=��r=�*͕�S_]=���3�hG���N/�oJ$�Ě&P��_A�M�=��lܸ4d�ҡr�k8��+j�P�S�Fl��8&2~e]1��c����j����u����eI̽�#��:��-t"��$b�-O3(�`.|���� \ �L�Ia�D��~-���K��E��oܹ2���K� �0g�]��BBw<��