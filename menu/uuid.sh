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
BZh91AY&SY8�  ���qp����������@ F  P��'�����ex%F�hL���FOқHښz�=M1��e'���=� 4B4&S�6���F�@��h  @4#S SO$�     �4 4 1Q�@��=@Ѡ 4  h 4 h $�ȍOSO(h���     C��t>EI��O*,�hM���w�!�(A`́(Յ�M,'m����=�$���h �N�$1��x�2C�{V-H!��*jU����֚�b�Sv�E�:sS؊\1�Z�&��+�{g^�ߝn�³��٪8ne�|::ԩnD*���+HD�(�1��N����&<��n����ǣ8s���2����s������B�n@7V��tԠ$���l��߿��v(���W�s�\ �͓lA*��h`/N������\�k�
v�Lչ�����-�#E���J��,�x��TA��?"�9�=�9ݮ�e�3�PK�(�a�V����H�V����ry��,(o��~jze��l�jN	f�ޱ�66O�V��,�rص'vM��B���eS8Z1}R��@�f��t�W��� 	�TPQ��P-��ǌ���-̿�JN���MqG���[;���l�
�p�I-�a���ҕ8{�'}�ygF�]�y�)G��,��E ��6L��:��ƲCD�3��!3ZQ��q��&�r�$9�	�A �T��h*B���RX��ߌ5F=�a��i����F�b�ws��Q[�U%q� ���+]p%t@x8���6.�y��a��B���gt���גj�2�q��H��7R!���z4�9p(�A ���^�Ժ(#��[!F"���
)`���K ��a��62�H�q�g�=�����ӓ
���¥��)���eR)���Ġ2�G�����"��"�.��|� m�%�C�J���0���鄨4��{F�2d�S>b��)�*A$O.�a��+#�B7Ш�Oh�A W� 9P i��B
"�rE8P�8�