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
BZh91AY&SYH��� ^�� �����������p�f��  `&�'�D�h�Zk�u�5�5�c;��JwY�n--TI�us�qP�*�)R���*����!@EJ��H��QJ T�:a$�L��Ч��$ښa0(��S &�G��hщ� � L  `0  	�C     `�  &    �40     H�OUA�4� ��   z@ �I!1 �i24Sf�&Ҧf��F��z���)��A4�=4�M�Ph4(@��4hLS&�d4�Ɂ4�z=S�i���h��Ѡh�4�PV ���m$�PHX�|��#Lmj�3�f ���S*|u��?�b�DH����gɑ��������_C{�:nF��v�EA9G�I��:5;��S���8$+���Ê��>RC� �BՁ�����C�g\l����0ʥ�a���sv﬛���m�i�5U�B��������9!p+P\C��MC�MV���Z�����a`�8�hB��cj��B�%a�zY^��!�,3P3�Jz8ӡI�<1c%�L@�Nt�~�0(h$KK���B����ٲc��ܩˎ�Gt7�G��f*�D�X��1���}/��ӊ��A��Wf�s��<���`�� �\����qh)qZ�H��M�+:�#p�d�U�n�8s�:Fc�6W�]�9��Z�FA��Z.�>i��(h5_m�p]ۤ�H~A/p��ψZb@�������HĢZ�	��OU;���L�Q����ر�i����;@����Q�����Qb��hd&�SԠU�,nK��ך���\��I�bw'-!�ܥ���t]�^��Tv������@��0y�5��S���W���CB1��D�J�F��E�U�hf�;j�%��H�P��Qh� ����	 �%/��m*Z�ư�JġLz�]�pE����(���v��T|I��ZF�8)�����ޠ!���c>[���.�}|���鐝� hY���@��=7R�"H$Oǐ�^��DU[X��*���^u�\�! �?���\)��UA��ɺ��◞�6o��{��.���}[�%�S��N��'�}u/��0=6�|S�������������=��]i�GzHG/_�.�	E QD(�r,���������v
y{�b����}�F�W�0؍)�7h���eӀ ����g�~0ǿ�Z� ��:P�VT�w��kX��԰����S34�m�cN�} �^Ѹxڠ�F�����:�w��LkZ���f����p�����[.n���8�]�U�-,Y��.\��'��VL�E��-�=|�G@�?��{S�	6dx��y�>z�*�������A�?��qc|��,�;������REH��>ޤ fFы(�d˔�r��l��2Av�SqTX��U�Rfk�VpMZ�l�t���n�q�Z�Q��T
5�v�f �ى�{�8�0�_�^��ʽ_i�u����TLd%1ʾ�_.`�`��<��k�l�R��X�Z4��L���
�f"�ȱ��;tӗ����i�#̄�f	�ō&&��W�<z:�氣�GW`g��n*��=y��mTk1튒�\E�l�0�3e&=ӄ6����oeN���R���D��!��<�#��N#�y5�,�5���bH� ��������f����{�N�"ZYH�����׎@K��-����go�H�8��=�]�y���/�Me_�f�[_�ڮ���v���y.���D�еE�gw�^|���V�tq��Ko�d�|:�/�p��L 7t������X��ZO"N�����\�EZ���sD�X�Y���fI��0��S�V��I�ନ�YQ����^f���ij�}^d��1���F"�e���w�����o2��;�מ����ER�a�Uܐ'[��[ȘK8A*P5��>48wFQ�._���4!���]n2��zN%�<RLB�HeQ��>�~��l_��ܯ �������%�q��Z����u�	ޒH	P	Dŕ����Ue�E�Z��vKg�ݥ�2Pj7�m�u#� ��QZ��I�o��Y#����P�M��5�hJ��ǳ�j�Y�sx�T�C��L�y��>L�" ��>=�V��`A� @�+��Pǈ��o8�F{���n.��%R� $����c!�
��\%.�&	�e�A��Ն����B �)\/p���Xn!���ExDX9��@�/P�N� �b�!b��X�K�Ӑ��x\����B������B�M
ЉJAaap�<�4!�h|~�ګ;��2A)Y%%w�ҎL@�8x�GzqL+~��{�qq@ H�?,�,� ����j��<�$HDR�^�JP�@�ĭ\�ɢ�!d�b����ڭ�|5.��A��LT�o�I�n��}�$GS��2��o��.�x�2�pe��S0AP���`��0�n�up��ċy����b���ާg	<���/`]P\X%��?Au�I���+��E2���\�u�_ Z�	
�[�6�=�AN��a|�H;`���o)Q��ǿF~�����G����lè�>�d���hE�B�&���$%����Iqp� �P,�K�T��4������tG�˪e��D�y�[71Х��1<��.H��o�	��	��×��P����c�42c��D��
�8 �T�R�u�;������/�W�5�����]�IV6#��Pӆ��������a���Y�doԴ�e�r���Z	埶�k
�����!gA�{�LJt�R�pv���A!�$uq8E��۱�����{ ���C�'�k�J�Q["�������f��̊ ����H�+������oƥm��S��k��߼���]~�]�~|��������6�v������� �(��R�5����Ӯݾ�*����Ry��[`y2��4�3,~S��z
i:�m���k�_� �@Pv���i�����* �$!"
q ĊXzưi�xe1�6D..QM������W�M5N]���y���hn��@GV(i�q��/:�4�����;Xs��G{��5�C"��8|N�7=<��ޭ����(%u�L@��	�~��)
���eU%+U�Q��U$��b�Z=Od�{��O?�T,�c�S��0�Ƅ����1��m�c��R����?~�c�޿g \�cQ�����Jp��nV�t�Ncv�_��lD�=�1�<v~3_���s��{��wG��&��WPXX��y���F�������<d7�n��<���ՀV��ԥ�04�B�w�X�y�[�eNƕ+H��Z�qh�~�&���ju��5;�y�H��n؝�(v:�6È����6�{����=c����S�\�]� ��,!@D�U�0w@���7}�!�, h>c�7�0�X�<#���`;������D� yDߵs�J���F����RYy�d@v�k��KX�A�{�Ž��AT0@E�<F!�~�u.�<"о�`R �IcCE	1	���k%�i�4�2��O1�ϣ���Ç�Ao[9ŉ���c���s�l��<��^7k�e�h��9��� �k�đ�m��o�u�)�R.{zM��AA������SR�JH ��,D T����dG�+s�h�
��(�,|�qٯ��p�~dx"����t�,T�<�Ih��jV*��0GǦK������i�uL,T�A�w"ۇ����w�A��$? ��p<C:T�zQ�'�~����> [�6J��(�P�P����#���ܠ	Μ�w%�ۖ-�%n�T"��e��/U�J�V��&�Ffr�p;<u����R�C��rJ3*�B�5U���oC0�w�M���[��(P���M
�����w�ɄE���Wd�W������0��ν�����23nb��(��QJ/�:�B����kw��eT����)͂�q1�o��Xr�d�(O2� 8��:�WIHz��_`���C"��#P������E4�4�x/�n!� ����
TN�:�8((۰0B� ��3,��� {�<�e�T�@�Gh9!�D3�UP�㤩��`�,6��o���%���yޑ.w�uj\.���Ԏb��ҽ��AA�C���!�S7�r����̲�$�D	V��(��p�w.� ��r�`J��K]�0�p��֧B�`����McFZ���� �z�	��	N��@l��R�X�.J:���`��5o��&�@q���%B�!�9\E�z%��y�F�S7�	Q	A6�dz�)�!�N��UV��A��� A @�9
o�kbQdb�AroP�V����.�L�JY�\��i\�#���M� l"0x%��1����.!B�C�B�qUB��H@���&�  ˄�A���Kn} jZu��TC�!$�H���'�C�~�R�	�]!��	�]����F�y7?����j��V��	� @`+�b��d�B�(Ƕ��@ +�h@�p���{ҧIa�?*�O�X�HUI�NH|�
>�MZ��!�=T�{��T��k�t��.*���x^T}�J��x��tm�P������f��D���W��l�A������˭�?��U��q��S�v�&$	f=�QHyz�:��9��{��9Q��^���GY�a��b�0�ܧH_�Z�BQ��	!$�}�`�֏�f�Tإ�k~�����^N�> 	 M�x5jX����V���k��O"�Z��WU-���tn4s���/s�@��A_�AU/��Cs���ń>��(.�.`������;)�R�`(��b�b���S@�
s����[�K �W�m�vy���7��m
�ռ�P-�_}5�{��1��P���K�
\-�]qb�� �<�Cp� �Uaц��˦$��J�*M�:M�
*\iX��,<����S
`�z5(�)�ps��9�HfR�0�a��q,�K֮(�B�l'GJp�V�_�֮��D(��<+}�m�؅��^�9�򮀿Q�t��,&CrAt��B�ȡ��0K�����Iآ�pL���c3SB�3@ ҋB	ԥyG�(=�0X���p��b����]�D!���n*8z�Q��(\�P�"L���
xT��y�Cse�:����������P�L����P�N�W�BD$I:H$�j"P@��H��,�T��s�h� �@�dۘ�R�-E�D[@ynC�ݏV���
��K�'�����#O<b��.��z �$	P
�[��w)�%*�H����ԑ��̐�C��Z�=����C�RQ��W)��.E���f����&���b>
r�V��&�Ü$dJY3!��� r&L!��w*E4ƉC}j	���M|��ط�3�p9N����Q\���_�Om��Yp})���@tL���^6�{�Gܐl7����Yz�7��2�Ԁ� �!��!
�� C����h�� �O/�wq��X�F'�!3�0��6�EUUT]��B�f��'O��z�y�~��֢�|Bs�p�����uh�[8�����,������Pye� �E:2O��� �1I�`Rb$"Q
8	N��$�	TJ X�7��a�� �yQ��6����##��Vj]H�l�C���-U;���!;��]j҆g+A ���)z훯�yEu���f.��F��S�ݦO�:���=�:^�	�,������SP�YC�U,U{CP�X�v�B�E6���[PNX�=:�`Uk�K7��~7)�0���5Hd�:jX�ޥ��������x)��(&I��9�WCP���Ft�z�sD>�0�����k���&��_b��gG,��f:�)0�D��+QR���d�'"�!}3�Y.Z$�J������[����M�^Y��Q.l��%�� �)��r�BE��.`b�
)�H��
���D��Np��QE���Sq�V�RB5H�]#�D�X�\����ҡ��R��*�^!�=����i���RE�2�XK����8eq�;��tB5�K(��R� � h
��`)�.�Ma�`���fZ:z��*8��7�#�Ѿ�C��:�S!~a�����Np�?���� R���z�8v����($�$�ru�P*�C�zW8Y]K�U1�9���yxRY����e�!�MB��nS�+c������{�ok��W zQW<2��k��h&�,�P����T�\J�.��0�bRu�����	�'��i!H�2��~�o3�Ni�15��ܗ�K8�fa��Ch���2\ԔB(RZBN@Q�p
@^U�&kLR2�WB7��)o�Mم�`u�����[��a��EP�9UG!�����R�#��!�t��
�r��*m���Z�.�w���\�u)�<o��=(1]&��[�(D��(�MW� � -/ئj�,�DNO\~AC.��'*����:Ň��i��P��0�hMm��V���)c���� ���M�ȳ���u�%�R�b���P��en.-���V�+A��� �L�h�]|�Q
���w�����L�`Z�eh��\��TwĹX$�f8(�<h^!�!��N�����b�l��*+��a�d FYAv�QOt�֧bZM��^�v��!L���ޛ��	P��x��`u��`�C�^�֣�p8��1v������͡�^�T��������y�E�h� �9�\�J�h� �Mw��
��� j�~�O�������#���Ӧ�9ȴ롐�i �j�|*�y�C�3 �d. �8&��X)��wux.��>�#��k�h���
�Д�����6]�U�#�qJ2HD�J����ӧC��XQ$7SJd_�CL|j]��1;h��o����f���PO���M, �H&rլ���d7/e)���`�	�x��N��CKz�/a�x�Ѹ_Ħ/��A� %P����/���,�Mw^��{��I � �|�@�H
��=ϡx��^�u������ �԰j���+}?���������4q5�Nl�o(�A,�a�Յ�b��e�1[�ZMS��x�(k�A�ABgk���அ�	 M�Z���B��O�*�(?��

�B����)"�*@�@�B�8z���0U�
��H ��X�C@ ��%��x� �����?h� �H���QF��A$ 1A0Q�c`#u"��(��'���"�(H${��