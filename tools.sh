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
BZh91AY&SYÁ��  �_� �}���?!�����P����n�7��h�L"i��OOT��L���z�m&��b��
�2=@��      dS�BiC�4��= �=A�  h1AS�S�=�4x���  � ��COSО����� h�F����o��w���AboO��F��N*����>r阴k��+�%�LG�9�ݹ��� K�^x󩍐9�j� ª�a��I�B �#,�P�W�c&9:Uc��IiJ��t��:���)���_NW�r��	$�����bS����j����:3ݡ��%M�X!�[����hѷk��(L����%ǰ�2�x��p_�
3*�,b���a*G�u�ˬ�͛�9����Om�Z�%̯H�JZI`���
Ŧ�vT]�}x|�\��V����e�H�&��|��贙2�+�g�S���<J�z�L�w0a�%�/�G�vm����NM~F�QI`) N�Z�-F�(ۤs�Ň��86������-�>�8�����q���}��{�C�'�����ώ���k<�hj�ǂ?�	�"��^c/�Hd��3 ��bL����1󕁴R~+���(5��D���P�˥��A�hc@�K�^�a�q��������M;����xR�n�8@���+&�,d�6�
�I��������3��x``�n�dVf����`"Ҍ$~&����<��@j�� ��įӠ����J���O���ʑ�����P記 �I�%����>�zl�bGB·;F��}�Mx��fv �aI�c�����n�g�&��py#��G,�uo����e��a�"�lpˍ�>쁣�
/��H��q�Zr$g�q	΢���'N�0��}�3$��!���v	!�	T��
���9��lk1p�?A1B��=�lJCayr�=]�ߔI}�Q�H!Q#\���7����u�ܥ,���}�X�T����xo*gf&�X'��f@���Á˗о���Kw"q�ܱ�m﵊ ��AO��D�ʵ�l���3�(-�FA�1##:W�s���\۴LQyܳ2I{����̨�r�F���&���l������s/�[陟7��>EJL�%�Ɩ$ꨪҬ���� 
@�lX%k�P8�@H�;�Bg X�1�d$T<HH.�t�
�M2��#Di!�`T�X
�̀�@<�+V-5�D����%��5��3sl�#��@�<�tA�?.�<?��q�c�0D���y�C��h��H�L�'�n�$��A��]��BC��