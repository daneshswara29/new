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
BZh91AY&SY��� K��!x���?�������@D@  P�+MuL@  BQFQ����OMMOQ�m4�PL�����=L��Jhɵ�   @�    T��`�h��h= FFi� p�ѓF�hdd0�2 dh �2 �A Љ�����̩�=	� �F�jPj̆}�����wA����S��e`J F�A��zd���wQ pʨ��h����U��*�PY��q�I����a�;&�p��LFt���*�2�#,�M�Cf�*x�i*c��s�ǰl��&v(Eh��+$h�"ä�wJ�i�X��J���]ZbW ��'/�p�h�g?V�g4���ɑDF�a�#H�����(���`�Lu-&�� ���e=$[�}�6��cYt
�Bq(�e�%��ڶ��u
*��|��|��Ok�)����1&�8����0@�F�f��C��~����Ȉ�ԓ]����g8Dz�>8��ƀ��R��� �� aR�:T�󝮅<FDQP��N�`�'�E�[נ" 71!�(#/���IeU�#��@�a\���e�H�˒��>1u�GG8��7�_-[y�Y/���V��:E��=�.�%�!��Ab¡	�*�5��xj��#'���@�Cr����M�n�q닧.�7/]I�����c��85J�%��ؾ�����+�����&�C�mH�3�[�=jY2�$���%�;L[D��o�cD�*lF�A��AC<�$���p����"GZ9\R<x�މ�����4��Ň�,��"����|�PZ�Z��K�P����R �Eݒ#��bZ�L\K�8!�TpVx�#@�s�J���Is�]�����]�ua<6�,ْ���Q���$[�b,Ґ֡;htE��ZQ#��ݮ�O���$--A��r�ۉ�k��X���/""h(I$��F ����H��i�//G *�ț�
�H�"n� �����ni��v�yx�i&�D�l�����#g�㑬�dMζ�ߖE�֤_]�6��OW���M�q�Xh\{�U�r����B0^Z� f���%��C�)A���zBa�M�m4*�G@�����6H&;;R5F� \�Jh���8�R�j���&"�AO�\�����B�	� roo��@���� �4�@7�ؐ{t�a�#x�"��.;C��}�RN�xf�̖�F S�"�j�U��z�i��v�Pٕ�&�>��]�d�\z� ��DT�(�腺�E���1��(%N��Pv��:@��3����j�8�� �D�Di��dc A`� T��ix�m�!���E�f)H� �,\���$�����+���ʴ,�({ѕ#4��H����Z�6�pÐ����V0�k��^�=���!��-���Wb��ݛ^���u�`�0�̾�a"@ ����H�
 �z�