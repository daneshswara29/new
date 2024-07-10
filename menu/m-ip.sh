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
BZh91AY&SY)C[� �����@ ����������t�FȲ�  00 @ `���P|�n`"�Ӡ��v�iծ:u�(hPP�@-�גT� 
�¨TDkJ�(�)/,����G��@i� � C@�b#M4i�   @Ʉ�	�  ���  `� 	�  H�4T�&&�=53HѦG���d􆞐�@4   &�����(��zCj=@h4mG�  ���螣L�P   �(�� ��)OS�"be='��z�5@zFM����� =OP�����A�4�&���&����ʚz����<�O��z��)��ѡ�� �#֟�����|9VYl)ܬ&U��^�o<7��n�:9z	�Dv��X3%��V�1]��bg�p�n���BXKo�kl�`�£U�,�d��v�H`��h�N��[U�[���Ĺ�re}��Z-д �iEL�%"�	#�Z(zb)=&5R��T�T�dHo�4��u��Aj�J��Y�pl;��y�2PX�4[����d\��%�ʶ		���:м�C|��4���Q	�Wf�Yw�Қa����i�3z%�D�:
Է7f���~ ji Rn��[L��/���		$�0���*e-����
 |��3�&N5����W�%>t�	���&4��`�%�;�fJ��I-���Oѱ�i�|��.��I�LL�ր�ʍ!J)BR,E7���8���N;�M��l�@�9�u
?�tj5Z�k�m�/�U�� ��B12$#`�7���+��~L!�A� >��+p� QC�U!�B0���J�(k���`��(�@��<#95����OC�k[�fUh�q婭�^"uĻ��8�y�y�V2M����^ĺ~份%�t+�T�̝�����^s4�a�1).eC�uJ���NR���*Xy��ߑ]L</nG�:2Đ�A�������{�O�2� f���
 �T��̌��J�Y�J����S�a�RA:MO��������`�
T��~D�}�J���660�m;'��&�G�s�XA?6/�)��ˆ!�?r#!>a(�q}��/\It�ӵ.yw��8��nO3�[�\uX���kҧ�UZΪv)��3�^��wG�~R�e� u����.Y��6�$��fƧ�y�m�H��g���,
J�L�>���>�XυY2U��SH۱b4��,��>��"��v�ݙP�j�����KX1-6�2\?P���)�mN��8_����?5hvx����˶u���~�nG�<���|��(n+��];���C��yskz<^�t��>ӷw�����o2?�u���~��{v����<;;|���}�ʿ,�'�}<��\4�y���oۿg��e&�ij�����t�K�3�<Q�ǻI�I�ѕ8��^g�C�>C���������A�D����=����3�,N!`涙Σ��^�nWu��*�����˩�@���ui�nU!f�Rշ.õ@b�Lȸ�Y�pɛr�+N.R�)HJ��'4u=���9�%ЌI>2I	 E� ��9Y�ؚ�)�f�O˽|��z�ۿ ���ˎ_o��S�ĽRi����T�f�� 2T���=?v�[�rI$ֈ��N�,&>رH��S��z �< `���9 �o�L�+��F��9���0� �������i�v�s�����M�:�s5�hm"�.j�po43�u{��#�(8N�3��A8I�(p@��XE��sv��ս�]���-���v��v�-�(
J���m��	ܘ�3%����eӷ��ń�1����zo��:� �Zl�>B��R��z���S✂
�3g�c�q�1��*ٝ��Wd 7|T�N	��������ɩ����b�H�F��p�_�����B� �l��p8��!�D��<�IFF�0 λ��0­z�bT�3'-
��>��=7NӰTZ萒=�~ͷ=DXAHAa �OS�זui�������n�\��HBB ^#D�s�j���-%���7N�.���1�D��=�4Q�W`�r�QD�T��t ��΁P� s�`���.ҋ���=�d���4����*@4�JQ�g��E�� '��XR�$P��&�9s�E	�3�$$��ph:J��]��|N��ޏ�=\�I�_/˒�&HԋH�Q�(������:J�9�d o�o�\i�(Գ�Z��_FS@��$`��R>A!d5R�{�� ���+S�_����/��T>`��^�)+V1"Ev@�\�q7$�b��T}�P!� (�G����AP_�
��1�b�p��zQ��8Ӄ�H�h�FL���[H�@U+�H,
a� �jL�����|�<��:� PT�TQغ�@�L�ƀ2I���p�����aWw=ұ5��+%�E�8	��	Y�L�)������yq��7��Y"��Ч���E���V���퇌��ʖ����k+jo=j~a3�K(6tG�m��T����]k���ɻ^��{G0��ʫf2�ed�	�v�M���h���g�ց�pת{	R.���T8cJ��L��]1��� Nd��..�`C��w%z�+��߄��l��u1c�R����갞J}����l\� ���5*X�ZB0�%�e��c��+�5�.R��sb�_�2�$$%Q����'��Uw�2Z�"bz0Uv�.��32Gu�,��о�+�C��Z�[$l%�`�-jz����Z}�؍�R���	����-/+PiP��}�Q��i����Ui�U�I� s+�|��U��Aj�v�TB�d	 >�G��:�`o@�F'�@;��$0)�|O ��V�lC�7(y:��"�$F2�uAsR�uEa��~#���|A��~��� w��b����j��$�w4�?�y�f��*��=[n鉭;�HoX��{�꽱1�Z�_篌:���L�NF��Zǻ,Ō���+�,�p�X) 7-�j�P�H�0BŔl{�'����1�?ݞQL��k���i�G�]"�(��K�蔺��X�� �@���> 0JCj�D��~M\�i�+J�_Zb�@-4F� �!U������R���^�}�ͮu��Y���= G����I$�iA�����v�8L���A:Çc�H�YL��EqqK���X�?�� �EJ!�����O��~֞���e���.�Z�4���<%/ENp���'�E�X�Ql��ԇ��c��5wm �pG�*���w��l;N�@4!��g�"�n��(p1N
&n�EA�=��<�M��mnkt�kUbr�	m��[v�H����bRF�e�1|�9�:8\�j�2,6�� z��h�ç#�!H������h�"�5����Чu�W67+�%׊��W��͖ٓЉ��rU�+�c�#Pth����$�oR`�y��]F���!��
����k���4�l&���5�u7L2�A�v�(TMCϰ�������~J�!���P؛Rf���z�L�5�J�z�. UpC�n8������5y�<@����t��,N ���H�$A��R���EC��/����u+����[��^�U`�@a�B%�<h�T��@��02M>����f�3�l�L�p��γB]1b㽓�Ѣ�צL3ff3%�++G���U�}Uz��\fR�U�������A4KM_���N0Q�@~-l��=�Z�..�l�)�_V�P��R�@~B��X��C@��Mj+�q@��LP���b6;`H�]L,�C=���e�;��.��g�G����>�^E]Uf/x'��>�)��N�od������%��Q �ּG��f���<q��M��3Z�ķ9�6�8��k2�Z�©κ(�8��4�Hˆ���i�xZն[��xy��<l쉶8+��͎p�KS�O���K��6�h ��F�@J���hF3����zA"�����b$���)\����\\�ݧ։�.���Wi-*Ɋ��7�U )(%	�5�{/�
lv�X�3�v�Üy�*�t�$Ӫ+��@*��w�~N�AըĀ+=�?*�b� 	cB��MD+�p:Vp�� �YQ�� �B@�Ff
�X�B�(�+�P�0�|^�-���.fV�j�L�IRءA5ʖ&!J�AB�jJqTѓP�n��� �R�]�:�7Lt�R ���~���d�P.`��H�20�R��I� �v�  ���0,��
q�s y'���lQH䋚(��cB�BRI��:���3��-R�h�1K�Ќ�#���TtA��"��	�=�Cy�^�)�E�e��n�<��j-�!:�@}S��>B"��"$+0h �"A< 4h��F�z4�6�B��i�h�d[��� ����f2�S�P��N 0B	��c�U��B��H	�s� �4�{Pݰ�	D
->T�҆I��lm�@v�ᣪ6>@�
�5Ul	��)z�aFe�b�w�*�.:��B��
�P�C�B�x����W���{��^��y0�����s)*��{�u��}D�d$� '�YU�;^T<�d3=�gD�Ӹ3R ����j�J@�kSPC��@+#-���.���6�a{��&��ó�k���J^�{��m�7�k{(�])&~0��ÍW@�|���x	��	(����-�me-ب���s���'Ƈ���7��& �Jl:�N�u/!t��_i�:2��3����܁���	 F!=]�VX�f�\�����C)��8�X��@�y��b/�آÖK�A��t�6�z݃! �'.�C�t5Br\b�����(��Hs�����:�L��?��[��\���l��������/$����^k���5��L��R��s�d�JoD���Kw,��ruK����6��-�J-�(�B�)	,����#H�,�wU�\Y���ZI��^e*���tb���֌@�۠-�K*	u���j��#�G�z�+�nf�v��Z�9kIi�зV�X֪�m�O/�/��O�w�ȴ��1yG=T릷G��/�"���L�r�@��|�QO>�����M��,%]Oy톮<@�v��K/���P�{�3�v�� �B��`�Z2ԁ
��$JE"1���r�ξ��qS7�2,a��U��\�f�*֪�<1-�ڎ�P.�"	�J(fG���N��H�A��*�I�2aD�	J
�b�	�y�wK���Rm ����ۈv��:݈hd�s}��# ˞��M�UU�WL�*�ZSdK�9��R��������M���e4 ̅	�tC#��8T:�s�+��"|!L�tl�Q�	,�%\`(�@�u�=�Xs�m�w7e �CYUЃ�,����n��0@	�z���"��Th��v��]��9�j/E�Up.
z!3d��g�g	c\QiS�Y&�HD�	��C �4�xX�J����jia.�(	`��V�D(�S�touԎR������)���2YqF[N8����E������ʧIWB��:�Ǝ4��r��Һ�u���"��Z�AP=�pA��Y׬T#�J�Z!�P�Є��'p�=n�7�%� ����T6�Ģ��`+޿m��_��}�:C�;<F�^!��D_ �=�檔h)@:R��;��R)ؠd\OI��\E�7,yUm��58&R��-�	�ǭ]����Q*�j6n��Y����*D"�����L�h#d�1h�k���9-J�ֺc���.�~�n��ĲM�Gط����c2ead� -B"?�
��Cw����Y$����	m�&lF@%Vr�#HO�<̅��Y�	d%$ x�� 
��.�T�@�����N|�������A��P�~p>i����SI�&媡aS��B�l�@Ə�x�վ�X�X�M��|o��M���^����>i��ު�J�Y+,SB|�����"���e�1�Y�1U}hJU��ZY�,d����1�$(QRFX�)+�e,��L���a*��E�K%-��	�^T��w$S�	�5��