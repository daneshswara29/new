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
BZh91AY&SYG� �_�!x�����������`���P  @ ��}}�EE� �r�����5M۹i20$Zb$$�j�Fֲ�B��%Кz������ ���h ���� ��  � ���    �� 2  � ��    dd �!IML�D&i��L ��3@`  56A��4&H�M�����j=i� 6��dɉ��OH $��4�!�==F��*��Oj���Q���l��`��1��}�(~P�)��a?���_Eϥ��s���=)k+>j������N*_U��$��!`h�M,`[B͚.���q�%Uk[H��V����F�F�_Z����}flLc�cu�����t�S ����
ڇ�g\๕�ܾn�Y�N����&���.��h
��g5[*����c�	6t�n��{���Fe�z8< sP�����ڇ���3!�0��[���!<�0�}n����H�}�<�	 �о�c��]�G��6!�}3N�{�׻`m�%>_x<Xs���M6fA�X/��041�XX�
��0�XxXkd� ��6���5L$��e�;�r�E�p��Q���L�XNXzl���dr�&���ě[�T!N'*P9���u(�a�b�0e��r�z�h�h�}�!�uƤd�a�:]��C�2(�U�Wok��{XUf����f�ƍa�s#�&0L.!�<ҶR��.g��9 ��|ht��!�4<���B��r<�2B�B�uA�u�?"��a��B%�>J\p�k�����p�a��Rf����lw?h?G��'g'M��x��km���D�/���_)�oJ��(���D�/v����z,P5>`&��k⯪���5=7���������!�e��s��)��<�xB��`��&�z�NdL�!�d;����r{ �����hfV5Y @p!� i=`$�KQ� !4X���B���&��:c��@@@qC�u o�����0�8!p�XL�>�ZI'���.�������0���\�044@�_��e�yG��J�&y�a(� Q;��@z��k��e%ł� x� mr�,I�������_���GS� i�Ԧ�L��4b�����~|�S?c���P���fy�8��*�%$����K�Cr�h6F��Cr�d��Hi'n�3�Q?lnA��u�C^"��q��d�q)˪��ǯ�~9�d�r�y���dS��m���:|6�x��v��������;o��0�< ��2)�Sg~.y9U�����O;X�OW��P�q���;=#���=�{�(qH�H�'�� [����$$�ȟR��!����������Pv���Ŷ������S #˷Ӿ�i������:�{�g��"c����:]�Z(�%�� {h{�����N,T:� �X�H9��CQ֯0�ݣ�BD�|��E��mv=���h�7,��# a�C�hx�Td��#c��f����d�@�0�d�B��!F�9�Op���ݱ
��V���l{�:��C��t�և���,B�wi7[��7Gg3���7�z�A����v���	'jshHh8ɜ��.$Ǽ����^áa>���li�fF�a�ӛ��Cm�M�R�����ԇ�C&�C�a �δ����kwʺ��MϢ�\�����!5�~B�C�;D$<4�g� C��'߈?\28�vw���;��>�ؐ������)JE7��u݌�3H����U�Ӕ�:{r�ɥ�Xt���'	�������P�q����ֆ�:�m�D$;	�%C��'�H��r��w4�� 쫕R���C҅�2U`�H�!���=�u!�C����8<�i@��y����u��`iC�Ԅ�В�@� �tBL��Y�a���u!HD$��Y՛�ս������<�3�
"�/E�P�<��',mB� ��a���Co6hP�M�+�P�F���mE&��$��Bv����jC������0��!��҇a����B`1��5R�;���G6;D�&/�$/�'Z���P�m��.Cr�oz���b����T1�jCV"j[uPoP�C{E[JCڴ�$ A�|'���UX�?���W�6��e���FD>���` ������y(r��O	,шy;��{�85��.mCٍ�i�a�I���_��9~�C�;�l�C~`���};�ޯ�����PЃ�0�"	Pώ��B�S��;�����?r�,��x�Ts�!/v��mm�!~a�,�����)z�F�1�{�I
���2� ��Y7CAG`���5�;�59M�ռ7�/,�L$�fC�S\
�"^>��PRL�S��H���c�t6-�|�q�E��x!I�_�C�$p�4"ُ��l<�"ӌ�D:D�%�����y�w7Cm�͍/%Tm���Qi�A�!r�e
/>�^,��&8]e	��Y�p���W�__ �����9�I��

�P�&#�RIU]�eU`9�3UUU�3$�IK�a��{��0:���7��()���ࣨU����_Ѕj<M��k(�!�2l��N��A�@�qk� ;h�ȻY�W�5�-c��4��0ms����;�In�b@΁=\�����0��Ђ��yh�;%���|�g��L��;�P��t���u��m��ҵ;MûHj;D��v!B�ʸ�m��s��� y���R�L�ݞ҉��A���cGS��A-�h�lBF"v㣃�LPy����P����H���K��6��]�<���w�{�L�8���`7�+ȳ�DF���إ����GB�#�	�|�j�Za��Fգ�g��f�eZPŠ7!ru�l��# C�ڇ��������ѩ�"T`2�-[X1��u:w	����v8����)�V��=�l/D.>ji�1�o���������:kF�`X�LL�L��Cf�����'��#O���������Q��D��&}�����f4�MY�5�RtT���&�^�o(�C�It@>� @jhA��-Ti�F�6!d�C�C�]�4��e����T�z[������]lA�g;�l������#c����7n6�!�f�
��vX��]�Q�3�8C1&� oS1h8�-l�D�v�f�����0s^UT�UUT́�ǉ.[���t���j�͜�!��I.�P=d�{�Z�Lܣ��Ç7�ٙ�kW�ֻn�b�� LMhQ��z�ja�O/Ġ�Q�τ��	�@��j��߾'Ȝ3"x�a�%rCX6B�BAA�+d����B��KC7[&ڪu�l�n�z���]Mr�W��vm���1������4p������zrsQj� p�׹�� ·mszAͺi� |���@���oZAPx����,3_V�����#�@�Cf����X��������5���lr��}@����`�x���r�yo�1+R��&�KDnP4;�cZ`��>�
������B7C����6	`=�8W��PR�q|,�n\i��16ՁzՑ`�)A�|,�ۗ)*�1�P�Yn�t�΄�p�b��^�9����_d!�Q�"�Bf�C{�=�P N|��.�*�:~�^��*�AQ��\��&Qb����NN������^�(�v!���k"/o����e:��̲�|,w�m�ۄ�ox�)ҧ�xa���ܞ��S*Y��ԑ��m��T�EzVE4Uq��AGG�~�*LE#�!bH�?q������� �� ���#O4Q��TC�rE8P�G�