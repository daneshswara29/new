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
BZh91AY&SYm/]�  �_�qp����������@ F  P���uً�]݌����ȧ��S�{Tl)�h�$z�Q�I�Cz� h�Ph�ƓԞ���5�4�@�i��h hL�����4�� �z���h� �P
='�z��4 2     h8i��CCC#@2 ��h� ���"S�̄^�Mp;`�h�G���aO~�Hz���ҾwL�)AZ/.'�םr,�q��0�'WV�Ӷ��=�^�,�ԙ��M�F���#0֕�.]����q�n��g{��Q����󋂣s�Y��H�[i��LX���i��L���M�*9_,.u�YZle���X,XgGXd�]<���U0$G�S�H-�2��Bk�C������R�������G�#�N�ZE���%�?�魀��Wn�7�S,��E s�""�kKk�1I �Ø��j�^��̖��d����=�sG��^���ܽL«�k �o�@����)R+�}&V�H��.fR1��]�랳�D6�n�~�bK�&���|2�<�g�O9�����S��8�v�ƒ�w�@M�JC:kf�|�DU��J�x��mo�v��-�)�5�s���U��O!9�0ݬ���!v�u����"�`H�#��3��(BaOũ�.#w�]O6�-~q�Y����B�+k���
��J�X�$l�����*&�iґ�HjzN�W�VD���j$�H)D���q�#� l���c���Ip���i�K!���6*�o�f�abXA��Ŗ�!!�EM>�䍋���POl)BѰۢ�}LK�T/��Y~�ل���o*!��^o6��㓰a��%���ƥ�<P�X" :j���$�#�#�1"�8���T����y5���Q�C0:��B�X��8BPj��*4�a�$6D������qAE@v�<�q��e�]X&R����z�DanD�q��|Ǿ���Y��� Lb
]1��5F7B�a]�P���5@lV�����T"`PzVEB}x����(��d~� ���$��� ��! ����H�
�봀