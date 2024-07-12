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
BZh91AY&SY�ip ����������������r��P��@ 0 � `���Z�f6-G[�n��,�귳�/ozO{�G�[ovpTP`�thP���N��ZH@�jz�	���d�i��Ѝ���4�&�   �i4�AMC��=z��ѡ��    �  �L � 	�   L   LL  LL@$Q)�C@����44hѣ��@���  h�j  �P�E"h4&CJoA#M�4m���h�1F�$�='��=4�4d   �B I�L����6$zM���CCM���� z@ 0�|�'7��,��{��a� �������$-�$%�)񮤂	Z��E�����V�ֵnˤ�ߡD����K�$�䭎���K�<,"Q
I�aJ�> T̶�ˋ�D�#/8P!̰��j�� �Ǡ%p!d4�4W�3�K�y��Ü��	�����ͫ`8R�c�C�� @$qB�p� �s�4Ղ��:'��S[s�:���Ӆk��$��m�������k�:�d�5�wbl���Z��<�ĝDF�7WK�vq�7�jl����U�7�I"[�7�fi]c�rʣA����h�	�8r݄�y��3NW�u\m�m��ɬVBi�C����7��m�\�\�Z�a:M���Qx
�Ғ��EF[�@��G�0I��w�1��T�M/#��U�dG����q9\'�}�x(�
�\�ɺ����#���@��M2j�@x�岔�|F��i `�b�� �ㅖB��X)Pm_#��s�}�hU	𚣽RŅT�ιk1�.rd�%C�����[�eړ]��3rp�W��뤤N����'���`��J��IZ���DvElu�9-wh�@2����-<�~��p��t�%¤�� zc��_ƧA���Xԑ*��H�"I���h�e�4N"Z�e���K)%F�[K
HPiM�V�A�`\���$N�]�jyD�N_{S3�P����f;��FB��6������6�t��xKbs�K�.Y�ڴ��mY�:Rx����8S�Of�p%ɖ[n�٩˫��-�bܬy��e���%���yix���q����wku.g�k�4w,�g.ٞ���:S����\%r���N��^��Ls*�2gcJ����vC  ���7"@�ǮY�BI܋!��U�`o(�GO
	���}�5�����RXJ���˷�^>ri�#�LL�u������:�j�HSPR�?2���BCÉ�@0e+�32���3o��.����,���6w�����]ݎ�ߍ�3���v&�e�?*fzm���x9-\29U:o���"�������]m�Q��$-:r���9閆7��0�g�EU��|<)Q>��_A�:�E�!�d��vB�6����RV��en�� �\��Y�g�J��f��]�z��[�� �_�����������A����%� �|c�yJ�P*�ʄ@���D�&�2�����A#J}X�xR��X�I$�$PDd�h�0�še��S�3��Rf����&�j'��_@fQ���_�~/�Jѩ[�)���bi���'=q�M���mD���aPSҚv��
i�C � ݾ��|:�{�~N�C�֩�ݒ5�����1$����1�=�A�c(�+ff׷f嫗&�tg��#;R�Md�3!W���8�H"f�C�[H��,馲�D���~�}�.�I�`��&abz����&2��3�� �w?��l��}dv�5�x��S�75	�+_���Z@"�W� ���/�B�p@>E���2���]+�R]�����r�n��.�Νb�Z�KX��B3����jW'͎��v,m��jy�*-̒I]*�����[�+�tk�7%�%6�4Vx%�h9�����V����1�ڕ`�w=��1N�ͦ>�%:1�����[�a\D�T
�*/4���0W>W���M�vS�1B�]�ҥG��\�㭡m�6h��/ט2�`?�c�����/�&�Tԛ�Wi�`E��%@4^p@ܶl�I�F(��q�P<DA�e�Љ��H��6k��a.�Y�؇}(�0��x�@1���``��(Iv���N�:�p�R*���I�	0�"�� qR`P݊��h�Nx@��z�� 䩙��/�D���`��DDJ�Q`��H��.��|�� �x���j�H�^.O$�h�۲��瞼�k���m%�C,UD�S�  Q$��$����Ad�R!<�h���L
+%GR;yªg��o ��(3�s(zEzgF�n�)檆�	���[�7�	e���%��
�<���� F}#�p�q#�`�{�ޢ���~a���vA�7�eg=�u\�@�Y `]�>���oO!8���.%q&8�[:{:�t�ִ�[�Mz�BL��$�&�p����id���'Գa�{\<ӭf���Blǈ��\@z#��:��]F�8���O�I0�aڙ�XD�&f��K���]5�����@0P��S�SwӸ(|�p2<h�;`��p�`X��W���������-1����fd!0��Db1D1� |�e>���H�!���l�G������gQ!�Z�\��� ����&VY��7�<��J����!��5��/^Ix�r����+,8�dfK��gL�8�i��oaBe�8a�W��Қ��]LͪYD�U^Ă&���Ul8<��-$�SP[�����X3�W�����5��
��I��3�����y%���ߘV�;�о�L�x���Eqr�0�&����+��E�X�"���ɶa�1q��h�����v��ZH���cV��a�̑��N��" �,AK8�'V=&�<�YhD%Z �t^���D
ݟx�:���{#v�\7e5ķ�s�RZ��L<L��S$ތ�(i��z��Z�z��
����8-N��VZ��q^�^��I�p�-��U./*y���J c^��������;X��ɀe��S��Z�P��V�:i���@I�
`���)2m�*D��G_+Qy�]����U�=I�VBtKB�x�2w���J���*z>D�T�zp^��]�t�*c�v�I���)D�f"-B&�~[~ ��[��2D�)��v���:�+��Y.I-��YLo6�;����a�QY4[�*=:��b{K�Z�v����)�	7��\��i��7,t���F�je*�!�% ,>����ot�߁	c�hT��S��� "���r�:�[���2:e{M�M���D�6�&F���ku�J����	�0j�E��v���I��ho��QP��|[4�>x	'�[\��Y�8�@s��\�|5O��B] �Qr���JWG:�(9�$�ǣ1,��v�bzB�6q$%�ffII��&t��Y�$���Uo��|�!�ju:�8&P�Zb����Jd��{�X��kNѬ��
�ٷl��8m�G�~"x��x4z�� ��҈ic��y��BBFO��ͳ�j�� �4�����IRTp,���?��;x��v�5�v�+=z�o�P�-�4"4�gmZ�d1/,Z�L�BÉQD���_1���:�N�XaewUi�aj ���Zz*�8��'�2SS��q05Nq�(���]��vyW�p$�1.@�A�[�����/C���f�>w]��yT�[X\U�N�)R���G]u��L��+B����� �H�I���qQ%1Q�Օg⚓��Î�J)�3и	T�=}0T� g)�����S`y�4��s6�p�+���Q"A["���`b���91F E8$���R��)z����j*�Z�P�T���|�F�%�B�.F�YX@�uT�Db��`=zҏW��I�����.��b�?K�v��.�:5����pBl�H�ǽ/��i8	��gqA,�
>�A���s:�|��>^T��e��
��	��M��'��!H;j��:,��f�m6F��,k�7��tH���4�QA=	�4�zP��*�;1D;��d��w���\%�|���h�����j,%-TR��.{0!(�"@	�B�Xy��Q>��.*���ÄM�C�Ð{�@�#0�:c�C8uku��Y�� O��ʀ�v��R"��f�F$JE��kZ�ᇘr2(��
�C�l]�t��T��� �
���������]@�=�(t<7Q�(`3A���UbQ3m�˒�a�(�f�t g�9Й���]%%�2E�@�ċO&UbA�#VPdQ7R����� �y�RA�B��pL����GX�8+��o���Y-y�ޥ��'10V��`���S�C[���tE��(`7�Z�^L���raHC�ޕ#yqᯘ0� -����5�� ޜx�sT1͋F ��]ѐ�a.�̀4���u8!��l�'��Q����y��e!t����k��O�x!�N{M"u!��6�<��jQ�����ƖB���,�q���;��w~�J$ s)������s��v���.F,�����K�\ �H��+"LlZ���%]�MI;iF���U�x���n({c���$I>S\����������X\=�h�gؾI!B��I$��ɀ���Mu��ٶ�B�� 6�H)�G%�b	�9H����)^ADlە�9�Xr��
�4�W�Y�a��$%i��܋r����c��4!y�:����ă�u">�ִn� �"�1
����5����,����H� �4׵��
�/@��,�J��ޮ��nH�\��	���G+YH�B��:;l�B��0�0������ \%X�w�L�^W·W��/]�&�F�23�Q�j�m7�$(.#��z���2E�힍�xu�x3	�A2��Q5n�Xꄯ1�(&��B~�YcaT�������d��ۛJ�^,�(7��I��5�yum,r��/��v�����`2Yn�U2�'���5k��Gj��gl���E�K�`�=�L�A
"�N���u�⬛H
}A������M-����-8��l�cқ��d�h�C���H%�:߹����͛��&�ĺ�;#D�-my@r+d�5v-�-�	���܁}��_HL�!C���=D�!d#$����$s��1�qz��,M4pqiB`�rj����c�&gw�K|�0{�_���ja���$!���x��᠐�/��������	��T��e�-���r��)	 @�	{Vzt��HȤ�����(�#(	TFȌB<�%��rE8P��ip