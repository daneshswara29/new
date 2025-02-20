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
BZh91AY&SYNEN& ��������������pf�  `��f�r�cF��]�� � ��M4I���Ci4�L�#�z�I�� 2i�4h��4zM4h�!=ML�=O�SM  h 4       8 ��2  � �@   � @ �  @ i�   @Q@�H�Й��A���4h�*mCL�4C�24�M��%h#D�i���52��P��4�oQM� i�CL$%u��fL2,#�ۤ�׋f�g8�;���p�iv��˧�F�}��L]qQ)p��7�p��j�� �!tXm"��ÞWہ�C����q�m?v�P�Z����[P+��M|91��m�"=�*[L܇��HU1�LǺ�K�������5���)ܠ&=��:���l�
9o��00�qBAa�i�<���O����\�P~L��k�ҫ\A�o� ����z�8�Y�԰��q�����1@grw�Q�+b^HMf�}��w2�+IJ�Ge�K7�m��b���մ����$�k|v�Po����k���?������N�sc�M_6z�q �7 �%]���o�ސh޳i¾��R�b0I��S ONl�F�<���A�0�O~���!���h�Bs�	\�o�f�:v5UTI"�~+��ٷ�H-7��=�6�}Odwv�`���^]�鶳_�D�ְߧޕʔ�2!���{f�b>�9�� ��`�IQC��c(��r��\6�3\	bBR	>$��=�Zc뼡I}�B���rJ���+�pmtF�3�,2���쿫��2K%NNI�~/��{ �c H�o�� �e��?g�VhI�gC�R��	�>?�����
�P�)|M(IB3���2O��_~էW�W�:����˵�0l��nDE:2~mk���ʑ����.F�D�!Q=����!�Vs����������'�������z��hi˓�Ӿ�h�/����M�q	��8
X�JC�B�J�$&dM������nb�$��)�$IoA#�.��w��\���� {`R	"EB��b->������.$aU�H�/���^^ok��֗]kZ��vi��$�~�&z�w=!�`N�$�<֒�6N�Ab��j��1��4�������HkC[� k��������b\�+��_�`eO'S�i4��e70���-	;΅�(��^�0��q�,*hf��8�30(,+͕~�6l������[�����;`�hS t���/���j��wH~�H8@*k�?Qf����� �X�̋*��
㈷ $�G��Ih��7US���/:t'	1&G��¦�&8���Ms����n�u���5���������	U	��붹��j%@Z�̲Y�(���չA+�w*�3L��8I��4�Pq� A4r햚���r���
h��P��U�묙F��7�v��i8' ,b��P��Y����J�TH�a�Ȓu��{Ǌ7;�v�as+��!o���fb:�cJ�TA��{�q��Ox�i� "ݪP	���=�hY��$��!Y+I�~,5��6��wx߁����c��ug�K�����Q�f7[����q�Z�Lʔ_.`P�e�4X�X��K�tĔ��/1"}�r��p��M@��ӗ3C�"�:�+PMû���?r�| �@�(��77:�,��zJl.h�k����X�3��w��͈���Rti+p�P��u���1�X�#�d|E�4�w5��(�	��v$4�C #����}r1H��}���n)�@�K��c�!� ��[�iA��刴���u?�y��͎��13Ȟ`Էbd��wil�Ǻ�y�:!����2���?���� e����$�n�ן��%`��P����=�9&Rx����o�]�n(zO2#�9RV��N&(����9��Q�B+FW�vY�`�X/��D�.� $��B[T��X��~_�S�VUG����������f۶jD������	3%�J�P�.J�I�P#s���Wρ��!ysb�4�XV�GPK	���^q�!�G��
P]vؼ��o��(Sa�% / �[�>�߱;�\}�^M���!�~�����]�@l|��'^�^���^)a$��>r򇆕��w��b�A6��(�(��)�V�f��7�X���D9����GEnؗ�Ֆp�1s^�i��441��ωM��|ib���e.��Ʀ^dN��s���6�@��HfF;8�>\�N�(�����ӷ�qѠ-��%��:�@��TlV^�P���%@���6$.��';��5؛v����bbW�����q=�fc[��ٙp����Ebn������CA7q�����z@:<� �F��I��J)�ꖆ�7Q�Js/�*𸇠�š�	@2�8t�Eg��A���a,�� ��C�Ue���PF���Y�ƠQ^��D���� ���	HHЈ��bD����H�
	ȩ��