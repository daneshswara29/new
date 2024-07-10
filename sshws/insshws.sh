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
BZh91AY&SY���i  [_� y�w?oߊ����Px�  U �@�!������ � �0  J�6$�  h H4I444��2�4ޔ�df���`Ld0 � ��5��s|���h�%��2Eۘl�P�q��{�:2̉Z�|f���mJ�ʌH�.��x�܇a&���,����q��FD,�A���:3�؈����7C�\Z�)kC�.'!+RʔNd��}�5�	MbxAA�.~a�y�-^Mo^��u�a������<�Cc7c�d?!���>C!�a����#�?Q��l'1��sy� }\�p ���᭴f��7��Y����uaO)ZlX��Y��!�>PI].���G%�
�,}~;(f�d�.��a��N�!��6�xsh��M�i�T�}��s����Hoorf�_���c�ɀdidΖ������zۂ繘5;ZW����kh�a��t��S�fv�W�C&C������/�c������u��BU �	9u��M4�-Fd7����5�w�����9�/b��hZ܀�+p
ף��F#p���S���k�iw���`3�w�������֠��4����^K�������A0�^�8����mw=�@R�-��a���,Щ��`4�D��X4�/�Ʌ�L�:�����������.
Y40��q\�B~�3ja����i����˱�kր�����n����Ch7+�b�W8npl�@Ɨ���|�6� 
_c���"�(HT��4�