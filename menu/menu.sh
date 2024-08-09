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
BZh91AY&SY�B?� ��������������P@F�  `m�C׻镛���{�}��=�[��k�t�g��N�c�@��緽{�:T�m�i�i���$�wk#f�����kl���<��Hɩ��O�<�F��M�A�L(�Č�2z�=F��d Mz����$��i�@� � �     D��Si��==S6�4�i�����4��d4h��@  �R�(�S�O4M&�*��(@�#5Q�h h =F���"�I�l" ���S��4���6���6��  h��@@� *��4b#&L���=A���4h2D�"����3�f������K������~���뜿_{hx�F�rw#�Bw������N}Gq��ݔ"uA�Fi��	�P�"�(����"L��d�JS�� ��se���-��\�噣p\�/!p%�pf��xT��A��;�3����+U�S1��-\�� ɐg���r�y�o�'�ō�\���̣j�{٣m-`��25C'���$���4H꾰'
K�-I;r��V���/9�r3kXFzU$�,Ј���V�t�X��Co��of̹�U{�{�(ӧoYLF@�X��)�s��8CB���_�^\Z���� e��	D/�G��~��>δ���QJ�*fy�tE�<��[��φD�����2Gԇ����U�[�j7�Z��&E-�	iC0j\��u>�C�b���^tk�V	�=IjEb�y��Q� �}���Vh�?�����:�O����n ��,�D8��#��[m�,�=�>g�f��A.I9*��׃c�uGQ^���p�B�)�2��	��+��K�r�;Dp����4'+{���,�j�g0�O@�X�N�_+��.��$b����М�xz�ڨj!@�8"'��>�2�1a�Xv��(�1L�q$`��b-�q�+zu��uS�<Y���:���r���D<)"/�+J$�ɓ*̓�O��V-�	��A�;�v��wZ��Ϻ��w�O:_I�EZ�gZZ�����n���ؚk��'��e��_�㦳֞�����F���I58���&���qAn���c�~'�IR�O�˱�
����6�fe�>�{��xLX��a��P�KN������Yt�S3��8*���F����ܲJ"<#@&�>�= ��w�	0}I���x�fE�Ē3c���vq��LlO����֮�x�O��ۼ=�<y�_��y{���P�;4��[:�3^��[U��pN�h�_�u�~O�:�%O��e�$����t�n�7��$��������`�$b���;���út�+N��zmĸ��K�j�Z.�'[�#;V�',h��|c�S��dz�"�0l�d�L+qp�6*BzU�����Vh0s8p�WXꏰ]����(i��	�Ȇ@Ze�$��/k]i*"{p˜�3���UW�_�N��YfHy�I⟏�H��<J��-D.6N����x2��c�����d�F�%�Uu������Χ�[�9�Y��k��؊� ɂe
�[4�#Ch�(�(�^}HQ��]�t�}܏I5�o����$��'�<lT��I$E``�~����`�=�-���F&�
	�'�����O�øZ�� ���UYTEXH�I<���) Y_�T,$��y��o��� j�d�1�뱙zaTR�L���-I��]$���K�4���^B�R5�2�iR�
��i�%>d���~��kZ�I3R��3�]���Z���e��9�,Mi�4�
���ש<�k
�2qdy+���JG�d#��˟���'P�-?��]�R#"I��0=�N���� Vxg9�p2V9y���?>��0�pYN��D(�ѷ������%�(��b����s}d�O4�! u蔅������4!I��$��i��@�'�uzysm|�"]��[��$��$rO����_�C��3t�`�=7`4�9�jY@�wqԗ7E�D�'�Z.+���ţ�3&KOC���d~��U�k6�9du6�oRt��nC��o�A�)�տP���������Z�?^�t���?@�L"�D(��` nH��	~��R sx��x��)�5����	�c��9�����5��W׫�n؛	���:��v'��ظ@�\�{����3���35��dP2�V*V�Q�>�����nvm���l ����:���WF0&��^�:���
/�v�Y�XP�AE8ǻ>���ݞ��)Z�^���B�����&+rQ�B��q�H:*$�Χ���cY}��P��1�Kz��U*��ZBr'��_=��CB3��-=4�����T���zŴ�'^���+kkUUURo��g��2ÕZ�����N�p 
�Y�����Z�<�^-\�hy@���B�⤇R��ʖ�PHF�1�����x,��.�m�#٧G-�ߚ���
�>�HZ�V�_k`%C+�aJ�o���Y�px�F���⼁A-�'�rg�Q�6�2f�����GM.�Y����{'����ӿ� w�`��AN�L����}�Ѱ��G������.���j�L�xw%YT��O�v��*�n�("~/Qk��Y Y�E*fC���+�[�sdp�3�w�;�Ap�8��g��-v�٧����>vx�=�uU-4�˽YZj�Kxo�����0��o���Y�mc�� �G ��I�ʶ�9��s�-ϸ�.���g���/���&ϐ�����E�B��S�E�ړ��Ij��s
��ѧ*9ϕ"��O�igOM���&PXe$U��^N{����ܔW�I6�C^��R7G_#�?r�i%.�o�g�A�7tA	m���n�ڴ7�T2:�:��̾�%�������ŭ���ǂ��[�}�S�a�\%�?:���ĉ��P�w���Y:8�c�ᙜx[�L���tw����ǯ�կ �v%8?L��/nn�{K������ru-
�;\�9ܯ����74�Na�0��㛃�t��%���۾d��@�����m�f��Y()4oc`!�*��o�����I�o�SI=&�]p��hn�_�����ǃ�˙PN�/Js7�ǽ��}�	ۍ�u&K�������1��=^�����k�!�6+����h�@@��i,V!)�l�F�I1C�0À�=9l1���5֝G[�o��,.�t�F�n(K���Q�X�N�&��ؤk��n�x4��l�\}2��4�������jd�+]���FO)�SYGl��:�;�a��	}�108��߰k��Cg�\0h�	��h�k�E��t����q �#w�������SK��[	h�0�%���H���8`�!.����(�{z���z�6?���V�n��H��[�s�����:���"
ݓΠ,��J=x���I{����\���a m�!�O��W�F��;*�$܎��N�k�D7���{ F"}_r�G�
&������g�5B��ޏ[�GY�+����ȡlT�<��W�]�$eC�����F���4��FK��M�B೐���o�?)�e� 0	���ANٜk���-}��� ,��;>���ʞ�<I[��p�ְ��!h9��L���6�W��!z���L"xEm
ܐ��Ϫ� s&@�q�`8��
-�k1�S��)3%�C2��B�A����C�e���ky��}�Уj�
�DUN�*-��G:4n�f��6.��3=��w�{��hq��/��wq������U֔(���)�tu���]��>J�I���Q�&^�ў�P�r۵����m�+'u�B�A�@��!glDF��������Nd2w$u�@��c��9�0)��4w�,->�� �!���C����x�tt�U{���CM&���"CyӁ|y!�;���g���B���x�a�@D��ۥ8���;�1"H���$�LX�Pl̈QR����KvK����;�Bq�Tp��V�@��'J�  �����!A$Mb7:�`B_W\�@�`2T-�%�a	!h}����Hi��A�̋����C�_wr\��M����$!���	�dq�'�#aO	�CM�s�O���(N��	�K(�(7�+���aވ��X����;�hHH@d�pv��!R�R8⁍��S"��I����<�aBs�$`2	k�n3c_r�p��4��AR����:0s�,���0�cS�����Iz�Zd%���o.S�|M
&�h˱Nb�3�~J��H�d��;� ֲ����p,�)ؗ<���Ǎ�΀�u��p�L�9r'H���$�M6#��v:�)^���7Q�V�ZpQ�n�d�pB<{��.7� �mA<��R��=1�}V�&�^<��`��x��P���봥K �;^�W��¾�����������,N���(J���k�)��{��Bm 6����LkS �Йt����v�����Q���t�j'F�d0�$ױ=�D��D�eX
��(Е%k�t�a���Ծ�����L\��Z�������`���5���,ͻTLY���I3S`q�3*�DD(mQ�KBU�&�9�qH�Ʒ�HN��yL_Dhʛ��$�xŲ-��TK!s
t� �a +"���7�1C�&x*C)�'�6�?W!{��L�E3�����j�4�.�-s�ǹo�>fH�ܠQH�{x�76�L����̘�ӌ�tYP�� �d#V�OGN-�\��VI]�-&�RX|�Q�U�������by��U��b�6�h�1�v�&�ݱ۬8�$UvR�j��!p��RTl�TJI�"@�Ђd��zp�fy��p��%<
ev�R���=��[;|d���]LӿB�B�ܸ�;�n���
��@%�WRv`�jS���q��L�SL�"L�ρq��s����gA;ѝ��:�-CW�C��$a��W�����#�fl -��&:j4�@[+>&P��7_�2J�/�9��	���	Ƴq��3²^�v�]��,�Hg��o]ʣ��0�`�l�i� y�)4EPRT��^#?$&5�"���$&���f)�5`hfbg�#m�*��>�̻�6ѥ�A$F��A��g+��z��2��gk-fbc&C4.�WR�KP��5S���b�-J�	
4���7 -r@�B�Bő�������{T��[��Ԛ*�7�;�& T��4��"!�,#,�ne2��\c��1b��ݍ�ٌm��fk�D9��A�z�9��)b[>iS�J Doy���\�rM�n�ՠm~� ��8
������CCa�.r9t�;ih�(L�Ҟ�Z��h9^81yD>�/�Pz�f��>�WS�9g�uBBBI:���	9pa.ީ�e�c�F7�wrz/��m�gr��ލ��9S��r@xg��(lꗾ���^� ��*��鬌��9�nr���:k'�3bԛ��z)�#8��	P���MK��	�\-GX���j���i!�E>$�BERPa�)����!�,:;:U��q�)$q9MD;Y(�q:\�bxGI	���n!ĺUb��zn��)4�S��曧��1��jM��/�g�2 M�F$+�22A
��+(���T�b��_:��QDQ<��~@�R�7���� �
,��G�,QT#I � P�F1���) I3a,d & �KX��-j��?�ܑN$3���@