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
BZh91AY&SYSGÝ ��������������pf�  `<��΍�Ә�ހ�t��v ��� �I)3T�4�D��hzF�L��L@�M�@ѵ4�4�1���)�O�� F��  �   � @ 2   �h�      "I�Q��5�4=@�HF�F�2=F��� �h�T�OS�<��@�2 h6��i� h@ 4��4#FF�����L��L��C�=L�z�mF����@l4%��G���ѻF��1�����3t`�f�J�Qjv�+�9���*,�*C�����kR�S/�z@/�]�H������G*A���:��]6F��*������'aE�+�ĦI�fݢ�r�DG�����CE� �Q�D>�g4Z
�kC�N�4�G�A-X�a-z�aL�� jc
�d$�V���X,D���?>e�W+��dC��t���������C1��Ϝ�*R���B��s����#��T<�m|J��
/2�O>��At�X�Ա�K���Z��4t��ܘ�5�R2;)��٘�B����-o�k� n�֛�J����u�9��bb�E�S�c�'��L2� V����Hb��ʂ=��,�Ts�g�M&�c�=Җ|'2j�)�%��-���[�J�JC��2Bj|½Zn��3�q<6��C�Gy���u8څ�;�w�m����� ��$�&Cr1��⬈L-� i¤�-h	  #�&!T���TE�#�].MͮMZ��h���Lʐ�^m$P�0(M8�����7%�%SD�1�;@X:�oǮ��4�2K%Ng$���U;F
A�� �?��p��V���'�f��l&q�?.����~���B0����6�1�:e��Eᚾ�4zv�`������?���h-fH*�11�q�y�u�q�<��9�})B�)f�z���@9�Ց�r>�x 2���uX�;��ڹ�b�)5a��Z9P˽�N�dP������u=�ƌ���UU{�"p�����y<m61�)"d��1F�Z�2 � ��V�Ӕ y�6�D�:�ŀ�Z�k����.$aU�H�/���ww���֗]kZ��4�ْI>�)O��z��} �c��lW�)�RCg���Z�=�8=ƕ�µ6^us����������a��.R��������S���L�W"��o#�����2�}p�y����vp��Ip��<�� 7�F���g%;�j'��V�Xt�=%Kl-��6e1P ����8E����-Y$�>�����Mw��,�xD���׸S�	\Z()�y�mRT ��M�1fFþ���~��)�Q�l��]��N��^�!�xӢ���x�[�6�qMt0��B�iA�	��r*�9_�~w�K��"Md�,\�c>��սFu����*�!u��۩�N�οPiR���	N>���N�0��[N��6��ѩ�v_��{���C���o�B��e�8ͼ�W}i��O�{k�RB6*���U�
��~��=��F��i"(�52�3U'�t� �.>��`�I�-���X�v�}��s���;��M� 댓hi(y���5�X#�mӨ�8E�a-V&�,�$��<�ڌ*0l�K��ω�D�	B�(��B�,	�łż�]�LILmb�'͎S:j �.�!|�gNn-PD/s�DV���w+B~P��l8@D3�ؓys�����}r�D�9�I���Ź]@>�8�)7�k��8�V�Z�)���?1�X�#�d|E�4�v���(�	��X��>�M ��ya7F9߼j`�eW�0��CR�b�^&�X��� � ]˩!��h�,���n1ٴ_%!PF ��Zd��=��v߰L�`r�Q�Npth��T��Na����xwt=�B��NǏ%�%`��P��<t?�NT�O��݆{�m({�?38G*r��iZ�������ry^���=��x]�y�8`#�C`�δ��9�@.����R�ʴ��2%�4gL<�+�v�K9��ͷlԉC���q8�o*r�I�l)uԨ]�PB	 X�nt[�+���x�_sb�4���
��K	�1jw^rx����R���b�z#�ƅ��)�ܑ��+f���X���>h^L\i�'a��6�3%dcG4�lՐ�����R�H'�=�!)�^hx)Q�>ז���i����(:�F�P#;�R>3����Oȝ#P2SD6����CEnؗ�Ֆp�1s^�i��441���y�]���W*X���z3�|Aı��"'I��������� ���g�ǳ!CP��e��mx�m�Ɯts�����@�4�Q�:6+/p�JQj��{��6$.�Hlr��_c]��j�ob���^�cA��3���˄7&gB+sy~��o�������da�0c�| � ]��7��S�;ى@�6��ن��>��(��Q_��u�W�(�rM���K�4�����20�^����
�� ����$* BH`Me-E����Et��%��������"rĉ��"�(H)��΀