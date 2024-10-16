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
BZh91AY&SY�T�  �_� ��7%�*����P�<ֺ��E	)&��4   h C@4M	=�z��� hF  4�U A�#@ � ��ꒌmS�<Si4z@h  i��EM�<�=�xSd�z=C�����?��QCt��m�O�g5Fٞl��A�6MX�H��P���C@����
�"�/���w4�n�Vl��       )�.K]>�G_	�RT���׾�T)�����A[K�va��趢��ӗ����������EPB�t�+��Qի�i�+��ۚ���������ÜjW �y(��!!!!!!$!F)UVKJ�*�ܪ�%�B			��d$+��+9��W&m�� `v�pi��IBG.��XJ/ꂨ����ؙ� ��!؀y܏YT�	��C%��AӢ��Έ6+�t�[������I\}��I׮�QY�0��*�5<+�X�フ��j�l�Ι��z]JZ����?��s�8UUUUUsd��g���0p��E��n��(D�b��s������Z�� ,� ���ۡ#��|n�:�ҥ����~. i�P�tI�B�΀TV�Q�r��l�	�%�A|�UJ��5����"�j��-��[rN�T�3n�I��3�+5�شr����e|����o��4�ˊ�i�X�:��$�J��5¸�B�&Pl�Ml$Qκ,Ԟ2\�~�a*2�c2mY�|c&hf�/�}��֪����ܪ���A�ԓ��oU��n��UVIUZ��`Ir�a 0U�6���n]4?]�Sm֒�n�.�p�! 4��