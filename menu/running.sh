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
BZh91AY&SY�� ������ ����������P�F��  @ `�^`|�{:e=�Ȣ���@ 
$B@4hd �5&�dmH�!�L�OS� ��z�P�h�EOL���O��a2i�4d2ddƦ�@d��F �  �               O�����G�   @       �B���OT�2'�S�6��h�5����4�hh�2 F�D��Li)����&�i��L��)膍��  k/b@m`1������g	�ib��G��޶�vϏڢ�ނ׼9^g7<�/6J���ym�+3QF܍w(ׇ9�� x      i� ئ�&>$!���9��<�8bPiq����d��5�[���i�,y�fx��Y|�;eivJ~���k�jҴ�
B82�r�94!�*]�_��8C���=+�O�w�l�n�zE�'��y�h�g�����`�/=�D �RR� &k٫Z��U��v�s�����+�����y���V�_���Z(Z!0<B��L�1Q����!���
� ��Ґ|�aP;���6="�I��~ L���x���h�!��߄��l\(��B.З=�lh?-k��{�Az�А��{��)��3P�h���� <Ysj9W�l���HA�m-�X&�媠�r"B,��n�|R/AƉR>&*�&+�aЄ�D�����?��u��+|mo58��2t�.���:�J��U�&�b�ʃ�D����*lr6)��<)ˑ<Cp�z��e�E��%���_�hL����0��q�$9Q��;Y�����c;�1u��}B'C@S�ݼ띏ĦΡ�"�z�_g�f�&�k\xJԪLܽ{�T����*sm����%�k:�,Ul�W
�HX�M�wy�Th��m8V����b�o�y�׋�ɨ��/Y����}��� ;H���<aǻ�v3:��28j�&��2N���$5�X��i�\&�*4z*ӎh�� Jj�2����6�0�(hE1!e6k�Jha���T���勣���>M�m �� �H���)E�!��~9|m���,٘ؐ�����)(B,P��`eF �ZA)JE(Ғ�x��V�K�qii�fiHMB������8L��ԔXP�'-L嫰<��v�QH���o��Xī�Ǿ��/�������V���b=�:���)�xZbÜ���'D%�yHԠ�Kj
C�ex*�a�G8�h��e��tL��C1�ˠvW
�$�[�\��� VJ�7Y�gY�	"A����&���᢭��u�a�A����X�A�@c�m�b���?6&���#i��k�5D�  LD����H�8Ǔ��W���o��ufA�X�:�JZ�t�U�-*p!���7%K;3�r&�K��0~�� �#�F��@���pj��l	�2j�[V�O^���+㜗!��/R9�L\��㬢F	,5��CW�^�>L-ș�[��Ehbą�1m@k:s̼Ӣ�Ya���x~�.`�	d`z�8����I!��[�Ya�c���e�B[�xf~��g:Y����@f�� �D���x��:OZ[HȚi�(�%��*H1"��� ��^�3�������ZF�/�b- \���`U``�4�Fږ%�c���8��@Z$ E�����Ϩ&͑\T��)����d�66���aO��4p���	0�p�Y���YL��`.b�4���;U=�����t?Yvj�p�������`a�E"P	A��~�ux3 �Y@նO�a��5B�V�$��"�0��0����.���@�ν���5�w똑଻�6b�F9��7�{�_���y 9)�V]>�b��;��u-���@��A_��Ǚ�}�x�)%��DK��R�ї�i"�W&�.�2�5K�ie��mR��#����� �����T*s]XX��pc(/m���,�6�(��+^+�s���c��[�WJ��1#��[���!��,:ũ-m8!Y^	X��.[�2�n\A"�3�qd�4P��e��	�I��w��.9�|$!n(N^�֋){�I�.���.c^SiN
�V!�,ʆ������0�a��A�*�T,���O�$v�IM(d@�;ϐ��	�Ͷݡ�r�9�Wú��V5D�7�A�d�8�������y�t����3��7�u�,�d4��d�J�/��v �#vPe��ȋͿ�S�R? ��EG�;=N�6��,ɩ�m����ک36 �'N��iNya��x��F�<G �x�<��?R����9�4�����ȐL����~B�P�;>"�/ڴ�X�G��}�~ h-���y3��m�7����)���z��L��b�B�L�˹� �XN���� boP�X���82�u9��vi�˝�6sb�:@D%�$3�b����W)�3ǚ�f�
��J϶�1P��_����m��"L��|oXa���Hb� �����K�m!$�a��m����"ң�S*7_�����r�6ᬞ�O?E�	rKxk���nU@���� �JJ�$k��JZXԴ�3	��(�-���Ε"�.E�aƩ[m)	V �_I�����M.`°@8�,�L��|&�a��2[��)�&D�Oc~�c�����f��@T�7gf��I#RJ�B��tQ��G���`oT_|bCh/O<۱�I����`���}\�R�3^���� )g!P��r]�q
H:�'.��R�K���mhc�K���$i�B^i�Z6�f[��!P��æ/���e�ԅl	΂����L��8�8 ����8kK}*x@^��"Ü����h3��D�����4ʠV�k	D�]�`u!�'`$y��\@���_�V^�S�'�8�=gJoj7z�p�;L�!����^�H����cP�kIH-r�5Թ^���c5"	d`�O��XJT�m�,~K�8lm����CBI�X{C�75�����"����q���,1�j��'���U�:�s΂���H�,��������g�� C[���;$x:o�oE ��s�޼J ��>i�%�"N��(D���Hmɲ�D��#�eΛ�V�"�ر֔�z(�H@�+�J�wצ��Aq&vb��z��CM����J�̨�f��8�l
���\�'��)��9���#��8%v!C
o�-����5��4����Z#_.\��l��>%FY�`3��,�I�-��6��*��� Zt�� �z/a��'b�nEg8�O�
N�Q@���zCH��w�dҽ<KrEZ~��5}�Ib��Gx�=�/"J�t]�� �� ��m���6��K��/kB��L��[g�n�9��Ye�zb��G��rB���&����r²D7�Q1�D)5�M�͎}�y�hFYEj�
� �����eP�J{A�4e�!q<ҝ���(�r�H�'(��M4�cLi�LI�&�a� �V�3�%h�&�G�(9�u��)h���xʡԙ�?�`�P��V6pu��#�EJXU%;� �7B�l䍗���I����rW"Ā� �Ccccd����[���D�cd� Wd��nك�I�J�=䗨�:1��ňD����X;7:@Tm����`ᅀk�2�^�a]�Pp`o�Z��5�u9��D ffOV����i�[x�c78�����8"-[QcK�")m]���)�dR��MZ�\I�V!����*z9�$�S �и4�R�1-a��_`-B1�ӌ�|�BH�b��{������`�Ĭ�!������'���js�kcf��L����t������H�Yв�'��˯�~0lW%�0�o���5��.H�l��z�� R�%�U��o�h�����N�AR�l���_�| �zx?i��ʌ���̪�ODR/(��� w�{���߅A �w��N����$����_ �B�
�0��"�RH$�5����H�
�5@