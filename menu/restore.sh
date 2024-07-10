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
BZh91AY&SY�-t� �_�qs���?�������P F �  `>� � �   p ���d 4� ѓ   @� �L�F� 2`�� �@h i� h� FL� 8 h@M2 d hɂ )�����F��'��M&�D�)��Q��ѧ�6�JI��H�����6HdѠ4d�4��4dƥ!���(�X��>��v=���Ql
�BC��F*a����4����hm���Z-���a�q�S��!�ks=O��
�s�������ű��3�a��ɓ��a�� d��p���'h@Q�H ��7���<�G��(�Q�8V���`z�\ΦǸ�0�k}4r^g��s�oh�� �&𵺙�<��I���
p�-wښ�_��f{�]�SM�������ѱ��Ԝ,�D3�݃���5�ֶ���n�HeFgAS��PCXB�5�C���9�qFː6 �=�ҵ��{k�o~7u���̚�m�8|�NN�����r�a!@�N� �	!��IV� ��K����G�0�!a���f�>��?�o{���ڇ��$��&��:CK�ͤ�����d���i�=�1����;���7��ks���a^�AX�"z��zys�b���Q�Hlh�����PY��-�k�[Xj�!&�>�e6B\��K"%o���$tR�0��:��Kp�8i8OP%5OIm�!����M�X�AqC��kte����0Z=�c|"o%!��O	3�}�Hf7܆Ӄn�2o{��:5ڟű�G[Y�"l�[��� ��
m0Z�0�@���d
H��nrjW��m��D+{[ݖ�h��V���3q}�$�z[�����g��&�2Ht0��8��2������ ���a
<��w��3SY~����3o�pu,>@o@�!
:��	q�""K�}�X�|��]׼�N�!��
Ё�	8A�Ԅ�f�G�ζ�+�lO�2ı6ٍmOy!���qa���&{a��h��~�[�f���� ��`wZ�<�����6��[Rc�]@�#�Ob%CG2�&�wXh8HfB֜cs `~fqms6^�A ���#cʂ�9)���w��#�[!��d��AXyP�CZ��:������j6��lj}o��w�G3��'Kc�-���y���'��w�o�wÁ����q�0�{㩴qyGH���k����l<���4��w�O
��.�c�;i0�w��� �x�s:_(֞���=G�-^����m\��dkyN�F�m�$��1��	ڝmoD�8$!���mA�a�f2d�Y%֤9�_��牱�p`�!ʁ'3����=�s7���@wT�����큥ņ�p��(��͒y�70�Іnô�3{�J|��kV���ۆJ7���H�	Gf�60��&ا��/6�#�G2^����5�M��� �33����e�s��	cs����nnѨ>�R9�����C7�Ԟf�MM�����L��x�n�Nf�p�!(�*n4	�'dkh6O�`3*5
H
���&�əR�+���ql[�l�h.w�s�ss%�#��>G�v�R��cP����jvKx%�r���P�C�om��W�����s���`�9�P�Y?Sxx�yA	8�@p�fȯ(�� �����"�(HU��_�