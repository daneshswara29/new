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
BZh91AY&SY=�r� _�qx����������`�ƒP  @ �| JJ
T�J�$�$��QI��AT�UB��J�44h�h�4    2   4@�4h4h         Í44    �  � aƆ��   @  �� 0MT� �F��!�I����M6�2e<�`&� R� M �I�Fʞ��=OT�M6��G�z������Dd��������X���R5�������{I�����4g>V��g?Sc)��d���1�d��f��O�5�nd澅s8M�5�c��HɪiK�&�l��4j�L51a�����ћ[+%���據g7�U��ɇK�S&V���ձ�_MZM�j��:�.���0�Źv3Z?{���s�'ŉ�l3~(�V�Y��:Y1|�_�����x��{S[k57�S{62kK�WC
�v9����qW2�|�9��{�ioh�Y�ܙO��h�h��W;
�4d�C�2a����jj�����2v�ˬ�ɾ�o���N�������ݎ�]�]K��kR��lvO���s�U��8���NO�.ʚ˚7�
��LX��\�_@ŝ1b�1YXY����biqŁ���W��'�VJ½fj�Y8;��V�N�<��W*����V{Nh�m�;��VQ����獷uz�^w�̮���Y= ~��S�7�=�s5�/���FL?:���{S�%�mf�4Flͭ�/R�wcߘtM������d갶�d�2l�&)t9�Ź��V�b�ﰮ�Gy���g��wY��}3��M�Y����t���|��+ܲ_�{���|�/]�{���:����Ұ��Юh�W���X/�7�W���׫ݟ��|4�6׎�޼���E�X)����v�z�Mb��v:]N����b�~�r��W�]�R���j,,T5I��eV#����iB�Աd0ƔK&`�:�+I��_��2t���<o����a����97�
�e10ɉL9���2Y��H��g~E6P�c�/i뫙����S���k����Y��5OR�10ԕ�����K�moy�u��t�{�bkqd�MoI�^���d�U��Y�e+�����L��X��#�2Hx�T�b�ŉY�z3����X�r�'�Y�����5]NǍ�72�S&��||��:a��h��]K(����wG�]��G���plzͨ�^w+�W����X=�`�+�2�G:�t�e�a-�Z�u̯#U���u�Q���L*��t��lq�l;�2W]4��#;��j�b���J�������4�M����i�l7�f��մq|.Oa��~6��-tɩ�ݙ6�6\�����V��ζY����1pl��%�ѝ��j���.s(��_�?�=��vrt��s5a�v2�4Xa\�j�0�h������r{�:��J�l�Q��#��tF#����x���[$瞬����z���/��4v>��ϑ��m��=��xi��Z��:�+�_$���u���ػ��]��ޫ�b�Wv��q0����#�Ħ����}�`��#Tw(i�!�+Q�\Q�,xc���Z�Y#���Lynh�YO��d�;�me^��%�Z���I�Z�GC
�
�G~s��lnr���n-�}+�[ㅒ���#菮�y�K���q��������.��g�u�㼬��w]	a��Z�+�x-kZ��O�I��YƋ�qU�onmW�`i�Jԭ��1V���h�\t\��Ѻ�Mi�u�V�a����l�ͩ�lW*t%�����t���O�¶�&�j�h�Dޭ�8�̬</z���ܯ�]j�ݪĵF���(��grq��س��U��bkV�;7q��u��Ve�%a�ȼ����|s�=3e0�,X��C(z�/M�lת�&�������5���+�n��b0İ�J�,O��O�1I��꺧P��¿�g2W�r��'�3wlՉ��#�]l\��ƖVW�8�{+֏͹sR���c��Xm���}�u3Uzo)yU�R�Պu�e��a.��U�m�lA��:#-��q\�gd�7X��o�����Qb�"�K������d�1+)��i��g�wU�Vs�G3����E֋\����nWK����N2ܮ�kF����lR�N�\fN�Y�Ը��l3u����^F)�����0ü�b�3f���ɺG]���a>h�[���1��6]�BŅb҇n0w�v���#3�a�=j�WKJ���T�J��ؙV��K�G�;��[$m��3{���f�U趶���7���;���k����h5�,�0b�,T^�	mk{�Shx)N����Et�iҲ���V�s�jYF�W�b;�#Ur�(�X[�Y�`�r[�V��v*�)����&Cz��h����B�+}���a�6�ܯ҇	V���ø�N�_��eZ��xeh�S�+�[A�ynO���J�S[ի�V�xw�2bV6N���p�Y�K���SF�2w'Ss��«ʭ��;��<M�5��i5,�,���VH�FvW$j�����ի��V�&��9�5�&���n�0���]����f�G��+�4Q���a�/]̭��_q��W����6G�V�d���V���R�e:,[��/%�-��
�FAgn�$���L��d��Ɇ�S&s��-S�r�+&Uv����ئ����9���5r���m�(���<1�%4�	�`�����k�[�K}�4e~+�jS�-���vY��s<���_��^���K&TXb�ɓ*�b��w���r^�;w���c5f�Xx�:��8U�Y%�2n{��\��b09C��Nu�k��&L�X�5�4�ʙ�Y���F��Z�WH�a7����K��a[f��VRMujW�l��R�+[�[	�S�Õ7�oB�x�k���L��2��x�\�$x�ԿjԝUw&��h�h��VF&r]�Y9l�U�k��#ً�d�2��Lښ��g��&��4k�q�iKuW��}�e�Z�M��,�S'B:�
��V��l��j1F�8�gk�UigU�T̘���y�&��X����d绅Ⱥc2���p[V/r�q�2M�b�.�m��z=E��U�]T�G�N3)���90ĥ�15����K��O���K��nK�-#Qt-��-��X�o��]t�G��i���<J�Eo��%����]��G��Dio����1D�
���l/y����1O
�+�rt���`^��7���[R����xn�|�ؿ���}������(��&�G�/�;�����޶/��XXXZ�Dm��?���)��3��