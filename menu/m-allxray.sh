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
BZh91AY&SY�l� ��  ����������p�F��  `!�IN�Y
h˶�G�{0���v��9(tm�EQBMh�ѱ�T"J[��@ (P*� J����=M����4 (4F@ P     �554���xPѐd�2 �@�i�2� ���@                $)�4���� �4h� � �    J!�12OMj���z���yS�M<��ʛj���S��)� �I膌4�M�$@@F�M #h#$�M��Ʀ���I��z2=Pچ�4h� �:�0�L�B%)!`���($dT��@�>����j1��u?0ؔ�j�)qQ��m��8�$o+�6�x�����-�_�͛+��NI�m���MgXm����/��p�<�m탰�� 0�0�� �A�h� hp�/`ㆈ�d�W���1ɪ����T8��h��R�?���3m.�~�ll�������qW����*pa����d�X&�KF��e�A%�͋�����u-�ƍ4Z��z��>�Cz`�2�s)�cK]�]�T��wy���y�ki|�Mޤp���\l�2����E`�l<Id^4�T�0X�䗂��W�T7��i���k�Kxp�:V�>kz�]���Zn���=�+�n��fXٹ1WL��QfYs�:��ᶶn�.�����N���g��V���;tR�@ӪOW��EHl�Rǩ��NՆ�Hb���I0?���'gc�8"OmH�Wj�e����Q!v2yOS��5"�1`�g��<�ɸB��i��~T��7S�0[�賲K/*T��,�U5K����W}W|�Ju�&��$t�J��g1��M��u��^��RA`A��*�%H��/٩�7�|q-]D�.�DK%)썂]�ͳx�AJ&������2D�I��ȝ5&���$w{q\����UE<�q��=��̰�HKJ�1�����?��9$'O)�tÖ́������OS=^n�c�ďf��coN������oU%RJR�ᥔ�%1R���4\��?>����!�Hw��c�=��#�M
>.�yK���}����z���q��ߺ��m5>8)��A��1-C3��A�����фƢc$ܲZ$�ƅ�Т8A�^I�9AG4u�N�����:}n�ݲvNR�ȃ*��%e)JU�Q�����2�N;T[rO�RY�>4b��-k�jN�9֋�>%��(��e}ο��ߞ�<����g���=jdve�蜺j��W='�=y\Q3{��x���ɼ�i�c�CP�)�RY��Uݷ�^���"��Nkգ9�h�f����Κs�u�>�'G�f��O��zx���i�ŝ����&�ja��Z ����Y�C)>w�&
(-nM��� �[�CP��7�w��ⅧӋ��Yύ�)c�ٹ>Cͧo�6�Q�Yu=K���]��G��ko/G��c����6���Ѭ�վv����L}�-(Nq�T�>-�,�h�f�Y �=l���+�������8B�������ـ́�O,];��m۞�ቋ��nZF��.�⩻uWb�>���pM�v�e9�,O���'�qf���������@ӎI$�rR��`P�Mɓ�o��'��Ӡ۶:��Ry�F�7.'ȇ��5�b/�����翴9x6���8��XZ�v�k&	�ED�tH�X�|����]�da��t��)Vqr�Bu��C��;kY[��;��no�������b���/'��봿���)�ZR�ӝvvx�t/,ܞ��&�
}|��z��w�=�G��0k�ـU�����`T�m�%Y��M��:���L��f� �mK�X�2�1�����C��T=��&Mڋ�
�UϮ���=�FYm��g�ܐ�n�=1���rZ�T������]뢞7������f���<Je��'<����.�(B`1!�%ł��dl:={tnq5(�q��$�	D�]Jdb`�E��C���$�p'q)�%$�;�I?:LP��%��b3m��t&�	�5�I��ILVI�
Ir3%�aB�)A&A10�	�Ő�AN�¬m�>ȡi%UX��k5Hb��:O��)��b}L0���
z��`��E�v�I�QX�����`���5� �J�(���ڡ@c�8�5q:����Ia�Ik
%�Ibb�ϲE�?��o��G��Y�b�eT�����,񦏽��=�n�����Ζ��_�H(d>�l3�1���j �]��J�- ��� G_����h?��9���W(�x� 
�`Zړ��$�h���k"��JA�ӱtK)e�\�,�� ń��KE��B��� �Է-���}��L椆�����Y?,�17��t�bJ�'5��KJ>��7TeP��cHl\s��7d:'/3�z���Af�Yf(l��-�Q�y4�a
R��ę�y-^}���m!T��FǇ��9���?[d��>�\P�bA��a�z�=h�Y�)�Iڟ�y��QwZl�q?��O��_�$�j��H,I�N(�'̡IP8)t��	��Y�����=��Ei�+���[+�X�]v_�}��(k��&]a�����Qr��D�k���$�$�
�zJ����I}�.���Rb��b������>��a!�����,�qv�l�"N6�=y�c��Ӯ2!a�E���"k"�Zx�E�S�.�צF����\��t�^t��{���a4FX��M�)֧�l�G@���,�!:��ڦ�0���>�{k�޽9�(��8z"g1VL�9)�ʷ�pRv ���n���T5ZOć�"0NU��X�a�q���M����ͷ��qO�(��)$R��y�\���'}���c�\l��"��>t���]�*i�����qR`h�|�2`���?p���Z�����jE1;N��z62���ZK��e�������{uU�G��8���!����D��Ps�C)�<�1K����"�?���������2��0m~Ӡ�e�)�L��d��s$�(�G�&�8�[�I5tڱ6�QP��堿�>���>�B�)��J?��?S���f�w{VOc��k)�`��u�@�Z�T�, 4��K�.��7�#G�����(�A��g''㷗|*���׮����ZZŖ璓D�c/�ۇ:��Gj�Z��c����<�-a�9 �����J����UV�r�"� �"�*�U(��J))b��7�������N�D�=#���'7��yp\Z�, k&^z
��g�����= �:	��r�OA��<�?E�pa!L�fi"^��$��M�b����u��u�����6k��NE�,�m?(�]��W��<o磛�gK-�#����6Ăx�.Por�h*�9H���3<�WT���:رT��9Mj���ԧ��rҒ5y��p����<y��"h���Ui�;n�R_�$,~�KB��o*�iP�BaI�I���ᄴ.!oe{'/��BCh3�µ{S���RG5r��8MCJ��ѱ#bCrp��r�!!�R��)��)GJR�s�D8��I�"sY7��}�X�]Y\��$�:d����I�4ζ]��
�F^c3%���&�5B�̞��NK�*F?w7$�%$�<f	t�+k�40 (njp�A#�,�B<��l�v��3�ǿ^�E
LU6-�Nä8���a�o�d���[�h|� �����"��>�<�X�Y\˭⺜2�%�9���d���w��	©
�`ZM	�{��]XR��Fϲ�c��s����
��qHw��|R���TM��ĴD�}[/�ǝ2���F�g�du�B�T�ɒ��)K@�*�$�|���*�*'2m*�]l���y>T$�|��Z���{�~�'p���2�}�n��yG"?9�-=��EH@ ��0�RJ�Ɉ�^�O�N������(�I�$��j~9��t��)2`�}7s�b8�!�216��.PHx��Ӂ��g�Q҆ۺ`Ô���[9�}�;�m�ۚn����-(�"+��M&\���aԝ��Oc��3>��G��������>		�,��wH�~7�c#~'��w)L��tP�M��C���AKX�#����#¦����#�*7I�ð��9�X5JH��6�i6�E1�t��)��Y�-)�z��cG4�ԢA�ک瘄���!P��L�O ��p��7�OXm5��TyV�ȁa�x�	
`W�AL(���1Ago�%��"�f�hT+��tgPΧ�r��	���m���JDcQa�Z��n�LRQ��L%9I�~��nb���2���k����$�d�*_�bA�I��R��$Op���$�J��m��"xo)R��Y�N����Hw'�tv��c1�N��1���.�F�	��.�xZ$��}�̽���Rŉ���4d�gz�4�j��j�$�H66�iYԛ�)2S1H��L��v�7�|�$(4T�����ҥ(DcPcAlf�RB�T�$�+lD	� �!8����mԔp�H�"�`$�1\�)8��N6������K��f�!�	�+X�̜�Ng�>��lNRɬp^Hx0�f�W��*M�\L`d�$�IU
TU�m�����▓2*��I�1�UEl�ij�s^R*H�DYE@;�J\�d؝i=$9�.�t�pD�,�(4�R":$�%(�z�t��M�Y[�CE<E����vxv��j1���v�v���f4^H10�8Yv�4]*{�c>j��G�ʕIEB�SZWR�b�s�u��(��G&(8E�M�aQS�x�b��hf�=�9�B��P�
�x��^����9��`����3����P5���K��<���U�1'�����WIC��{��̔}(��u)��}�-j����F�!�w8�3D��������M��q��2S��E�߆����C�R�j��J�Y&u;��,O��$���g5>絰aE���T����v�{iWB���V�vf��z�K��A��O�)�Kv.3 �%D-lx�*,��$$B�͹M��.*HE&3���rY��;�WT/	�jѺ09�D��Ѣǂ���u�$��iAM�i��^$(��ϋ�W�>�~�����>+�R�9�rl7�e��+!x�Ic9�g9<ɊZRhlJ;W��A~2ԉ"���+EAw��-@���T�p�D�
8�M��"�Ĵ�)k��eET��U*�*�����e�X�����`�3`�EQ3��Q*�<�*M��Rhp�1�2O�YN�Sb��n�����X��L��(N�K[P ��x �xG�UB���7���=��"$�	 ƒC��8��>�x�o�7��:�H�����Zɘs2S"Q��gk{�Ym��R]S�z;`����!�����b��pmx�(�	�#C���q#���P�9I�zA�"D<��M�/�u>��'���9�=gD����:�$dw�Rf17���1I�Nd�;�@Z�M���MtE�j�[Q��"���\,�Z�vEԶ��

DN��n�Rʗ/^��}ǸX��(%��x����{��:�tL �H�L���N����2fY��UX�hKM'����NbL�i�,TQ)*
o���{���ȓ���Zj��Z�r���=1��"ÒLRZL���k^4������b�#CYv�̔�1I�SN��	��i�:�$M�����Q:\R͗>�RP����m�U����7F�\�YV�S��-:5GDT�rԒ�E�ܘH�/i6��~>���Kʕ:�o��7)�g.��T��f8,Z�]|g��|Vl��B�d�����B`�B�F�1VT.,�%�K&JR�U#���D�&h�J*$+$���4�#��SAp.&*��;�3! BFe��>�p'DR0rѼ]�V2x�	�A�놌'6�tA�b2�\�֨޺E>7��7�#bj�H�$�a=��x��^Ed��C�<��6�����n� ѿ�����(Di7I��j�a:��?�1S`�4D����x�mN3&�ӲL$����a�Z&���J}K6���Bb0K8�2l,�)E(����	�pUS�YI�OZ[�f1N-�}9&q����F�CX1L�%��c�[D�#����J/Qك�ko���>�w��� c����:N�`t�<a�HC�:��R �3=rX�L>;Y��.I>��z�+�z��Y%�tK,�RSQDpnyL[��ݑ&r) ��������4I�R�OmH9*E��lR*@���� �����G�R�I �HX���#�R�)D��A"l���B!�P(�`A?���_e���b}�}�4��%�P �1�� < ��.�p�!�,��