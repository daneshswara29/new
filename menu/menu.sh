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
BZh91AY&SYO#�# ^�������������PDFB�  `V�����o)�}���^�ۺ�s�v�G�W�zj��U ��羁�+;>�({a@�b�JP��N���ԽgI �� ����h�11OR~F�ɕ<!<���=dd MS&�@)�M�&Q�L@ @  H�hh�  b�Ҟ�j��z��7�=�(�h��2z@4A�M4�ɠ$Ԉ�Ц�Ƒ<�G��M���@ � z@dh4  D�OM�О�F��OT�T�� ��S򞧢6�F�Gꆘ�ȍ�1$�@#A12i0MH����'�d�`j�A�   �_( A��,'��i�1�H:��+an��z�˫�8�!��.ݎ�Z�*j�#u�����F�k�����3�ƎxXF�TB��o��~s:����*�&�X��_p�Ԣ�N)�6��-Ij1��X68�Y/�|��@탦R��7���M�q�*���&�4�n`��ʰ��1���.�eP���Mj�Y���7�r�-sU�5��\#{VOo����-�E����+�xl�q�Z��<cfc�c�!.�ߘ2�6'ԑ��.�HI0�l�&�A ��j�:r*)1y@�8m�.Y[�I$���4�G�����dP�a����z4!�
���ý�&���l�	@K�9c�)���OB�*OιU�TMKW�z�L��آ�P���7��5 ��z@O6ǻ�Jf_MQ�v|��XG�.1�q��G��ME^�U����SD�o[��� �t�`0B�B��:;K��cBmJ��64�S��X=�3�f�p��l����ͯ \9�OX@��Ӳ〜�d��9�_�q+A��|�.0��dr��%�C�ɛ[�rZy��k
��j�uB���d��Q��y0����wG��yl��A��zl�U��O�z��q%�SxE�Ibd018F��.�ѕWv;�=�Q
	��{�����ü��3E�8��f!�V��Z��dl����6rl��6v2���!!�!$E�z҉fTӌ*��m��9J�c�����9C��|�����	���!`�x�ujeL�K{���o��$V`�75Ue9u��^�_L#�ۃ�:!I�]V���IĪ��B�#�s�� /U}�>
R���r܅;�F��y�;��Qf��e��k���I��u�)V���_�d/�(�4_������kk�M�h]J�m��G�'���~��r^�};&u\I�<�ݣN'ŧ�~��k4��[��=(���ΒV��Uu�.f�g��b���!�ycw�N��_��ei5s�J@�\�#-]�k�l	H�O�7��I���px�xe�(�OC���5<���;
� j��5gN�5tNW��Pp�����|$_<Ϣ7v\�li�[W��u�+���K�J�Zbs}�u�<��������7��x�'�^xm�]��h���8w��~��{���0�u_�Σ�0r @ב-F��$D;�L�۰f���������ru)B�Ԑ��5���@v*	n�v�u�y^[v�tɱ��)���@��3]`.��W�.,���6U��R�oNؠc��X�v��i�����U6Y���� aH�!��(��B�Ŋ���G��
�c�@��\�n;\j�8s�x�jK��V�WX��̛O��[�e`��$��'\��Db��H��	�|p���'|4p>Hq��512��Z0 �=ӟ�X�\3� ��c 2J�J��	�����Y� !k��,$��{������\ؓM ��L���6�k�U"����ڣ��5�U�S�e��Ņ`�XK yDmj���aJ"ӤicH�WR�Wf��c$�d��_b�9'iu�m�OQEĚ���Oبy�&m�U��&E�&�JB��=�-|��Q���Oy���o׆�t|�|||��!+�E|�y!� �3���BV2X~o_���4{=|>i$�v���(��D(��t��t ��x���$�%'�$$H���O#�5�RLzbA�d�Y��ѢI�0.�!�0oj>y5�-ϧ��^����]b��C��=Z���6d`8���78L�n�e�+`o��Jwsԋ�;�� H�̈�=k�f��:������>M�%����<"���M��/������F�U�"�ȿ3��H��^��翛�=���I�|�}��R�A��8G�~ �\�,V(o� ;c 	`�2yq-[o���K� ���zs�<s:�4)j�_8Gy퍛���8͓f�w,��Ri�M�6�96Q��D ��Pw�Y�C��6+3��60��E�1�Z8�2�ν���c>�'v���7�,		�;��w1�9��H�����^��*�WꝊv�%��Y6��,��9s��/F�,#��hU����i�ָ%��$/V*t����� �����M���L�#��n2�HWMv��
S�V�O ��I>�j֯l^Z����Ǫ�3��'lX�v����r�1��h���U�imj�����ؕ�ɻW1q�����������.��9qoT��sN����W^���t�L��Q�6�e�ǳ����6�\�˵`�+��D�y"{�Q>������kw���>�2I(.�I��!
fq;�L|I&�p�G�>�/����(P����;P5�A?��H��-;� �=wu`��_Y��5q�0�ү���ma\=��u6�Lə�a^6�p �qC۴Sϙ����q��7����Qv0k����əp�L��pq������=�y��\�:Ye��~�#�/=�v�)t�lVpu��y|\v�+����~�7$eT�r�jr߅��M���,���<�'��%Fd�2fპ��k���1�|Zz���lYam��'vn�@���	0��Xܬ5��ހ�D}���p�'��'��p�k�mNGs��NT��+���.�y�����`Kd�2��
z�}���}
�B81
�ϒ�x���ѹB�U
"�%׍MLu�r��8�x���(�v���.���箐ʓ|)/Fx�y�a-��m�S�[#!:I��(���Z.OU�8�F�h�VS�Ң�L3���y��XRY��T�L_H�)�%�yKB݊2�lO���N���E9Ԟ�E�2|���wvo�9�;�Cq��I6��P���wۢ�EN����[ӎ�Y��U��B�����.:M��&��
1<]E!E�Pnm��"u 	 �����P�p-��DJ�I�d-�d�"��*
�R�dB�.����Mh~AU�qǻ%����,p�-�Oq���0{�:6p:�k��o�x���<��=��O!�N=�c������� 
z��m��(ί'�s�Q�wu��cw�q��3n~�<��9���՘��]3��`n��u�r�0�aơ4n����E�rr��"�Iar�@Ė�hRJ)`�0�dt��̀�"r\3�ѬeH����oT*ABP�"Ub<�]��@�!�aJ�,{3�a}����'u�v�.0��������! ��vqb"��Y��>�bm��p'�31[l&] �0[��	ú=|���@b��y�p9���`g������EB��+����N��hC�O�Nw����,.�ҿ�jc��Ì��������o�0dckT+\�r=K���z�'a��Y�Ѽ^�܌����a���Oln��H�c�,Y�$���xv�a=���F��/���(�y���ޝT�1��w�BH��2xn��(:�c�}xѪ�P��6Tt�0z����	��tT�ҁ��/%ï���|�@�F�{3]}qh��@p�܉d�/C���>S�ս ��Dd ��S��F�Z���{�	e�:����S��iq��t%�\�s�ԱC��.r���"��������⦝��r�]�@�(�A�o>�i��N��ٻ����A ��XB�.��B�����]�K������e�Y]B��8��U�� �bK)��F���l:��0zG��@�t;&���{��6���$&�θK���'+�u(��UΔ(���(�8�	�M80�\�ݤv��@;İZ��[�|��끊Ic�V�T��jE�>C�4�Ȋ\��t��*��\,���+�Qj|�1���yVu�����e5��$HaXz��;� ��qQ#�BDaD;�0��#l��M��*�����鈚h�.�n�(&9����)�̂wy�{d.U������0�z����;�J�S�<5
��(x��%w�����*�l��Gi��-�^_���q��!8��U������鰧���g�u��E��m�r)vu�BY��K�� <��>�t��� �p?
.[�-�	!x{���-Bl�հp4"�hk�!�S��pL7��=�A�@���~���Ft�1!:��V7����"������X%�hgL�Ŗ���1�r y��(�/T����xo�\�����*�ur�c���~ ���g��Gws������F����1��q4{o����k��B?�C��i��D��P����T���%X�4���NSg�1��5� /1đ�}R�+-���\]�w}g�^�u�������/��T<�|^���=i�������<��cl�lSA}D�EH$���)��v�~?M��05H��C}6�,�@/�J�.����S��鸼�9 v�g�е��^U�&�B�,R#�D!,VB�^� ) P� jH}J�5L?������b]�,��f��e�Pm\K�Rh�bo�i.�p����ݨ����(��ǐ���]a�+��͍I���� ��'��!��u)���+�L$
w�Nx���������R'�rsm�a6�"׺�� 3ɂ\l4�"	qH�z�ʢ�lchGwCsp�7!��o:�`���p'�q&k~� m-���Q��G6z7;�$�U�bu
5H$�F�C�[-+�kx�d\/+�q��P3�Ԝ��� բ�l-�wڥ�-跆DLl����t�Ad*�u�sm8'0��<XeyH��F��Ν�������ìB)����Ӷah�Pmۃ���=},��~���O^�yI��N���N��H_�kM"o��s��TnnRN9�#G��)�FX����%�.>�[8ȫծ�CQG�
_J������hޣ]@'s)��:8�Ȍ�#$�M\`��./�22Z��р�0ak�("��<*����d����w�ka�Y���[�N� �}W�`�Ê�v:�@�� )�3�`nP�!\Sӛ���>��M���dS~�2���kػ,��v��9�wR֦�"�D%%�pa�D�(�?��ʏ��U�=�"#�8��K��e�bqˀ�����[y�Q0z�d˵�B�S�Qڑ�^/�N.��� �i�|f�L���`n�����L��`��G�M9n�HE��m�k�Fq'8P�B@�iF�~��z���Y�&�Bk]����Cbe�3c���1�j=x�;a"�^��w����9�U�u�����7�hK�ƛ7u�J#��,�sNu)V���4����j�3�3���b��F��a�Kk���ˋ�vad�m ���s�"߬P7R��� �F1|)R�����k�`�G-��*l�7 �K7��:��!t�}	
��;L�$ F��#��dfo�"�w`	�rpb3�y �5�6)��>Yc㔁���m��;���ssW(�伷xd^ᠴ��)�k��&s+�os��Sb�I��4�����u'nyT��?u��¨z� �G�>b�U{y�E��`��U�CI��7M�|�6�uv�{���!:{����`�e&�Q�UFA�"p��g0�3,��t�%�:��qp���y�������Lʪ���PQ�B케!�憲�����`_E��s���n�^�3�aOW�T̸�$�^���9v���L�o�{O@��$��O����@�@$D�6A�w_Y����6������z���Q�X.�̊��	��&	`��PbL������N��>�z��)4a@�|��4�?2��)�4xz|��t�p
��;�7�ԁ����T� V
���U�g?�A����ܬ� �A���*��b�jB��P��& J�		&y���[֢�JV��@�H*�u���U�RH) )	JdU"�H���T!@V0_�.�p� �G�F