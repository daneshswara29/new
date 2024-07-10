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
BZh91AY&SY^��O  �_� ��7%�*����P�y�	 ` & 0  �jz��  �C@�F���M@dh2hi�L��LJ &�ox���Tɦ�F� yOPE$���i�ODhh�&��4�G �4ܥS�(�	&�е��R�	Y1�Zּ�Q�@h�|B�$@��9ȁ$�׈�O      �<�Mg�����H�Gl����-��ͲQ�\�̓��"���8�gt�l�E�1��F��Z��(���o>��=�������kl-��-}���}Бϼ>0A�\Tq�n!B�!G=J)JI%���4+BBBBBnhS�x�}eZ�����=d��E'�>��GQ�a?	N�&2uu�Q�}JTh.��C�t��y�bI焇F����G�Y$����x�Q��>> �(���Tk]}���Ӆ�<ޝf�(Rk�,�`{L��h�ioQ���`��}J8_$�I'\_�F�0���G��W��I	c�����أ����&r���@, �DQ�1�C���J5�%cU�b}�61���L��E����	��+U1G!����y!!Q����2����f�moܣ{E��%r ��:<����53f�ɠ�{�Asv⣍⣽�Q�6(� i�si����u���Q�Hj�}Fm⍈�m9�E[Yۤe/Q��F:)ţ�r�Ëz���f�I��./�I"}~[>�,�'ce
<.&�I$�hأ�G��r�����(�{��N�އ�.�p� �uf�