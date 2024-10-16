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
BZh91AY&SY�o|a �E�@ ���?�������@�D@0  `��Om�֍ u�( R��jhѤd�h�44 h ��1�44�A����� hh4d  �bB)�"�6���M0�1 `�4�Ʉb`?T�jm�~��OP�         8i��CCC#@2 ��h� ���RH@�M���4ʟ���50#1M��h��� "!8��>iC�ת�B�}4Ĩ�\��4Fܱ>5��@�qɳp)����J��mִ�C$K�2-�]�$m~Mv��عr�/S��n_�+ۗ���P�B��墟5���Xp��Bn�$��D�A � ��g!q>@At(��J!�D�FIjۃ]�U��ӯ{-,���.��e������R,���򮘠u�8�x���EUUUP      ffff��*e�(����}S���Ԉ2ã)�G��T�U=�v�#U���S�x�������JB�!mw87s	w2���ѻ��!4�q'?ݩ��{�wM����$e�gW���N�w=8;�G�KT���a�4�t\���LTT���2�����_6�l{�(��;����>zǇ������Y����;HS�e�D,�Ov)'�Ғ�-i��{�oI�@@	4A &��\�����'���J�� F?��NN���H0��鶖�m�}��K�R����k�SBe�]ʴ!B�!pAe�$���L\��,�J�,�*�J�gYjU8�}.������Xy�<��|Xٷ�ю,Z=h/1{�,��J� �	XK ��h�dFDچ�0暭k�T |�O����ϓ���Yg9u:����u�_m��}�v�ղ)�q2r��[�o΃TOj8C���-p�V��,\�����٣r�=~�S�9��zZٔ���o���c�W��l]�1���i���oO�&����<b<�<�Ū�[�1��J�#�5$��J�*����U�O�;�H8��ҕUUXK�yr'	虯��n%�'�KL���������ӯ9�rRn��
�g-�;��UM��O��m1����df@�B[ H��1�U�,��ua'4St�6�z���
KRi.Xҩ�0�$�L�$�&DD@ Γ�ft�P^�\����r��iԃ�E��	��R�J���hg|����A���ͼNrf���m\v���(��J*�8G*�x����Ю�4��C��ѵ6�ێx��7����'$؎>"�lL��*W�e�� }^����Z��.yڕ�)JR��)JR��R��qШ>(��|;�E��js�^*)K�jUJ�i!8٦�<�Fh.�4�R�W�Й'k�ed�̖Hi���{_C$��D�mHk�д�rwo��9��(]�/���?�,����[|Yk�Ǳ/�����A��中4�R�ժ��*�i�A����5V�g���L�2�6�Ӌ$��>��3	����9�)IT�5�,qKb��89z��A�{�*M+����`'u0M���`�4�	�8QJU+[e����e2��.M�dЃ�����\d���'*\ư�)JR���.\���2��RMcuUJ����e�/��R��&�JV���v��D.8E�eJVUVUS.J�j��" "�*�j�I3�I/NA�A��K�mr�?��|�kKKMQ�Rd���JOk��>e>���~%)!)�����	������)��{�