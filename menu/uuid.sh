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
BZh91AY&SY��+}  �_�qp����������@ F  P~II���쁢ڞ���SG�4hѧ��Ѡ =@�M4h	��L�L4�2&�Sjhi�   d �"�T~��         � ����4h�C#!�� �@ ���Ș��jf��h��h�14d���CCFFA����}=�K���;��4_5�����$�A���W���@⺁+Iq�� ܪ��k��}Ǌ������`��O�������9��2�����v/��d�X"�n'�F��_�/SW���>�	Y�HҰ���Um{��SK:���$�M1�0��ׇ�L}�E����`c��=�K�<X�fc]`U6ά@y�����t�H^�������3tiU��S�T��U�b������nM��+���[g�9l��Id�pE�ْJuף��"���X�f��e�1y��fn���I��\��ū
�SX� �%���/S�e�|��uC^B�Y�T������&��I����.�2d20Ik���A�29
�)�:V������b��=�ɘͯ;FP�~@\��؇,6| A��00]�ǀ=��d���ءc�#���rȎ'�S�c�8��hn;��L�j'8v'R�Ko��aE�����ށQ����^�x˝Y�TpGt�m��}x��c4\�jݨH���,*~�I8��s�`�f���h\�4qd�xZ"��r7��E���'�Ɖ�jP���Ǡ�"}��ɤӣ���>Ѩ)� �4`�<�e�!1�S����jƩD8�Q��D/	��� �j��8��U�R��j	N$�DD�=�A�9D
	��A".�<Z*�FG�ՙ�%��JA��������2|K!�"Hb$)Ѽ�D�A࠰��d�V#i�YB	Vv�	!��ll�!oZK�hW<�	CV���@�&	����o��b̾�]��5��Z�/��7�p�C�Yc3bP�$`�O���A� o� �]B��.�p�!�V�