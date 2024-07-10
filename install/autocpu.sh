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
BZh91AY&SYr�� Q��!x���?�������@D@  P��il��  �$�e0�yLS�mj=G���FF����<�h4hѦ�FC A��  	Djj=M!�  �@  @h�@4hѦ�FC A��  	" Mb������d�����4h� �0�c��Q��`W����H�EH������zР�dB�,�OyDr�<��0�4e�ti1����49�����+�������5/㒐���,�5Ҥ��v#E�Ћ㈳z�vvF_�,�k��~O!��Ũ-�GA�dR���&7���D�ǩ��bE6���8��t��C��L���W��)�	���e/f��GR0@P�iD����(��
�p�`w8oγ�5��-���{�/��xJ���f��4�����T٣ ���qt�3�����M��N�: 
Dv�|a&` ��`dv�q�̎A�>>W����s�{z�Șȓ,�w�ƿd!�G�@�dϡ+ֈ�I@m*T�G�!M��P�XW��rә��N�:\G��!����'F�s��5��QAlBÞ@�U�쪲�nbħC}��:i�5#^�?8�Q#\�2g���SD8\�����wg�56��Y"�c���]��V���=��%(����FX�<)ag��O�z�ֳ�b'��4�A/4���eU��IOq�˴@����o�Sncӕ_�jkON��=�,Y�A�A�
���!�F�J�K_�ʔ�[�*�Ե.��T?����6k�
�7G�����u8s�7�"<Ec�,����I����e����w&΃�p�tEd�V���:�RW` ɮp��$� �� ���*�7��%�]cm!+�Y���$:Q�f��U�!W�^,���<���00�4�Y(����e��%`��3'o*lN&]Xo;+��R
�9i� �!L�Ѻ���.U[k!�����.�� ���& i�T
'�oPqB����0g�2<څ�d�$&Zb\��C1B4�~x�TR@�Բ?�(��D��DlR�k;������Q���"�G	�,��E��{J��&P�u�bh�'A���� �&l��*���2� �i����N�L�Qq2!0�$o"�j��Bj��*(:��EjD���@W��S��7��l�:�tp���5Y�,Y6.��l���,i;�70N*�Aa�5E�u^rV+Q�H��E�O�"�*uEja{aY㚠7�'Ӆ��.C�.��
	�Z��mAo���	�с��⦖�UI�a��>d��B:�5G �u�b�\�+E�+f�i��h��O�� ��+� ��P�qYh���x.� �bY
1;@2�"��n�J�m����z��*�V�r0�c2l�gD�J	hFL�-�#9*efz��"�+�2B�"8�/�d8�z
������ u�˷�v�����	� E�j�� 	DQE?�ܑN$�f� 