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
BZh91AY&SY�:
m  �_�qp����������@ F  P��vt�E[	D�D�M6�l��=&�6��h�M0M�<� xD�	D��ji=5O~�2����z�� Ph� Г��S���=@�   P� � 44dѣF� ��  d�$�ȣ�OSOHz�h� �   CH�k�:����S�rΕ���\O��`7S��M4gm����{�ZYg8h��N�(e��+x�0C�{�-(!(��$ҫA���VkƵn� �޹����Sq�s�V�K+���L����sn�u:+
nVpGmHᵅ�áR��N�{
��0A�>1��N����F����AM*Ѫ*'\/�
�p���/N 8_��,�r�s6���)*"�^׏z�eإ�P�(][����Aq����� a��]�<�[�����O*A� q�QH��,Vס�&�1�{�#2�y9��X&�G�	b8�S/A�����G/��j�B>���]
��ֽ�E����>�T�y��aM�19N����6L��&���X�vA&|7X�\�,[{%�v�S�˱��G����Oïy�N�0���v^��DUnU1�����������:��S�cD^yu��	���d��r�B���i���9x�&��~)��r73���'�H���A�19O7c>Hg)34z6��RU�~9�"+ZdE�a�Da:N��
ErIMt�s��M�ɛ�Z��@�`��)e��g-J�F����_�[.�Q&q� ����ɲd�l2T�;�r:�v�f�ʘ���V���w�.a��hk�j��V�9LJL�1v�X���0�����$��s��ׁ�s� 8�*�(�QHl�CAӉe������o����J��@/;����:ţE1ae�;W��̙�K��PN@�X,��``�X��`���oD~mD%h+�M����t�|{��81��K�5���l� Z�	%v�S�B�iөS�,��Y�s��L��(���ԙ"��&/� 
���* EXHA^/�w$S�	����