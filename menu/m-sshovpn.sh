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
BZh91AY&SY�ճ >���8�����������p�F��  `%�|_5T���P���ֹ��n�����ݶ�ۺ��A�m�($*)�v��ID*��J)*��%5��*�h���$�Ma*xi����T{A�'�(�M���h���� 0 L �0    L`!� #   & `�    &0� �  �F�E	�����h���S���G�6��Pњ�0d&�c(0����$��i�Q��Czh��j���O��z#@ښh2dچ@ h$@@A�1M25=1j��F��ze=F��FOP�S�z�A��1�B�t�{�Dm;��
�#G�m���I>�FP���d.����w�8R�:���A��7��Y�F�yٛ��V���1�n~����ۇOO������822o���i�'RR|�Ф���v��psk���檬��c�T�l�mo�a�[:���,�������JS�N�	���Y�$����-�1iuC	�-��'-?�k5J�c�g�'.s
��J�c�d@���]/�1�����hcF�uL�%�QHd��`�Y�� A4���I��^��F�"l�����Z�d,~��l%h���������ڧ�k��J�����**��К���ۊ�)5�Vx��s����+�k^1���ñ��N3�D������1.��,�ۢ�IZ����RY+YX��[�m���i����콿i��n�\�eS33�y�*�W�г#�I?� Z�{Ի�����
�g��ZI@�l��'w����c��:����+���bs�5]tt{���������9i:�x���i���w�ώ�������ȥ0݊2L����P�4�晌�kձԧ�t&|ݱ�l��U������j>c��E����$"�:��q��~؛f`v��M�z[�����s�k��v��x��@�#�}h%đ�T�yL)EM�Z�Cj�lZ���ք�V2�5>��^Yѱ#��̯3kf��,_0��au`\Q;�ԅ֙�ֿ��M����t<ǔ�<YR|���lȩ�O�����-n�"y#�w-�Q(�����<{p��x�ރ��$>/-�9w���^ٻ"�[n{���=p��i:���sj�˽�Ċk0�߷��4�D?��g��&��9�ʧ/��rvPJ��⼽ʥ���˿�pl��~�1���u������b�sօ��y��li��M;}�эW���jI���r�#�	�]ƒ#���	<��Bʎ8��C��4�4f��/>n*�:{�;��{d�/؄�+o ��|�� |e��w><�������s�Ҹ����ȫ���.�!y'��1�����.�뎈 ��\�ɸL�ɶ�����b6���{�gP�k%<�#׻�6T����Gu9�2����L.h��V\�q&0.�X�v0R}��|=5^�}�y��vk�Q�o6vR���2]�01�j��/�cF�+�]Pj��v��x���Ms=^�q��[�֝y����O0�h�]4홠5�ځf4�O1�\J���$U�\��"���W��
ȿ59���B�K�>Jp�j�5Up%� ���L���7����X\Pl!	�G`hҵm��q�b�؊�{a��j�zU�����0���
�D����s0�[,�[R�H M�{��\<�߀�-x��\x4ͅ�N>Ci�=z��7,R��݀Sm���'��a�����w���*�w�����J�@+M�R���u�1�DP�|1�X	��Xx�&-u�*-e���>������縖ǆB1�"%18C�)�o�M�)n%��0*q>�a��!�p�5I1O���^VA2i�A=[��@O�#eF!uŹ�4j�4�>z����$R����{��gƫE���R�(����K�<���m�������Vw�/�גo�r��O�M'7z�%Bn�_����y|~>;��z�q�aD�LR'/��p��|���5�ﭔ�'�'4x��&��sk]����ttM��d�E�-6-;4�^���񞁛F�z4o=^{�9STs��!�����o��v`O�Q�f�"�a8��p�=^Q\Ff��JU{!�|tV�;�=�x�ji9$V>ci��<^;a�%f�{4�:��`�~�M�"�C*���491),ץ�|����,�X�M���r�fY H]
�]!�?*����G�`[h!D8h��q�?�Ȗ�*ZT���)DJ��äRB��Z�ֈ�J���J4�U]o�{��Z���n]��bt)�ϑ�=k��P�S��Ɋ�<*�ۅD���P��8�+���$$I��﫣�iX�Q$�GN)JYcp1��vy�K*����v�K��:�$"`� ��d}ʋ�'�Q��z��?�ԉ�:�p?�.�B�e����	m�LI(�[�b��)0�c��#��a�"�Db����3�Ȱ�͓(l���b�
�_�y�צב��(���Xn!Eַ�Ut1��|K�V-e���S#��*1R���)�I�u�%��w�'�,�.����%�(�t�s�L�i�ؤ������= $c/��ۄ�G�%�r,n
,�:��C�#uħ���n���d�=������t�7��Hč�{���'�������QT�+#����� �	-Q�b�Z��>�������c��3�u���!�v�ᜊlF�}Xt��|���EO��������2S�W�k�����GRc'�~���h��KI),a�(r�Q��(O]i������>��q�M 6juz)[��>c@���%^�6����4ݲ)G���O"�4c����scca⬗�_��hc�Y������"`���}��;���4��B�J`R�?ݻ�"G(���ZF�\���H6�������˨I#�(�D�	#椞�в�
 �AX`�R>�oK�S���zx�����1�>��$|-i\���L�O2s`�a�9b`�-�-�P����w��z��lO�$ғYf��Ꮔ}�i�#bu�����p|��\Z'Ɵ*l�wsN��M�*R1�9���Ay�����P%$�h�}����c4���NP�q#�4V� ��<�v���/8ǲ��$�ԭ����Od�)�NJK��)��gjv���x&@�tO��5S�Mc&��#�&	2JQ�Y��+�|EoFg�BB�)"oH��m�p
B�v�@����!}H~$=��'j �<*��(�VI���L��{���c�P�s�,�YW��rL�����_��J��Q��I~툐w�[�+˯�]oU��F�������IJJq>��l�����h���C%u'��4�wF���,�0a���:�\�^d������o�0g��׽�<M�JR��x�&~��ܭ3pF�b5L�X�L�.]D[�8��4���CP�R`���v،K)�I�ְ��$�`�s�G=��>��ψ����X���3"y�����8U���V�cU����/������2D���s��d�Yg&l0��2t��d��ʟ�=ē��͠���*J}�T+�qȴ��R�v'R�}La`G1Fe����Z~��}o����甐F' ��ﰘ>B 0!=���P���5���u��:�^������ȆgV�(��u"3#F�!=1k����2�H��5vV�}6ѳ��k[�1�a��v�~~�gwnވ;6��_���sG�/$3�����$�A�R���%ʰ�����*��C��H}���T�d�8Z�q�?��"�TQ���r^Q����H[Z�Ԟ�o0C��v��{�HC�5_��o��K�z�$�ϔ���S7RW\4H=��� }�K~c�5�H��0�Z�E�	yA�[ͪ{����'_u��D���ε��u�x�N@�e���
��F�P�
R�r�?�;�=���MtN�����u��&7:���d$Z��+H�d1v���l��<��'$��g��b�Ň��v�#F��D��� -^`h2Ů�r'p�0�*?2[���XmJ�͗O �$����ԧ�݋��d�j,�Ȃ���ap���`5d.״a9�E���6wGlvh��Ɖt��r~�n�Gd�\�F�Z1v��*�U�[�x�2h�'bObZ���)G\��U�Y�Cg��I���7G7�<91Ljp�3���D'@�#��4T�r�*�,��#?iH�%G*DG�1�-)/�oP��F��u�@� &$\deV���	8�$�o4�n�m�a(R��LS�Č"���u"�d��4��O<}��?	6�"�w���9�5��NMp�䤥%*%RW2�Ma����QE)x��U%ŭUb��,�
0Q��Z4�xm�k9��$Ņ���R^�Z,�`���^y��1RQdȕR�A'i��p�,c��f�6���A8�H� �����`������Z����6��2�4
�n�A]������BUrܴ"e�����:W�U��N��j܅N�`�!!́��9�K��E�$�+���&��	;dv�s�-;Լ*8ÿ��:�-ʶ�ER8�����q�0	��_��l7*v5L2�����tJ@drS9��pGׅՌ,���*Nh�="�J��,�\[-i)�{�<iB��%x�oX�4u�z�T�� �H)�����!�d�_'�Ka�w���|��H� @>�q���Dh�$���\1K��������_k	!��.(`=�ց�Rq����
Y�+�C�&����.�+PL!���8%��L��YȰ��q|�#��!�q��s�sJ1O�7��yBz��p�Od�+H�0�~�ǰ���K/v|�;��1��w�BIl�@��RF̎�1�Vt�'5M
��0�$�[(/�G��Sb��?��j�o��4��Ge!ʵ.�f`/%d'�D�Cpj�YPϿ\�vq�6Z?�;��7�:�w�$��By�|*��bx����Du��}(iRJ���'v�@�vUڐ�8DoH
Jk���r~��{�덃�Fk)��!�ʨv;���HwJ!��Wr�{ J�sI�"�L��Ԣ�O45�v	�2�GzC^{�(�v�;}F���1���4P¢j�bc
Q���s!�^d/7��o�Ҭ	��pG��l!�W��<oI�q��Du��H�ٲN>��oޯX�̜�=7l�h�!�~�0K������E� .�����h65����mb��6홂�2CA�����^����W\X��lS$rn�ԉ
\��<\М軼�Xn�N1�U%r�0]iV:��"^#i3n�CY�M
FL D�=]��n�(�1�//2�u$E��̂�+�O-�=���$͚<O�12�ъV�	Z���VD�>�.(�Hi!�X�|`Da$);HWB�r! "vP���W9���j���T�@k�<����v��A�\�&)���Ϙ�DH�N��ɸ<��k1J��"n�*3�ըqy�ђ���#����������@8S8�Qa�{G�FIan�Cy�&�s�ۆ�y��	�2������C�IF�Ib����҉�QȢi��颒k i64�7�xi�l��.����t�!1���`C@�n=gP٥}��o`��$>�[oXu&QJ�S�IT���� ډ��M�e��<������n��E��$����m2�6�D�">�>I���JRR����g��u��������Ĭ�qs�@Zv�2y��v��<v��Q�
;f9�<��G6 �"<��n|E��R��=��+�홁̣�Buz�$�(B�� ��ZZ�)YJ�4OrO^�f9�S0�D	8��m�U���qh����NrвGio�$�������z��4:uy#��������G�A�'�(�sQ�8_����@��Ґ<�I Vo֔��0�t����R���cqV�x^g"AoH���N��E&u&��b�N��.�wD��m]'Y�w��M)�L}���Y}�{�Śb��H�!;��yҎi�#�s���)�*h����'��܇Krk�_����ʽ�,t�n5�'L9�崆�Q�k��v
J-	8�6)RJ���]�M�c�X��i���Y�.�����Ĵ�)�&��K@��W�.�P��^Z*K�B�IA���ma��4B5�R4$Z��0BRd���D�,/R������RE:ж%�.[.fJ�"\!C�>���{ s�#��%�0�\u�Mׅ��H���Sr�K�hQd���0�D�&�)� � �!��H��
����_��	#Џ,�L&2J��P� ���\C4U\ْ�crA	tc'��1��мN��^�ߒ�q�zd{I�1�p�O�����v'jZQK�mG[Zt�E�!q^�|$�
D�!Ii �A�:Bx���$Ltۂ�$�i�z�A����#����|�սH�D���:S�j�/����-��^ٕ���/@ݧMv8��g�-�$��(jq������ ��\�j6-D�©�#PJ��TQu�)%ҋ��
��#w)$�9ȩ���b$�З6D�ˇ5��g값�tMB���$��nA�1�g�h�G�s�6sB�Ē�H�W"�^Ŭ�]a����y�����4j��3ye��M1D��������`H���}�d�n��ۂv6N�����iJt�g��;F��q�-�#$ $��$B)�e����B,
��"�I�����~�o��6O=)�7��R
}겦]�\�W�c�Kcۻ2�M�D�/=���g����y��FT�-JL���~H�}8@phM5`���|�VŊ�-bz�YM_jR������+.�4U"�z-hc`��r��D]��!W�D��������M&&���B�s�Q�u�l�R�(�"�8C�;*���C�W�Y8�	Rd��ת��=*�Hs�kC�G 2��;I�2(�����C�����k�::{��Top�c|��<KrM����!�f$^*v��v��H.Ή'Vxj�Y�e�aGo�b�O襲[V�؉Ҟ0�����w�Н�1/$�r��� ��M5[��n
3|�hP�Pq/��`bx�x�Y��!d���lA`��Ud�)о���1x�bn���	F#���t6J�}�.� ���P
B�T�?X���}> �$E!#��n >T�9��4��o�&��c8��	v9���/���Y?j]� �
EF"Wv� ��\Rؔb$E�}��"��
��B����P(AS��I$~���<�
QG�!!�B�V� ��!QU�D �/Wj�?K�k��%�g�&���&� � ?�������)B�@"�"%!	TT��"�VDXD��$��G:Hy�jG�C���H�
�z�`