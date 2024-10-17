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
BZh91AY&SY��Z�  ���=s �����������@ f�  P�ze��FY(��a1�����mM@i��&��244h�d p�i��@   �M@� b$B)�"��Ѡ�@z@16�FLCM4Ѡ ѣ@F�h4�  ��4�4 h�!�$CSOM&D��x)�I�H��4=@ � 6�@U��k��ǽ7���nI;	rΣT�Xǭ�FO��=�S;��	� ;�V�`���9v,"C��C&֦9[�ïrymSVvtn��e�KP�1S���^-�t�q�JS��c3�+�{�`��Km��z:-4�,C�ۆ<����¥��M�C�F�zc��ɯ�y%��}�"��T�,��6^`�rL5y.������n���:���[��tFH�,ɠ��b��55v6$����0����,��B�?��*�ٺ��6�����|h'�����!���	�g�-�������G��Ť&�C���;������%3e���K�>}��H)a,��:�,?} �(ו�EPh�ͤ�*�*x�b�c��F�7��y�Ĭ��6f5�4&m�v�8���$�Kf����j��;;�t7.un�5�y�8m��f�i�<���p��[�&�ȇ0䙜�O:�S�>>$�*�4�(,�&�YQ�t>�$�B�
���]�,\%��D�䓷^K��צ��*�Ɯr��OKW8���
�\ZV���	P�AG{q4�<��T���^߉�7p��qO�YY�U�s+i��0r�x��Y�몺a&�Aۅ�t��;��3����	9x�H���� �|����ȩYމJS(�mL�N�8A���g+�Y͉)���\������˄�r��K)a����{��
�As��d����H#�e47����X�� Ӏ�����UF�2Aw��eqb �x#D�kI���ӍjD{h���O5S��5Y�+֕�̡f�T���'�)���x(�9P��r�4�[ʗ��DX���9[-�ü�#�Ti�Ӊ�H4\b\h3��x��u'4��𽔪�2L<�b'��5� v!�+�i��8��JQ(ք/$���f�s�AyڂT�ݐ��r ������o��/a�W� ���$��0f�յ�±�|b	2۝P=d�K�o�:KZ-5amh�X�NV�?mW!L�,a��A�Y0O��x��8*��^h���z9�X���[����j6VX�':�u�1(-Y��'0��a��̜\M o�YX���;ߝBk�w�.�UYxT��r��jv�qwpjf�R[Y;�}��h99��g��y �������C�� ���]��BB��k�