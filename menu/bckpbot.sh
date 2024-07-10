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
BZh91AY&SYm��  ���g�� ����������@F@�  P[ӛ�v�fěf
 � 4    h   �PA5<*~�&���h�����   $��h�=�OS5= C#M=A�P4 46�����4�h@  A�i�h ѠC@E	�5&M4�4ɡ�hh4�4�4 ��H,f<ON����Ԣǹ�/�&�FX݃Pz�ѧ(ܘ�mE�\Z���
��E��waJͫ�:�C`X�����nCC6懬�4)��L�фF���0�A"�8�W�,"m[�F�̍"���2�4����G���to�Tf �N��j�ٸz$����`�y�B�<��9ަ�8Ȏ��؛T�DG��M�ow.���F	�u	p0�)�mQ�HxYTDR�q�9�a��H �� �1�0�ܙ�ivI�'�0�-��*��FI��6��¹yjl��Vl�Q����y��O��JQ�(�����.�9��ٙK�qZ�Nv���a%i���M�D�eKO�oI}��%��øWM�u@f9�=��)R4�|+l�jv@�)3��a��Y��ڼ�1ܴ65��8�d֯��l��Y�8M�{u'��ڤ�v�ھ42�f�ґ�}N�ہ��t'bAug�>�N�i��>>(����l���4�{,���=e^d\���<��,	�H�������A����s�N��`��Ʊ/�FPppطFʱjqN�!�ğ�v�E���Z�P���O(����e�ƺ���Fz���Yd���ڪ����1/�b�v骔Уa�RlJ�TL_��$Ob�Ȧ113n�e�Y��i�s)&-�m茟6%L��i}9�U��^f�8�saD�Ę$5���lo��F:o�pZ��ŗ�`~3�8�((�b�﷓j���^C��)S�)/HҐ����N��m1��:u�g� 8��vpf����iH!J�)��.�uč]Y���i�V�Dg��r���s����+f*����S?j�ha.�#щ�A����ԯ��.B%"��Er�?p'9Wau�T�JU�Yu��YVIȜ{���z��f��A�h�R�i�3�)+�6�k��NR�.Wܔ�^D[��� �хl�\�zܭ�@XؓDx�W��gH8���� ��$C|�B��K��Y��ZZ �)J_���1RK�.�p� :��