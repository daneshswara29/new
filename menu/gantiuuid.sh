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
BZh91AY&SYv<0�  ���!����?�������@ f�    PY�$Lm��'�EhM�����OS54�6��y52i�=FF��hhOT���d@��SSM����!�F�z� m  $AFd�ƐڏP�dML�4h �8�h 42h��h �  ��h�hh ��i��� 2�Lo���f��1��,.�n5 M���`ȳ�����7p���i3�@�J���H�8�G3s��Ѳ�0�f�����A���@~�U�I��A�T3"�L��ΖWt�����βD�V���h�R煽���xi��>Q��ɭ��j�]q+uc����xm�B9�߱�A��E
t�h/3{zG�4���
@��m!a@�3=8���]�-kތ����V_}���>8��z�M!�%�D��	#'����G�X�bl�:��B���@ �`�-��gd�#a�>�h!2�\��d�����s|@- S�ݑ[�DŧE8��&�Y^.�`Eeł*�N�I�i%{nS�P��RoQX�H,�l�et-����'*�����%Գ�>��,�㿮��U؏������<0f�Nz�S�����T�{5%@"��+m�ڒ�oF��H&!#�et��,S�b�Dնu�Y�X1���t�E�S�$�E�e�MvU�z=b�׍��8��L*m��j��/���.slԭl�ׂd��m��.�h�pQ�V��l�6����'q��=��������1�(��ا����L C-@U��	�#0�(3��`�P1�1D�}����lĀ��V����xA���PBTĊW#�6! *��#p��	BGE �A4�{%��	DFXM��	��@�\�@!Y�\�d�T���5~�(�f�4M�[��\�lf�-Qj�z2�2)�s0��,ڥ����7=o��?=R��W�2I������d��Rb�������L��R�H�C.1蛵�(i�+���)e�ݣ2�.�0�&.�*g�f�y�wTb#��ȩ5�tXK����	���p=8.��9Eب�9m����:��
R3�����B� �Yi�wM!��`��4q�0�Xվ�2�����Cy^kk��*��I
@M���](Z��L���BbHB`��_?�V�9��2 ��N�SE �����"�(H;S�