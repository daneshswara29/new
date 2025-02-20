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
BZh91AY&SY����  ���g�� ����������@F�  P>u�i���vZ-�4!&���G���?BM �F�4��  � ��*{T�ziO�=4�L��� #@  �i��$�F�7�?T�C�4 ڀ��Q�2��4�M��M �CMM 4h� Ѡ�H&?I�ЍOI��@zM� �i�4z��  +la�Y��x/�6z�lP%c֓������lʽ�E�B�&$��`���"�����"*�3}{�+j,��p��,�hͶ���h��Y�����TV����]#�|�3�L�ۃ����Êk�hJ���|��3φ�N��B�S��Xf��V�QdK\2w!�u2�Bw�y�X�|ҁA!�΍�y�^䌥���29-�U���`�Qwi���:����04fŌ4���v����"O�%I#��@M�j���27�0Γ��ru�ތ��23��r��bc�
i����ILz%�J_פ&�Z	~�`Z�eA���XoI��Ԟ˸Rx�dq�["dM!�*�ЗŸV� ]�$�N#����TDEK(��cG �?C�b1զN��a�T�=�/9J6�(��|��l�ڕ[�d���-�n�ֳ6�p��a���M�
���8��>��A������髮9�C���4@n��T$ZyU�BWgYd!�)�Y�j�����jk�H���eY��*���&��R�S���կ�P�AAbHa]D�dh�!�4尚�E�X�B��Rf�t<%ۉ��q(��g�d��2�n `�H�+�[�a�������������C(�8ʺJ�R�`Q@�cp�2�):��1��b���~s��W�Wd�2�a�!q4��8&��x������K0��,Ov�B{ @w	��PPoy?6��]�ǥ�2�[ۈ�[A���r�7>����B�9�U�.��c���EmTRITo�2JMPĲ���+�E��lN�Y.�Q�����4����Z*AG��(JZR��a,����!mL5�^ѝ�r2��JI1I�~�����+&:�rg
L��3D��'H�!Z�N�3FkNPU�aI��䣞HP��Xg����X���J�9в�H�i@Fs�cH9�{����B?��N ��	a�Ҭ�$�`�c �� -�g�]��BB[O�<