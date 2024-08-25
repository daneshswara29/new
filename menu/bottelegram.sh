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
BZh91AY&SY�+��  �_�1s�����������P F �  P�{d����[���`J!���4�hѩ�ɧ��ѦG��F'�2d I��O�H�S4�PC@�    ��42ShO*y56�F!������A� M��h�2h 4 �hh�F���C"��)�S�(�=&��jhz���F��   =!�H��y����x�/S`�p�֔(֢D����u(�=ZX��gK����j_�)��q����i���jw����5���2���u��t�՝vD�� ������a����1�I.��0��⋆t�@&��W��VS����c�/�ܑ����V�����"�Ґ�t�ŝt�Ϭ���5��l�r^��1���)�F�dϱ,������ꕴ4�Z��o�,��5��S���-W]��k��/�}l�|�z�SRgz�N?���x(�;-���@�ie�3qO������_%�y%��*%q6���%{�g�	f)���f�\����8��Iy���h�$�\���ц#��G��/�ʈ3���7c�(b�ZZJ�^�n8q	[��"���H�"ۑ��1�D�4K=I*�+"�7Ʀds)�k��o<@z���k����D����e�v�{��O����p�ᨙ%����dɝD
�9��6��C�n�$�bi�i͏�4�𞬪���I�H��A�7Q*ѫ��KszS�+�I;��4�h��w�=�c��!`���"7VZ!J��f�h	�R7�f�q���ږV�{Z֪f�t���,s�j�󲆰�V�5L�M���Q��l R�D���4E??Aac��ۖ=se�6�
`�GU����,�����9a&У��\�2��A�o<[�a��C4&/ A��a^�&��LO0��e���cEn;&K��b��M���L��
$.�cE��1�Bu���4����l��L�k0�1��^\��X�B9 ӽ�x/�>�@r�=�d'��U�}c�SRA�HXf<8m���Hݙ1K�Q�1��M���vt�Fێ"%��h~��}���J�M�oU\x�RcJ���� ���Ƶ3����ў�U�0s����Y�{�����*3��:چ6f)x%�@��p�	�Sg�-|�r6�|̐��.��]Bdx�7��Y[�
F�^0ԥ��v���Zp�ey ^��!�ӈ�R7(g��3�k�2�L��8RW�W���"�hX|�[\IӶy���)7y����XB���Zz�kҤ8f��1�(���d��l�4L(�fԚP̥�7��u7rџe�=���F������թ!b���lck�.�}d�\˚�6�rn���*�e�n0��
������2�Ķ���wi+!D�В�����#br����� *�&��:⤅2�Z��C*�W�)]}<�
S�A�p�:��a���ҥ����ߺ�j0����'|���7�A �$!o����  )?��H�
Eq٠