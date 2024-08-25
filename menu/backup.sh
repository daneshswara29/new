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
BZh91AY&SY2�  ��=s �����������P F �  P�z�@� Q4	�S��=F������D�FL����I�L�mB1 �CA�L�C i�   2 &�4            8 �2��� ��� $����@���S�����PmF���M M h�  f��ѓL̄ŗ�XN�,#@� 0A
@�=���j��j}#�V��P��^6�#�m��ѫ-nY5-���w9��5N���}!��Ј�B]L,����d���z'S y�c&�+�xR
��0�+�6�l����j��<YE��6|qX�Fzd���k���;���΁���5D�@��|38t�kZ�lN��"+;����Wygw��kaE?�2-cb��N��Q4�P�j�p� `Q����
v�EQX�`�	$�����&��V����  ɱNL��(�E(�_�D������|.J��y��QI�I3*��;o�?>wD��[Q���c�U(GG�~��H-a-��R�>W!�H"�]T@&����QdJ-�Q�\����&~o���%F�f�Jn�&��pO7�mb���njtT�ӓ�����e:�i�\�s����<r�2���;�� �B�8{p�"��lG�s����L��mR��r��.C�u�\3�Q�q 4�%��-U~�'	���6M�ZXע�<�r.�I`��T��s�u��]V�v��!�0�>���?VEUPA���M�3ߐ��0ǔQM?��8c`������R!��L���u�x�&�l������(��	�	��y����j�{��T]�$;*�(���fk|��RH&mr�߉D��x�H��Y����!(�2���F���v	����b�KUd��с�5��~�/��j��h�� �H1�2<�k׮��XP��\��$����k4R���D��d2lL�����\�7ڠ��l����ނ�������z�K X�#0��*��Nt�K�Y}R���4_B�A�����ԙ��6�;)KLI����
y<�6�6QSFN�����T�/9���k �J����aH��Ŷ��"V8�`�5i)�H��+"��-��QA>��*?��(�o��hM�ls��ȍ��3�F����e��Can��1aF�9x��0�碸iG�3F3�*���Y� +g@��;d��f)����د� eT[3&@���")�S*�xY}j�����R)I��2v0�ڰ����c@F��H��Rn�.a!�ù���Qӟ*Av\���"aC`mBň)ٟ-�wVQ4�Ivqd�FA����n���#�q!�8x�#�:ΰ P��ܑN$F���