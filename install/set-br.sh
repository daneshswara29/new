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
BZh91AY&SY0�Ec  ]_�@y�&E�����@�h  �R���Q��i���i��
�2���&L !�`0�0       H"aA4j��#�mOD�z���M�<B�Qid3�5�?J��#�Z�L����J�&�G�ӄ��-���{�v����'����E�Xa��ٝ��*H0V❤!W��ah�ju��1Ff� r�9�kN|��I���8�H��7�w���	�ǣ�7�iN�D�q��C��&|ӫjn��+6�����cF�l8�2�N�W�(�M=F�~�0�=_VY0\���W򬞏F��X���==a��pnO��?��y'7O�[���?^z��@��:%��i���1<Z�C�(�%ILu�����DR:�8�/����P�Ć"7'cM��j�81t��o`�GʗI;p ��+4������|;���/16��  lؚL�r�h)͆CQ������R8' �)�%XB�,I�I��Q�:����h��Kx�L��c���vۆ}فtX�NS�S)�G?&ձ������Il��&	BnmIء�)�I5��L+jL,j���ѵ,j2�l a��Mj�qI%�A���C/Ȼ�)��b+