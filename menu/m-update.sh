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
BZh91AY&SY�5w� �E�@ ���?�������@�D@0  `��G��ۣ�z+�� j�hE4�50�#�4 �05�43"bd UO�L�)2`���h�0�C	�F�h ���j�        @ 4�T�T���dz@ d   @   �I �   �  �    $�4&��L��Q�4�M=L#����z��?Jy!�"!���m���:�/b���cU��^�R�c����q!�E:���*�/�Jd�1x�R�@Ǟ��HD��6�V�Ƶ�.��0nj/mcM���{r���P��X:
e�)�f�c�.�H��*�r�p�-�E�7{����(h�Zqp�~���������M�sM�5_�_���r`�^�v�k6�kU���v�������]1�I�����e3��5UUUU@     ����Fɞ�X��v�d�"~�P����L��'.JܥTκ�o�MiϾ�����B�!B&�֚���Z�Z�&��BNgN,��{�6:[�{��fp��]yu��
I�-w=X;�G�KT��A���,:nUlfS'��ι��l��7�>�=�C����<؟Ec��y��Nk�v����i�mY_���@M��C "%!�����I }ÀZ�i�x�1+9a%!Bl$�����p�)�a��Se-Rۤ�)$�.��hA�4Og�&�I��!B�f�,�"z�y�._�Z�f�Z�J�R��,��M��/���H��Xy�<3f<l����,�����w��q'��@
�%�" �6�hJ4�&������K1|�mVw��:�ٌ�.�S����.����o=z��3��`۹6}1f�v��=>����������￟}��,���4�C��ag���N^���}�pi��-��V?��O�2A�q��ޟ�L��A�|�=�=Ū�4[�1��FՒ�*
�C$�pA�� IX�jUUUa/��AȜ'�d����ܞBZe0��5�D7 ��F��m�F�`� U���1lA�N8z�o߄ɮ|��h�24�x�
!5��mJS9£tL�v�oM8-�7I�eW�I�ȝP�� � ��V��1�$�K�Ҥ��"" I\	P�S�$��v��NU�Z�7oL'��UJ���he|����A���żN�d��|�\v��ꒉ)���̮nRj�{ѝ^�8�惫�ϲM���r�O{�0�OJrMq8��T�U�dD)|@F��hʉ��t[c�1�c�1�cLc���A%��E�5K���ĜD؝��ԵJ�T���l�S�`#$[R�U+�t�L���3�e"��k'k�̝��-�RB�֐nN��գ$�ө�%�-�O�K)e����Z��K��2i�f�����S*�Z�q\��9Pk%�1�5���w&S�I&�6hы4�L��s�[����q:))IT�5Y,m��ݐpsv5d�,(� T��W���0��&�MRx�A�0NӅ�R�A��\���A���f���K�|�3��MIt��3&��=)JR��+IihZ�-v���&|�DR���Mw ���%�ru�>�+UUWCOJI2T�&I�L�-�xXL4�,�&� UUR�UU[R�d��A�A�ʗ����I�|Ԗ��cR�̛��%'����:�[܂}�)!)�=����IYG�]��BB����