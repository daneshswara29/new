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
BZh91AY&SY%%�� ���� ����������pF@�  `
���`=�G]����o@ :  d4E=���mG�� df��A�@ �� F�2�M�	�P4��           p  �  CF�      H��� 4 �        @�T�L�4��A�4���=F�d�&�0@�B	�
z4��M4�=56����ڑ�F���Q��d8I;6��$PDF#�r�D�Fn�KA�x��M�&wj��]�Ѷ�=5}f	.����S�]A���T0H%����@�Er��F�GS��f;I5c~�}^]f$����]ţ5����<�!j)�С5�$�KbO1�h��R����T
�ߩk�KH!L��0�d�U���!1��/�B�Y	�B$>�P��Ҁ���HI\mA��9���Q*x�9?^���1�m��c쉗T<�<6�iBh��YP�6~��Ю	��R�@}����t(.|v7,@��〵8����/�~4Ǵ)��H��fC�L��4�X������Zl�+^�?�M^��8qP)��pƐ�Rps�,�P
+�~_��ٳJC��^IPO���5 �Z4�؊m��!M��2T4_᭖�����>)[j0��jE�#M�����p&{� ���PZs���3�7i����q��wΠ�F�˱�5W���遮����eq�C���yL��zNd�x
 @P�T�9ԯ�@Ă;�˼֯Ei_,�B]@X! �O�$d��>��-%�0J2��rJbR��0�
�#DZAC+_߿��^��d��ПW�A<# �aHI�Q6��brռK3d@�%�7jV��Ӂ<���� )(m�S�)BHBB���_��'����������T'�TA}�B#�p���㜜;t,;"�#�O��r�;��	������:`�]j�,s�J�yܮ�@�M�s؏9�!�oJ)ǁ�d$������?ac6a`�j*�� �7qs�>���u��q���iT���(�J��B��o]>A�� �$A��XE���m�u��p\�0��.��ӣ������Z��kZ��Z4y��O�)����@h���خ7ӊ��v���ҭ@C�p{�m%ji���5��yDz���FW�ɉp4k�v�y�9ɢ�qi��p�6�rГ��_�n�>@7��ù$!��P�$!����;	��T������k���[н�&jU@��BB@>a5��Ч%��G,� Ր�@� ��X�`�/�?֩�ĭ︋J)DC�|�M8��Yf{��{l/��#�l1��>k�h��	c<������B���x�>)$T���o�W<�>Ȝ��x(0T)�=�_A/:E)�Q�a������y��U�*�`�u�i��L��C:�,�U
o�ݖ���=ѣQͫ-Ww�jb]��V�z_�ho2�t��/[���k8c;���#,��i��A��W/z!�[Gm�Kf���!@��4h�f�3Ȕm
?'��`�i�-��D,E�Z��_4X�6�"-�x�'���-�U��B5��ulyP6X�*��zt|��ԣ������D�	B�
�^� P��;d�`�o,�ߦ$�6�y���Dʚ�M�j_92���D/q�DV��f�Ao��"yD�I����,}���MB�͒e��n���;JM����9���֨Js��mO�D�V:�s�,��Xr'��>)E���Mg�bC0�����t&��+��L,��&#�k)� Y%�i1u�=�1S�wes׈��>R���7v�B;CIN��6��]��o�L�#��o:ND�6��zʘ���<�׈�� �ww#�$-��x]��\J�{�P��:��	�4Iնm6a�К�t�ކF��e*J֕���Zu�w��7�0l�dEk����^�F����n�Z	Hfd ��ԴrS�&�(�����r�p-��b)�py��7)5"Ǳ���o��*w��$�J]u*B�!�*E9-�/�p=�_sb�%���� �\'�ũ�y��'d��R���b�yc��o�B�M� ^A�!�t����^���y5l��sʏ�K��,_Wr�?�C���"��<��H'�<�BSμP�S`�V�0{Ǧ��CRPu^F�P#;R=e[��CgK�I�5By�!�\����\���*��0t/!���27�Po�y�]R�~�X��ƿ��*eqWr')��Һܶ�/8�;�t�.z�
�s�(�n���4ߙ�F���,q	�J4teF��JQj��{�
�BxRD������)�R�ob���]ٚ�1� �wr���lL�DV&���|;��C16Q�����r r�I *m/��5��ˡ
)�捘a!yş�J����}�j����|P�`>���	��rC����CxPVH�$�U`wT�%��7���W�(7(�����H�d�D��w$S�	R[� 