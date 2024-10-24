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
BZh91AY&SYAb� �����8�����������p�f� 0  `$��kU����efd�E6���ЈB4mHQTP Kl�E%%H AR�I(J�)Q@HBI!� �Ba�zM�LG��<�=	�40�h4 �i4@4����L�   &  � �   M4����L�   &  � �   M4����L�   &  � �   M$�D�4S2e2ާ�6L��L�O�l���3Dڃ��D4�4�M4H$@� �jd��)�<��i��i��<ѩ��zSF�4 ������#��|	�}�"9+�D���������׌|��M�[��?��]�M��i�z�r36�Ӣc���X~��×�q����'��`�ɻ�O�3O�)8%'�}�%��cb�~��ۿ}Ud�3jRt3���S�wU|��0��ҽ�D�b�<������<�E�ea~�K�aL�^�l�ɯ���f�ʵK8�x.iWW_)
��%~�:�7��˨����P��Q0�m8LH��E!�n���gZ�Ӻגe*	~b��#�4�b�j�K��E��m�����91�I��%�~K601*B�[�*��j�wN{�9�U�L��r�rwq�7k��3Ll��3�_����Վ��@�$�|�#sم�j�N�W�t�+iYi�\�6�����A6��ܻ}�g��vg###�x�*�G�̳#�I?pR	#�=-o��U���I�yLJ?A�i��k��>gW����XnS��x~�6K��7�5.�9<_����B�~����Y�����ha�o��m)L5`����R�(�Z_����4mr5���pL���]s�J��\qi��)5Sa��� f@a����R.ӽ��G��*�� *�&4�s�@�[3��
���U���C�G�)H,I�d:�)EM �Pخ��*���%�{�����G&�M�3q��tܾ6/1��"���0Y^�b�/Z4��Ͱ������<E�ah�>~�VdT֧���=�NwF�7�����<b��-���'O[����q����Po��GS
�,	_%�:V�h"�i�F�X���+�o�_{!�َa~$��@.��a��9g�����d��,�t~��N�	T B�f�	
�q�q`��M=+�{�&��eί�3��n��؅'�k8J5�e��g��eMq5��B�z��Ao`"�=��0��$9j8��!�E����j>����!�a�=��oQSv���$� �|�W��(�Ws������Γ��7�ʋ_�� �q\KB"K��\��ŭ펈*��{�a�$y�_ӥ�0���9~P�Y)������]I���QN�vS~&\lϲ�asE�,y�����5݅��l�;���^�|l�{N�k�Q�v(�0��g�=�#F�\���^�F�X�����/o~�'4�4v	&�If8��\� 8�k�����ik��IؿA9�a�(�$�h�%(�]�~%-�Ε�39�I��d�z'[�g�Dj��)v��C���m�-�)te3�i�+6Py�Mڂ��0�Ȇ�g��_d���p<�A�Q0��v_�p�g�~~�嫦��T2�"�)99z��P3/"��d���m�⮹�I]ގ����q������S�)��X`��Y;�0%��'*]+�y�����8d���&jkt������pCE9$���1ż���!�/(��3 ��2��Rj�f��䏶��z��'y����������F2#!&xv)��|nSĕ����p��`�rY^�X^*���K�.�3�oޥ�$�u���d����]?����N׋b�<��a��o�wV��ڿ����5s}�j_�a�sr���au��_������X���򩛣�IdZ�Ն�+_������T��ޫ��'/ֿG@t^bJ�E���TE, 1&����ǿ�����U2����@��y։2<؊�=B|' ίmTf2Y�f���8@ڤ�'����=v��^�':��γ8������2;���!bF=6�s��t<��У	ۜ��r����$�2'�$c���_�V��tH&�$��g �z�NX�Na�B���4b2RY���{���1���+6_�rj�$�RUQT�i�t8u]w�d��@� `z�X�6��>��K�,�f�)Q�%���Y��XB!�ƙ���u�J��-@�2L���&�k�LPS��ڻ����S%��{k���P�S�����;���
I$)R~	:z�/bHH��{=L����EIt䔥�8����Я���`̼D�@�VBM
{�,Y
c��{?��֤'�hSE��Q�h�O��n�����x� �(� �,����F0�(�C��OqR��?*��Q�bٖɲa��y:ab,Ta]��/;UuMjS"�,`�Qwak}�� hu�ca �(�TT2>���U0P�K�[$}��c��Y�>e�R��X������Ez��#{�=����;�X<^ƻ�o9��T,ż#u�#ԃ�L7�9������o��&���,[��"�Lc��A.>8q�� <FӜ"a�1#Ǫe�����$�\.y������w�ު��ޙN��
�;����ؘ%u�.�E]g�N�0)�_7�	Ƹ�hD�����hl��؟x���Ԙ���a}��'����D�\�`)���!����~o�>*�kj��1�I�Qw��,��t.�$V�	$�6��@�=�
�x9����f���-/�B�a���/��~�Zѐ�U~;��I�r79��X�zs)�JL����q�G��9�5쌉`z�\S�~@������^ ��$Q 0QS݂� �(A�`DCط*�{��x�d�[ ��6F��{R���"zF�w#�j�s��И4�T���J�bp��L0[�t��Ò���$�ۮ-��$��i,��{�����k5�C������.�q�O}>$�!�h����"�*T��p�\�xIIb� *Rn<|9�#-�Z��.����D��;0/��o��81s���g5�sp�\�J�]$K�	<YNBs�/�+�c}�L��S�q�2$�:'�Op�����ŉ���|l-�=�?]�dp�;�:F�a$�\�$�M \�aC�� E��1ԏ���E�=z��o�Ljӂg�س�v���b�3��e�
�=���~~�jW�2���H���C�:`��uu�����}������.�jJRSy�w�>��\;~3����vo*4�o.�����0a��x��	.~��I�)5v��g�0g��׽���)JR0N���Rg��=dё�MB\�Lk��00]d\8�Y�e�X�K%)dФ��K��.B�9� �WH��㙒p����~s��1(~��̉�+O�����Z�mK���/���YZ�h����sי��e��`��2s�d�1�}'�$�c&�5��Z��Z��p���aybҥʎJE� �K:
4-�}�3O��~�}W���) �N!�����!��](�Ї��U������'��Q��$>���Ey��X��DG,_KÀ��:��/x��ÞF}U�7��ԇ3��������j��b������'�i��S�C1�R�$�?`��I�`�qD��ʔ�cb�%!�����(���Q���4KB�l��n�S�=w����=u���ɌɌ��r�ߩT���z����/����BIӱ3s�tCD���,)?(��?!���q"�E��A))�fvu��x �<���p�g��ł�N �l5�Җ�K�׿��i���(������k�t��G��z:r�r�`�/����Z��+H�(l���z#�8ӽ?��p$��{{�GL��x\�I�Yr4h�єLY9�-��Mm�)-����T�J��?n�+�1`lMM����$f�5ĵ)�vb�q�#UE��\~�i ����Ր�n��QC�O��8���:&���.���D�,��D��cM-���J��-�;�4M�'�3Qu(蒵ʺce��1q�ch.���~��άK�㶷���TRr�r7�����M��,��G���І��BH���"@5��%�LP�|)b،��j��(�3RSR�U��8�bI����T�x�0�P��똧1�E559�Q�Ih'�P��O���@%t�(�炌'�jb8))IJ�JM�Yښ�����QE)x����)K4�&�`,��&��j�gQ������b�P�JJK�Y,��/μ�U�b��ɒ*��)'\�	MC��c|����4�jI�I9Z�))�)��l��,�,���6f�o��Q�5廎���p��^^n����jU��-	Hh�RT5ؓ�u��MN!tȹSX�;TY��BC�C�sq:��0� H��d��zWdCj��:��LZ2v�xTq÷�a�`�[#�QT�8y��x�1|�&07+�t���N����q�<�2Y5���n��N��sÍ5q]X��_��'�P�S��B��e&��wk�;�B��'�-��Igu���"�
�)#�)29F_�%���;���P�Ą"*H�7��
#G8��O*�aT��Z>O���a$3���b5P��G~ӈX7帣�|yHWׄ�n��d�!.���i*gE����`I ��(��ьlS�#|��A��#��F ���8���H���~�և��e�߽�p���X}E	$a�`D��~k?"�|�eo<�ٌÃAG$�N@�(���������I�o@�{i�Ԍ�"<��p�ޜ_��eC�L�L���W	�����șHO"�u_3�ޗV;]��3<��dX�`(���և0'�H�Jv�T��<���t�6SϹx(���eڐ�(��cb�9�`l�c�'<��/�6�E/<p�y�%������t*m�����C��D�,a0����6B�l����)����� ��;Ԭ	�qGֈ�6(C�����wޓ��'"��'BDt�m�^Y'u;����D�nƑ�oK��!t��P�m�г�"����۞8q�UB�ڨi7�����Q@t&���At6���ŧ��ک4���,[RjGQ�HP����ӻ̉�E����ޙ�㌢�+����J�Μ��	�m9Z�qZ�# �"T��P�G�C"�P�(��N9ȋ�阅&w��;�zS�6h�́��lR�)"0�5�c�m�H_��qv�j��m��I��$�
'��^����C��$���%y@՛Se.�u�_��Ĉӟ}�jM�#SW��F~�Q,��
k��TEG�-��k�`�7يTD�D�$���V����%��-�#XБ��-�##+�D C$��@rZ��EKN$�[�&l�nf���&�,�tLa�=��TO:(�U*4��9ԉ�Q�Q��)U�E$$� �n jn>�Ӫ3p�^]q�`(a)a2���@`CI0r<�j^ZI���z���B=��dZRM{ 7�owr�@�JN��C��f��E��$����1	#^��*x��A� � ��52�Tx����;zLN�03�%[��<B���rG�D��W��4!G\�9'���$��,R�o*Nd�z/9{H�='�����GkQ5A�$�wy������eBҭij��Qe(fh�;�i=��3���"�Ut�n߆��9�u%���;P�җ���Ҫ*EY(�={�y�sC�_�;��x�-d�=���Q�,�]�Ü�D��U4_�۪����͉�\ ��S�F�/X&�
�����sA�E�>(m=��2�j�hMql�KH�e;bw:�.����BiO�bc�5��/�oJ�f�����	��s�do��:'#�L⛒����_�O��Ďm��L���/5J��,sPi�q9�țז�!G9�	R�%���%b9��.�	�ud���l���OP4Q�,AIb	i`cB� n���Խ�P�]��1.6Xf�])J�Y(#����00R���q���u	�p��\W@UQ�8'�[�|��8��tb�͞�	��V�)�!���R(p0,�
f���\b�H���	#�H�W|YĴ���T*��G�y�� Ld�Q(@!G�y����*�.پ,YS�]�;�a�H���j�k>��+����O����O��A���N����c�5	�֝&�t�@�rL�!�R>Ew�DY�^��X�ʮҕ̞0��IK��u��&}>�^N��<
�<v��z�,0����:S�jzC�ʉ�Ē�hbL��Vܟ9�3w�5�����Ym$&ACP����&�!pl�\��lZ�FL�T]򢋬YI.�^���v�!�R)��.�Dl�z渑yp�95���걒��Ša�4� ӈ�ѹ�$�oI�|6D���oS�T�U�+�Lq3����mUR�[�A���]զ�����_�c�����6͒���Kf�ɔ�����;Sʿ��)�~�1ߌyǾ�����@���SM�V���H�**�PT"�<'�6Zg8wwpM� �3�챓�(q���F��ٷz�"������>��c��x�5l�7K�ѝ%�Ɉ��%<�;8���hM50VI�VLl�$�b�$X��@�U�!�2�q(�P�H$�*��@Em^�4�����$�)�x"z���8tj�ѳ|{!e��2�%�q`�:�J��4���}	��pCZ�p���ӊT�\gH�b�5[8�M"��5~w��@o۩�Ȭ�N%s:��s�>�*r��Dmn�g�V�N���w������=�'D��Z���Ar�$��dfD(��@�����m�R',w�媪�Y��x�:�1�K�H'�A�j8h���Q�r�������b�y;��Y�4!aA�?p܈�!"nQC��H[Q�8��7x��eVf�Ȑ����d�Nn���)�jBR"���� ���2A$R>�W+�$Ne��A��ƣ�f�١1@�(�9 ���;�O�0�(�LE"#+T��M�HKdQ��!�� �����B���H��H�	e@D)�DH�T,H�z�R'�!J(�	$LH,U
�E!hR���-L��Ed��B*�(���@���dT���6��?������k�|�Y��d)7������c@�p� \CL
cAP��0#����w$S�	+�p