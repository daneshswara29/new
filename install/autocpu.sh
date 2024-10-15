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
BZh91AY&SYt+�E Q��!x���?�������@D@  P�J*   d�)���j<��CCCM4 ��� 4� ɦ�@�d �@4i� h �M42 �� � b�M @2i�� �d 4�h � D	�I���&M'��Bjz��⇨���5G��L=�W���Gd{gu>��J"���� ���>�N��ЊG��q|)�h�K
ȏsƫ>/W;��c���|�A�tY�?W���I5O蒐��5���4�!�����N�t��9��G�|�e㑩������P�\���<Ʃ��N�*"g�
��[_L�]�c�`��Z����ӿ�g7V`'���.�Q?`����ADpw����N�@_�("t��~�������ra�;`)�k�נ�.��H��C@h�d�:��Y��f,,9}�>���( �_0";���I�$8�C��fG(�����l��͉,�&&�$��˨*
9@($hG�@��[����P�I��s���4������i�i��Ӄ�N�������@@d�C`��!��}��i.�CI��*����B6�bSE��|�֚|��F��	JW���kf�ɗU��(�'�&��m@��^u�g;Y�n���F�tF���&�����r:�����.rR�Z��+�f{�c�{���h���{����ג@9X�D�қ�����P�/�xh9B(.�2��j�		��	1	���%��9�3
l�צcg��a�?  NF��F����{�@B�'P� t
���=Ɋ��e��vK��ox� �#��v&KԄ�`Π���2k���M ��%�A��Wo��dB	{1�A,���C!D�j?���6[з��hJ >��m2�f�k%蝚l�~ 2V���v�&��e��D�{Y^�s �f���M	
��[j�x#2����Fy�y�֖����b�juH�q�#���Ddɘ7-��Ÿ2I�	�P3)��R�_/�&�U�2n�G�-J�uW�Z��ɝ��G��:��E:�#:.�����|ũ	����/�&��
vq�ހ�u�m��T��FY1[��b@�0ײ&�(��!0.$o"�j�&�4�YT�s�a( qw�Yf�P���T:oS�Bʐ�rS��pnۈ,Y6.��H2���,j<"9�P+Ii�5e�p<mW#CD��E�[�"�J�M�b�B��`o&O�Vn�S�/:X%-f�9 ����	�����`O>�YY�a��L��(�0Ո /���eP��X2�y4��q4�"#ytA`Y0S�x,Ņ�J�)a��H�-�O�SH�p�mDR��! ��f�%�fU�
1L����ZQ�!�g�Kr�i*kdn��d��bBaT�!���,��ވ�&]_[�˯��>� L	`��{>�H��a�?aw$S�	B��P