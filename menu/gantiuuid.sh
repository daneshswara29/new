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
BZh91AY&SY���  ���!����?�������@ f�    PY�'�8�i����F�&�i4ڞ�ڃ�F�6S�a�S�I�z�b��� 2@Mi���OH����A�h  Ѵ� H�	0)��2<�h��@ b4P ��p 4 dM   � J$�4���� 4d �� �jW�׵�c|B��P����:M��	�n�^+ȳ���ވ<���i3�@�J���H�o+���u{�V�N������=�7�öH�)a�n�|����i�X+���rjA����N��c����G|%� )T!�dk�#XR9��բ2�
�u*s��:}�m$!gR��1alqB�1Y�ǎG�4��>�C�v�&B,�f�p1K
�~�wZ�a����o��lx �?��r�<zb���"y�	����H��c��7�2��(xB�e D=�noY�`�D����3�tG���]�P���N;/Uk �@�qi83̍I\&��u�0h�Bc��w2;/�H�"�i6M$�D�R62��U�I���Ve�Cb (�̪�(��GJM�kG\|U:�W�^J�5<��~7��D�%��Zj��$b�D��UA8��ւ\��EsHd��|���;�[�	��hH��:��+wV�H�L{[aR�� ����0AѬ�0�dI6D�X�Y�cd����#-jot�E�����ZH���/{�� \���Z��zd��m��-��d�Cyv��-��y׍}����ǡ��CC�����E��m�P-{@�K�!h#�Z���8��W]�A>�SVl�[~D�kXʬ�C�[y{mZ�X��V�@��Xn�TDU���
�_
���a�	JS�f�+��c%�Fl��2��o<�I��,@P+:�n���T�&++� �4i%�#b�&��SVբ��"�Ǚl�RӪZ�^��6��C��(�V �o2�4n*/��ڌ�����M;�ST��)����G��y��=��L�	K?'B��r��J���i'k��n*��bU��m��hv!�����N'&V� x��s��Nr��a�U�E*�e ��ס`
h*�
�1�h��V�Px�H�hi��!�~���jZz4����d�!�)�Hʢ �j`i�ŉ�	��B�J#��!B��( 	!
���j����w$S�	_>��