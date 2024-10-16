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
BZh91AY&SY���  ���g�� ����������@F�  P;ջnٹ���h�e6��=L�jz�4F@hdi� 2  %6��i��f��SM4=F�h��h � (Hi�dh1  �d�@ Ѡ  ��hCM2��L���$���i��L��������@� hѠč �U8���e�KVk(���zS��d _&O��Ą!��@��6H�8��G�葛n�atR�!�0Ȕ�ht��|�ut:������q�Y�NR��y���%�
H��E��
~���J�P8c9� gs�-�k����T
f�NCJ)3�����0H�l�C�q�W4 @�,��m�� ���sP[�*�K�m��ы���OC� n���5��`2�H�]
B��"��n�l���"?���:�� L"|��RdHn)J�zkKdc[�Z��<��A+�u6�I���IC:���l$�Z)�jl�l�@��+`'0�VUm�Pn
�z�<V�
$4���wK�Od�D8,�҉6�;_��A�gw��O���� �
ph�j��(���ߴ���Zd�����Fԍ��L8��f��'k �q~:f�:(,�V���>j�������}}5Op�FT�Y����b�2�@<#
U�g0�GL�j�.�EOP���_q�F������Y�_��5\���åA�fU`�NZ�F��@�U
Bú8䰼�F��]ld�^�2�r��(H.$8��ѾUI��bE eqp `)(�;5�D0Ą���[���*fp�1I3�#e�T�)̕��V�(�/(y1֍n�ęy��ㇽ	��c��-ќ�Xũ���C���PQjr���ɽVDbP�Z";��F�i@4�*JO&����:`�{3��y�)N2�*�G6�� �G9!F*f=��hı()'R�r�	bo��fk��Ǽ}��r�g�תx�*N39��2l`��g@�XT��ai@�m�Es�v����ka���"�����^�Q�H�@rҖ�����ω�I�'$T=_RO���`��̫Y(k�Q��U��� �Rc2�����y�:UR�22N��7E��>~�����q�8!Ç@�p��O��� C�a�!� 
�����"�(Hxr[��