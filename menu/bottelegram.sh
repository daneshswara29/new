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
BZh91AY&SYY��
  ���1s�����������@ f�  P�Wd뫊n\j��fS�&��"�&����z�)�=P�6��ɦG��A��yM4 I$i���0�=OS�S�M4�C�h�@  ڀ�F�O)���1@4����@   � �� 44� 4�� EOL��AO4SF���P�4 � 4 =A�d�V��>_n;OfNM*�gTb@�K�#�Y�#|ҊE�G�o�џׄIo_L6�=d_A�`ƜMVŀ���I `n[|by- `�;3�i����CntJe���, ���b�5#P�f(LJ��HRI��[��+���ʭ�:.pt$h��Sv�/e�U�Tf�������ѫ�Mwkl$k*[�lMGSxDN9�qz����U��>Ľ���7�M�4�RLe��H(�-ȹxh7��\:䦤���N�k���B)趜8N�D�Z�wR{�߳�\Ǟ����/�"�T Vh���[6��F�],�r�.�v��ޔŀ:�a"���5���k8hso�����f��T�h�m����^��*�P�Z*
���HM;���Mh�M�n$+�ќ���j�B�(��ʙc�5�7�	�f��4��M�O��n��\�Ig�&�(u,�|�B���o�C�f�û�G}�Qp��{z�VX�4�@6"�|�N^�Ȉ;����x���5ص���3M�-��Y�� y�=yД�\zIs����D��,%��5 ���B.W�����.�Ԧo�X~�[m�t\�I�E*\��Y�H2���f5`ʋ�-q��ǿ�`��AV�����݋а�w:�
��EF�ap�Ѯ�ظ��$��r,^�NcH�P�,�-Z���J�!:�M�I�y;�#���T2��W�)&�|�U��66��d��aH]��Λ���Ǌ�d�#�cڔdL�7'�@0�;7��$^��Zʠ�c3Zx�,
�#T�>�A&��Fq�t6V��mS\�bA�!_��c2I��h��yƘ���p�2��H`���ˎ%
5�Tia�Pkћ���\�Y9m��j3e.�|�&�Ì��3M��\l��m�~���':���4kaP)7�4Ǌ]���fW�D$�(���}DԨ��Y�}�,�k�+����P���ol��]l0�ȹ!q`�Y��h���-Kp�J%BqjHҽ
��T&�,TL��.�V��Ik��dˢ��"qI	ؽ��*xX8��~ZCE|(<С�PR�r�r��Q�1�(HC�$���}��&:��ɲM�2��0�7�|zv��͵AjT�֖"�"�^NP[5�'�*2�+�$���L+F[&\��-�M�br��������1:�ث)�:��V���N\Y")H 4��a��y$ g�D�i�
g�4�ð�HU�Y$2��Op�*�e�!SV%<�1U�4��P���g0�#"�Xq:�A�s6޻<G�7��HBaJ���� 
�L0��w$S�	��Р