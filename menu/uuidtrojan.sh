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
BZh91AY&SY|~�  �_�qp����������@ F  P��^����ާ����SCMM@i�OMO�4z�y���@F��i�j~��h�jz4@L���'�� �3G���    %LSF�S�T�S�����4 =C � h ��$����$ѠP      �ET�'�i� @� �@24�� z�A�(��7Y̧�[]�҅��`���oI&=~�G-/=��>v�@���^<.Z���ђ���s�y��$sjU3}�8�ҽk%h!dW<�֫6��;s�䐝H)�m��b'��i��n�!V�]��a�yx(鲐J���m�c��\P��.:d!Pr����TFg�0��3��IM`��iO���P� %ɡ�=X6�dsؙ��M���QI�y���y_�]R;�z�w~�"���n_���S���Lښ@�Q˘B��Ϥ�
��Q�ap5F"b8��̹����������	 A3G���آ���O ˯|��&f������az��a���t�j��?+x�
}1�ɗ+q�t��5ʩ����\%P�S�1IZ��Y�>N�ɼF�7�񶺛=W>��^ˎ�7�i��Bp0��T�6��Q���!�gQ�9���:b�B�u?8���[��ͫ�$�p�Q?�����I��Ҧ������:)�{�b�uCQ��x�{z��(��UaʹH�DL�R��ΐ�h�E$���f�"WR�D'�� ���Y�8�B��2%[��`�'<6�ԑ� N��8B���b���*�.�+
1�k �l�e�� �/A^��Ce�������oDd��8H=/|�.Yh1�b��&zgk�; �����"�U���@�o�jA%!����f���IUw30�hفǁ�E�H<�4����	q2I
�E�B$/��"Y)u��ilxR9`�p�+vQ�aVc��T��}q`hjPKڂy���a�Mn! W:�m~�Yq$E�$���LS�*c �Ĥ"��Q� �d*���"�P�-�+N�����q������{"A�~5CIoVO�eD6���A XHB?�HAЀmX�B�?�ܑN$�@