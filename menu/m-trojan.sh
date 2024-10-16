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
BZh91AY&SY�J�� ���{�������������`�f� 0  ` �bM۠]r����u���XV�v�9�
�v5�]�c��JU$��*��UT�IHEA$TI-4R��I��F�~&����J~��G�С���=2L��4F��M4h�H�h�S�<���'����A�OP�='ꇨ��z��mCG�z�@h p       4        p       4        "H�L�L��)�cT����I鉦DQ�3F�G���14��%	�I�2d'����Oқ�yOP6��M4i� ��i�� ���×���p���PL���HA��}.�)�h�ݚ��ā$�9;iGBb�Ho%L�)t�^P��U�ދԮb���f0+v��f�8���W�wEr w�a	������*�M*���,5�vh(��txE��[W�ޓ��az3��X��-��HxŰ�\�p��u�ٯ*�h��B�_>�܆P\���̧�Z��4� 1�ѳ�F8�Q�A�����p�L�\T�o���1�y�Ә��z�a�Ӷ�Ν�r�2��f����s�'N8�������g,��7$2�T��M1��K�k%��H�5��MBv�dD�1_cƨo%�%Ri�G444_=*s� ��iu,I'-qt�@D]��C�����ۧy�ٱ����K�0�TOS���y݀X�q8�~�͟����j��T��czrpy�����k��Ӝ��A<=����X��~�~����y˴���Ё�rp�|g���^U #�$��-��*��v��'š>� L���fE��&0Z����T��2�8��ށu',�)uu�'��$1m�Kԫ�����W'����F�u��ۃ3jWx��d�ę��w6l���Ӫ��"��At^�,	���R@�R<���}����f��իu
�h�[�ܾ�-��)�
s&�2��"<�����c,��w��-���{۟>��r���pR����"�(���k�\w�qJ q�i�*W#��^৛컐̉�l,�Yu{�jF�q�� ��'��~�74�B)�Ȇ��7g��+�E��Nl
����oS~c6R�V�g3�k$n5���W��x=O��9mj��7,��mAn����%�
,f��9��}��|-|+�;�~N�F&A����(kL^d�m򚝂���i�R-�"������r���7� V�_X���~���q��:�W�1�i���G��]�1~R�O�>b%�V���c�%Z�����R�^E��se��5�����Uxf�6�G\b���ډ���8�3Me��ɵj�X��+x�i^�4�-�[�=⮞�6��[�8�<������W�`��[��W)��j��Y�28����X��G�$�������B�m��9�ΜƇu��n̞sq���>Lǲ�QX+QcN� �ՙ���jt�K�A�د��.�r������c��cF��`�DK]!���\��UX��u΂ξ�`��e��&sGd����'�-˷>���^U���7I$��^�տ�m˴n*��]ݯ����ZO8����፯_� /�䶐�`{�j��ϡ߻��35����I�F�VO��|��-�ZgNa,ݱR�U ��R�&Q�	/P���m���F�S A�j��F�@0�#J�JYZ(���˓"��xXa�G���E�#�����J��~��a�S�6������NZ^"�6�����$ ș%�a�課�"H|������1��2i��rP� �¤��u�#�	���Pٴ>� �b�CX$z�U��W�{��8{�[�ܬ��C���@.w�f��?��}��f<����'0�X..$1�J���~I쁀�	�&�$�oh����h5/h�D�pB��p�? ��
��Y��!�`��t{s	�q_F*�R|�*RU	�Lƥ��!$4{S�3[�)�P� AP >8�����c�k>�eF���P�r�ʳ��s��.�L�^��k��l.�@�(�D$#x�B$[Z���.$�\A���W�I�~��RQT������O�>�?��f�l�4�Oｷ򧮹�@��F�@�C��T>r�P�
MZ�\/!1�Pi�Ǜ�������/�`��}�� �g�0?�7??w��N~�<r�����ń@�a��N s�D 6qL@+�i1���B��P�@\�Ul��ӕIx���1�q���8@� -���T#9l����!81���Z�w;�zނ0���� LD��π�:1�l�S �]}��#Ӹo���!H� ��G���>��}�G�c�e�ʩ���W���[
��(��Er-�XE�\eqZu�f�U�-�ۚ���!S��s.e�WTϊ�C�7��
�E4�����1����]�#)~��v�`�%�*�=�2�i\N�n��#�}ޖ*��MU����;�1H!�`P�9�	�t:\Tӷ7x����N�;����ފ�I���cg"n�.���� �������;[Jr��V�rWh_B��^w�c��­6}	��>A>Mi|$Q�v�4�p/�"o��I�=>�x�a�5Pj2D�"@�"���A�z��c��T-(/�P�zr(`���z�a0u�:4�g�L��8��S^�6�y��p�粁�>Ϝ��^��!�k�D����p|h}�>�Fj�)Z�̅U��$��LT<~ci�SΪ>�ؾ~����4�2��c_��j]��u�+Jq7�;�������S�� ,C��N��O�>3m�_{ه�"I��v���ɇD��Ik��+f�ÿ~;iP"�k1���:�Ji�%K =�xԧ�GP�D��\=t0���J�5���n-��3uK:w��L���Q��ªx���q��&}�_qN��~��;3\��\)�	nРo���r^7�i]�z�1�V'R�"�*�,5�󐅏�? z���y�C�&�K�B�*����?jYz�� mT��.N�q�x���$]C����|+œ���@"1U�s�!1�VA�h���K�I�����㭎�9�GL<�3ӂ�#�VR�ىշ)�<$d��he�T�UUAEpN��R�z�A�Gnj��u3��٧��kz��!,� �$��?� ��pG�*aa�JL2 8���H��9��=�-��Y��ߎ@)y���������6J@H�V12fP�Fٸ얡���n�>~�M�����? dx��Saݍ)?#�'����ST� 
��g<.�j
���T�ۖ%J�
XE��:Ϻ������`��\�!�k��S��f��v`)�x!��B�ifFGp����ɭ �asc�P��x���@��p�1��/����;�ư>����XK� �rf���/{�p�
Q�f�5�.�]ЃVo��	�Tʩ ���lc�tJ�{?C�P�'.�cc�v����u�A�yąq�k��T�2Msꦂ.�l'v15��T�	o`�ٖM �-���'�C��A0`5�Jd�#�"����*gkBt����`Z�W�\�$J0^������Ob����U�n��
t;���� �XD�� �O���w�BHB�D#�������}��NeN�AƱ����-$��Ў��ѰyN���.BAS��|�@�����q� i�n��F�p�8�s#g��b�}9�.�Lw(��H	��q�ˡ1M@�׮��\�1R�8��Hn7�7[�dS-�B�Z8�� ��[ ��\��P�31�nSi�5�;�`�F�hXo
�" _� ^F� ��F>��,��?I�ۯIa*�*ā�@��=4>\�T�	�������	� ������5��`07�>5�}@e�$F	Ł���2&+	8��� 2���௨���^��T�R>ґOT�����h~	��:4-�X�ݠ���ʑy����s����b-�x�9ꟗۙ����+���~����D8{�q�z˹`�zNM�[~��"C;��n���{}K���S���r>o��Cئ�8u�n��!��ۀ,�8@�)�A}�EVS�)���	&���3[��CZ�:�����ZR��bt�� HmS�R�v�)[�j�r�mL-�|}�{�a�w(j<�n����#��&5u��;�XC�F��ΫUpq�v_mLb��ڑh�.�b�H��'0"NK�=�}�WW���^Mʭ��N�6� `�F����h!}�C� �dt�B�b��D��L��p�ܹhbeF�Z�a��P5�n�L�"@�J�*M�t�t.5,`T�	^��jaTK�L54D��.!��!������
�U��$,�6TS�L1[Y�y9QZ���	��[������������7J�QU�)�7��z�(hhKb?̀X֦�2Sf�XQT� w)K�ET�X'��F�~&"f�CF��E%�	�����\�!T�"Hf���R��ǈ�.��� 9,^�>�{+��:�8E��l�*N��D$B@��C�A�"%$C�Kµ��Ü-�DQ�
�5d��)������ y-�'����H�<ъN�vN� ����$�>�=��S�R�rwT(���=����z���/pQ��[��Rʯ~��C2�dl��WR=��OT����6p��`A(�fB��(� �C�հQڵd�=<mTڷ�6*�#��k� ����D7��t���8�l�*�p'yy��J��x�d�7���0b�R��֦�[@�wD4�C�,'��'L@�\O_�����F|bSL[�wa4�$]��!{L�3�{�����:���9�lS�t�th�[�C�u��i�\?�%j	@NL���@l��E}>��4%�	���l'���B��l����"��	�c�(��d`�_���ҫ�6[6@�E(����pa������KzBr�*��0�EA1s�J69���O6��x���׉/Ce�r��3JLJ/H b ��:s�H扫�#��:��-<X�>�~��Ɔ�6���yl�!��K��sE�4�@k�'1��\ӚU͠؃)-E��ݑp-�9����R�H��/5d$l8��pj P�J�-��b�.�3j�!j��P�ɍ$¡$ HԨZ͏^��l`U�De4���)U���D��d(�C1c a���H!"���aC0��8�)Q�����!�rL����-Y�HB�+�ŵT)FBڒ�.
ax1�8�"Qj�)(��"z��*	P8�;N�}� ��{�"X� HP�"��x���
�
�x+�@�Y�����ç�hKQ�k��`��_qn��Q�C�'S�"�־A�U���yN�0�^��DB�($�$�m���X3$C�:���S�S=����]�OJO2Ox�˭G���6��S0�> ��$:i�ʹ�5��b�eb�sD��V\p���%E�\K��h&K��A��1	���n��GQ��yR��	򫁰�4 ��S@��EpX��9�XM�c65q�3U�!(!�8�6
踙)��J0�� }/1Z1H��B��륲��օ���.\ � y\��C?��P��פ�*���uAܥ�o���1�O�x{C�_���@����+�P�&��q�v;�b�1�p]�@�2!}�L;��8��)�(�7HT��/���\E<�\��.#�.0Y[�pa�E�ȱ�j�J��R���[$�[�%V�V�;�e��P���P��nL���u3���]`�`�� wD�X�j�Z񡀇���.�`�xqӝK�(kS6m>V@�d ���S�4��C�Q�8��r
!����79ԣ��*_�ZB�,#Aa ����;l"z$C�b�Xa؛�
��q�H��x`�z��h���s��-�3-�6��wv���0@�C�pf�y�(��7*����>��.:���6z(���2b#s�@3�(劘�P3��b�F�N{�>�1]��\� ق�'�˦��]k�h�}�`j�!$4�E2< ���R���N�yQ���
:����jS�v'�I ���`S3�2l��q�h�;B��� �� �̦O�'\ 	�D
�!�?���:�r0 �z�Z���4�B@�����&|�����B�ю�2u0���d�!6C���oγ�͐y�f~�vZ�C1��֔���i�Cs��f�rR�V$D�щf�]Y�Ms�O�YU�m��Ă������d�8���<�@���`B����HO�@��@~� �X R*R �1X� 1X����	���*��*�����T�QI2�$D���h�� � �BD � (��S?o�W��>�*d�V+�@>��B��G�.�p�!���