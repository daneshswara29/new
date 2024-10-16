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
BZh91AY&SY����  ���=s �����������P F �  P�{�uL��N��ֳl%	�zb���3$�b�d�M50@������2��DɄ(��ɡ�FL 4`�14�H��F
F����F��� 	�G�d 4 hp4 �44 hd4�M � @��( ���0Dؑ��h3P�i�h   �`[e[~��_cv<�}�yo�;	rM'[%k�u?�ǁ`���8h��MQP\~/j�T��TC�t�M��ѻ�n�ѕ,sSbV��_��gP#�CiSSE�VJ���-�CB���"��H0�"`'kM� Ҹ� ���J�82K�>���P�n��/�qޑGDUv�Lե9h-����H~�t`�y3���'�񱶻�4P����(���}�r�γLd�
ɜ�	1wp!���{_^�OE�f�;�ZnAg7�Qw��;�ԫ� ���,Z�@��2�j�ȋ'��Y���ru�P$�JF���]���}�����Q)%��Xc�,�F�*�l�$0��z)VC��]֢�𯀚*f�U�EX���k]��6�n��q�J���c�n!��гZg�nhn�wұ�o�P܂���շ�f���G?O"��҆������\c��0yyF������C�}$n��2��ػ�7R"K�@~�� �K9��-A�$2�" �&�$���%�:�OO��S3�4Rޛ˱')`���½O�+���D�#|b����H1�bEUPA�0��W�ͳ�Ke6Νmƪ�6�6X���m��gUC��3sUւ�R�����S��R�����Sz�B�-�ovE<�D�ul�Vp�E��WJ�:
'����H�,���%9@`u��e���3���MȢ�;G6�h��4�@��l3ij��tA� ϴ27�徢|LD�����șA��$�*�yD.Uc�� �Y,��hlձbEze}[4Y7U2�ހ�yY�-��)�S�2�22�3�3�V Ǌ�J�c�v��H�
'R1	g�C��{2���XYA�֘�/*�_�Dg�$����;< �A��'.� ��ŉ�QBL8��bIi�#�!R$	-4��|d�'֘i
-6�c&�c(�����I���{"�qsm�eF5X/ ���h��CKHa�\6�p�w0��K�DfQܰ׍���$@M���W��$�u�>	����E%�ܥ��Q _	����Uו�A���y�����M�@�ORī0�`cґ'��@ͤ�XHb���fѼAϵ9 I=�$4F-�d8� uI�'e�i-&FR=S��55�fm���#�	Ą/��[�`���p ����]��BB���