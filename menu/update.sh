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
BZh91AY&SYτ@  �_� ��7%�*����P�<ٺ�!t2�����4�Ѡdd�M���44��BOj��F�i�#�ѦM�dd4�� �U(P��j= ��OPɐ��z���T��OQ��  6��$�hiO56��O$z�� �CDI�����	]zu���{U��Γ��^&�Tfh���L2�!!d�\&	>��p�B��F[e����$     
�5�����<ޭ;3�d$��K�7�7-
�]�T��B��t��yE�~+���yOOڀ
BjQ��<�����,.ޥ�UQeE)�x�,�J�V2I�"�l�O2�.I�<��6|[�B�!B5Kn&K�-�e�"��Bgj�!gF#�Vv
�W6���=�;��a����EU`,�vI�f	�d0qk�J�f"���	�@C3B{�Vj��:`֮[`�5:\��(4/��h�+�.�f�^��?������v���*_�b�c:�.e�t{T�A�L�9N��UUUUUѡ���'7�ϛ[�j��8H��\B�x� �0��]���`	 5f�I�|�+�kˬpҖ�ll�9;\ ��P7�',ҀX+LQ�s�a[xBBF��h/��J�Z[��рsA���i�L퍰[l��*�y�hyfZ�d���v��㰍�+d��:#<����3)��ݹW_��\z!x-I�~)���:8.�4�����}*�A�j�<�xțj_�A�d�/�}�UU[KPcʪ�H�=1���h����n$��o��� ��Kn�6A��t���v,e��K�7����)��|" 