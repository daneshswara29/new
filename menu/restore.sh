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
BZh91AY&SYK�5 ���qs���?�������P F �  `?>�H��� *� @� �L�F� 2`�� �@h i� h� FL� 8 h@M2 d hɂ  �h i�@�L�0@b  E"4�1!�b`�S�FM������꟩<� 6�ƛTmCL�*i���4��&d�� �h�F� 4�N�hāٌwK�bwڜO��l�kBm�6H��Ї���t��x� ��sٞ��$����{�2��ڟ��O����a�6�#������G2Q�a!�M�������!���L�80Ɇ��&�cx}��I;B����XdfT�%�@�aG��Z�por��� �-�q�a����h⼯����ѱ�A�M�kt�qy��I���	7�t-w���_��f}��Cc}���hljkr�Z9�A}�>ͅm/���a�n����d��g*r0�l	!�a42Y��w%�8�p���<�ر��sc��까�C�a�f��\��o�I����`����L�&I�ڐ���}c�֭�$�!�������T?!�Õ�?K������&��C�ʹ���	ٕ�d�}l��ܟ�LD3�*�(}g|9�3��:Z��hxXW��!�+A��u�0�LÐ��ڊ7	�[����Af�-�k�Z6��9Z!��a=t���c�k
\���%j�>�C�s����㭸OC��OQ�4]2O 4\��3P[ᐮ��0�̐�29"'q��i7j�w]$�x���7��<O܆�{nt1r����rM&�S�lh��k6�M�+c�C�x��M�]�x5�s���0u�8�+�j��k������jw�V�i�f��	�����&q&�f�&d!���u����Q��td�X`����Rm�k�yoe��V���f��ot�<��@�!
9ܬʄ�0�	%оѬs>g�]Ǿ�Nw��
Ё�	7��#�	�܍B�c�m8؟*b5�bjf5�=􆃃������톦���]�0������BT��ƶN�F���C#�;`f־�Ԙ�ΐW������lB��4
�¤2!	�'�\����F�C�� �a�ly]��3�����CK�ɴi`t0L!�B�멁�=LĐ��S��cS�|Fۼ�9̙:�����X{���7���7���]���u��t�� �h�uk���O�l<n����g�O ��.{c��I����
�9G0����F������	j��'}�oFo���jwZ6:�BO���əR�ڝ����P�Hl��K@xY6��Q�Ї*�0Ø�6=�n��9$�z�G`�,ha�
��sqK0`%!��8�X`ku�[�ٲBO3F����v��o��O��s�j���0M�d����F���pomc`C�j�Sm�9�r&U�p�#P����	30�*v�78�bB���s�����jS�
��L;c���C�:��4��.`j_�j$���r����nd%�MmA���� ͓���B�Z��ˋ'(�̩
��ֳpl[�l�h.g�s0�ss%�w�yߝ�P]�n��t0g�CS�M����R������rނ6�^B>1����C��ڇ���A����� ���w�+�� &0�rE8P�K�5