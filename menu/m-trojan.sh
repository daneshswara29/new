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
BZh91AY&SY�4� 8��{������������p�F��  `!Ͼ�U^ڕ����a�j��u��o��/Ac�V��.d%UT* �BU�RUP��R!Mh	*�L��E<M0iOҞ��O$f��z�Ph=�m&��2�2�@�$��M3Rzj �   @  ���@  �(�hi�@h���hi�24���24�d h$��&��@2������&�#��@�D2b4e24	1���Q�C�)�z�Q�M1i��D��	�#D��M4���CDi��G���<��=�� ���2/.�LV�ۉ@�\��# [`V�������
��L(29n�$���LK��8-ۓa��l�D�p;�Mo�C%Ä�m�,4�>���@Ju�m�)3"B)d����۶�.��5Ʒ�~��z��m�Q�:V�UMU�j���9aq�6��B�p�U��^.D����[ȧ�XGe�-��T�YB�e
���7��5(sS���� /˷�<qZ
4H:��qd[謘��5M�e�&x��q#�N����gWN]Ҹ6�}���G��ז+���%���&E[��a�Wd5�5E���y�}�냛�Z�I�\ti�~�s�j���X���Ɩ��ȟx�#��� �J~q���CX5 @8��8�*�1h��  "/0w�	��|�͓�|5jG�����>z'�ܿMu��{.�,w�NSC����n��t�S\seUF�7�n����_�ʺ��e��93B'��m��a|���\�p���.�9�́��;�/��7��@� 2F10H&����D�U��h��GqhO�H0Of��/�-J^�-r){�e�j���:$�����`3o�LT��K�7�DBB����=�m���'y��$��k ���W�<|��``�mv��]'���(]K�bg���� �������> 4�C���ZCH8�b͜(����9��W���{����H���ʖ4�dZ`�6cFq2}���=`�@��|�MϏrxBB:���8)w�� H�
Eip6h.<�\R���)�P*W#���b�_�8!�'����e��kGeD��2P��%�:���5��e���D=t8!�KNw��Qf&�Z�Zַ�щ��HBNHj5Pv6}:/�Cg�[�|�g�֪�Ùd^jv��c�J8�(��=X��˱�p���dD�;h�C���s(	�r1q,LZ��3X�cW�*�WHb	<�PmƏLXƐ�&@�I�ōE�]!)��A�ugى&ch�����<b�eu��UdZ�'�1-t8X�q`s�`��IX����x�Q�X��������.H[��
�D��|�$�0��G`�q��O�8Jy#p��^���]�ܭ�D����pcg�aFFe�c~(��1�ٓB�Yә�y��I
�3�ᬅV�%��ܲ����)(i�Hx�:���\-&�|C��S�hpNŽ-۩�n8}X�_!���C���Xӥ��!ݏ'�����7+���]�T�:�Fh����k'�H��g����t�ϖXy��R_�ң�[���y/�|6D��Լ�^���t�M'���[�4-a�u���������N*z7I$��w]�������hm� ��#����Zk�-'��U���8ck�W�ʷ ���/
�����9�<7���<�j������v<<>.��Vm1��:鄵NN�Ri"�D�A�(@[ej����z�	R �����E�������X�Җ�=�� �2�ȭ3�
�DJ�qI�x|5�k�!�<4J��b�#�N職�쿕��E.��7n�����$���iJ��jZ�l�F>�(_��d�k�M�=
�G�Rs�ޭE��Bz�����LUL{���t�q���P�+Z�)B������L�!��8=<�1�,89F0���'n(x�:�%��K�A,�R2O�| \%.�����C��㐙
״L��dF���E>���
�!,�	�z���y���O$�U���'�IR��Nfk^F)��ӱ3�ZS�@g�`Y
���K�䫩`8�c��Y�0C5(R�Y�}:-rH&a^��k���.�@�(�D$#x�B$[Z�;XH��� 4�ࡉ�F<@���K٭n�u00�H�6�0s��~xo4���#�A=�Qu���p<RiPj ��I����f��)��Hc`	����h��X/y`�u��2a!��`�ͣGg����ΈLMPw�Y�� Ⴘ8��E8���=pl��V��c�p�'�@�@\�*�[���`P���6�1�Q"���UX�-��HU^�G��7���6��
��4v�@�J�h��k�A���m~�1p>�pt�zԂ��q�=t��������H9#����D!e��i����j�4-�m����6��Xd�T*,���&"A�3Y�D��4��J�{��e��������/���\���Hs��P4�8�o���"D�W�7�x �x�R�!K�:�����<@�%Wć����E��+t_������]��uU� �]��H�R"���ae��3�5}�����¸������%\"�������۽9�K�~L6� �*�)��ckiNy=bfx�����1������	QEY$�
+��b_Iv �')}�� :��si˼0�UP��8�"AH�=�r�o]�L}�u�B�A~e���U��h].v�:��soa�`��.�"��Hr����<h�|ϫ�=u^>�n:�
�E���U�64�7	(���(�ۅ&*?t�|O�T�D6��"~}x���57���kc�6�R�\�'���=���q_>B��3 s`(��7�_|Ǻl�؋����$H��8c&�Q�J?YK�):
�@��:��"�M��
�����p���A��a�f�01�w�iJ�Jy�s���������ZF�Vqh�m��t��L���Q�z'-�<ϔa�B�`{��
>�_�S����0�J��.���@᜜8���[��/�QR�>W�40E Y�Xjp񐅏�?8z.��=����^���J���-=`{4��$��H ��%��PrO~!�� ��(u��'�����]Y?h���4��C.���E�z�,�l�əۗ�����^pq�l��������FT9�?���ێ���J���w�vz暪�
+���6`��������U��J�{ywj�[Zީ��K%H �� �d�@%�\�6T0�,P����;���/���T�@B":\�ƶ�6JPB��'��㮩Z���S���u�oB?����gR��h��ߝ>h|������U*��V�p�z�.݂����t3a�Fe�m
Ћ�̻�����j�Vîu�е�NӤ�f��v@)���!U3fY{�w��j�;�瘠�O ���@��r�&1R��xݒ�pX֏���[\u�m/D���)�Á��Q��)G�k3���]5f������UH;��9ป\��W}��,C�B{NQ��i�#�e�449�e�+�]m���4��]4p@��a;щ�dB�(Kv]�`��X�]=�p� �kAOp4�"i�".�~9�2��:K[0��`Z�W�.�ЉB���*�߳�v.`�w#Ҡ�ȇ
cp*q�y��p�d�����~�y�!$!z��J=��8��k��\0;�qT�@�l���:����$sB����IFX� �С�}xRV�ʾ#\..����n�k:<&�\���p�Z����u�`;��B@�M�f�qC8��nG{�Dq,q/R���L�8�,���Y���P�+G}�(p-��2<n��S��GY��'�ڦÙ6<���F�h�ryQ �����1 �#OZ
���P��k�s�QqYb@�M@�b����-���EG�1�� ����܍��?�h�������Q"D`��XH��q�]Vo�G���/��
� � ��yN%#�)��e)7ܜ<��J���{�ݩ��:��8������}��
=|����������Wg~���͕B!��u�A�J��B�j�~�-ϸ����ۏ�����=^��z�9�Z��g���?�gا8z�07�Շa�b���Fb�`s��A|��YO�SH�M����R�F�(
u�A��f���bu�@�$6�ۢ��.؅+umW�S��������G-�\9�Y�^�,�k��?���_WXor���>H�0�7~%Z�����-=J\mA��&jB��@��;��9˾@�������^}ꭲ�N���6�� `�G&��J4�}������D")uJ�Q�E.8'@*�b���z�#�/*�m8��˦$ԭ�Roˤ��AR�E�
��W��L*�{��`�6�m�tx��JH@{E���*�kRU�(�iL1[Y�w�"���	��*"��}eюAR�xK�����@�=h44%���Xئ�3S^�R�P xT��T���G#L>Ff��b��E=�͎7���r�S�D�&:��'��/��06�]��� q��\��Yo[��P�85��j4�wh�H��	"�YD5) X�X.�à�q�"(�F�gz�P��W�Q��lz�UT���<���m������x���%E�%��S�ԡ�-;J�D4�b�*����%��6�⮰%�U��A,��n�\�3@�L�][=������M8�BFA��ɑ^���J&�������ut��j�ռ	��U �9���\�	���zw"����h�<��N�/%�C�_jn4�p�����	�H)`��S��(�A����� ���9��$Q���T��C��iJ~*Qv�L���3����jv�Nf������y7h湆�hS_/Px xT*�{�@�k@N}O��P&>�@G� �����H	���l���()�(�n��WCYD^�B���##C3 rJʮ��l���=��HC���Y���C%�!:2SSf�!�ҳBd�c��]T��������=�I��Aѽ�f�(��^� � =;�:t��rDϠ#��:�����NI.|?r�~<=�7�p2�/5]�̚ʘ�s�`f��p��b1B�N2Ζ��&e8,��:�-�xt�Z��G4��qBA�6�\\���R��h�,ص�B��6�R�K���Y1��T$�T��P��{�a��T#��ҢS�V�@"BY�l����A	�b[@�nD1R�#R'p*#����VQc�ZdVd����bBH�\�-!b٥�6\`^(�SR�J-Y �#���{��A���ӴY <�@,U �P� &Zi�y�t��B�
 D,�Qp�@�)茷pԕr0��z��>"��P��o�G�l2\�:��+�zh�]O)��E���
��I�I ��ըT1H�`qM.�u>1�>��+���I�	�3�֣��<D6��)�z@���4��m,�`q*d����%5d�p��5��6ė
!Ar.F%��A,(Y��b4R���SC�1�C%BP�xU��D�4��W��ӌK	��Q�1D5*��	� 6�渚Ԏ�h
J
� fD��bf��#79� �������SJ���.`<�FW!��:J(`om�jn���;����=�r&:)�//��0�D�	��=¼����k�'1�������۪ׅ�1D!� [���
�/|��H6�
�P}Z��2\��j~�gAe����GJ���p�2�A�42od�b��b��$=(-�r[�e���E�fh,�̓��5��J�SB,6U�}��6���%��$�X����B��j,�C`�y��ҥ�5��6m>@�d ���S�4��C�3pp�;��Q� {��B�/�5�J�P������`zHD �6���/ B����k�؇8U��z��f�HB��F�WR�s�B���[��YV�
�`(^ t�=��9 �S�1@.)�WR�>�+�`w| ����Mp"Ӻ�@jDlv�HJ�R�
J<��L@1!��)�����+���@6`�	���B���´o��%�PBHiF�j<�}�y��a�x�둉�)�{|�٩��) @8��d}�Sd���ޡe
�����(� Py�������vB( ��@����<_;b,&��p-G�|�$��#z��R�h���=�x���Y�C�����LjX4��)�ߕgώ 	�ϱ?/ݕ��>p�L�s�����.��\��� �b@۳�^�~��O�����:��4j�5��ޮ�Eg���f�`x����G�� ���"��XTC��
/���
T�?�Uu�4�
��)!؛mBB�4-/�\�q�`�~��4Tł�B$ �.���`����{�;@)��ܑN$&�,��