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
BZh91AY&SY����  �_�\�|���"�����@� �  0    � 	� �    s � L    
��dh�$ؚj`&�I���������DDk�`	2<��S<\�������9�Vpdv�}֜�RD����	#�%�%��,TmV���ۀ��3h"�!9���$;�n$>Ǳ9�^R"ƱkJ�����s�b_lIK�ؙ��y���X�O���z�4=<~OO;�]b�靎rH�oj{gB�E,���_n6���Q����"	��S�q��R��Z���/aX�6�0�ؔ	���ن�T����(�hr'C�BeJCY���/�	���Qcr���9m#�X��_1��4D-U�a+C�S�22��DIZ�v&�5'@lq���Ts0"d�KQ�8�ІG�ix��?��H�
3r@