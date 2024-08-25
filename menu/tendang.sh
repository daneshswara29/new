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
BZh91AY&SY��,� ��qx����������`�ƐP�@ ��| J* IB�T��$��(�B��)T���� 4�@�  �  �    p �M @ @ @ � hh�M4       2 �� 4� d  4  4  � ��	�����4Lbd$�d��&�OI�l�e����M  ��� �ORzy!���Ci4=M�jz��h���)���"޳�{�岤j��������M&&��w�h�}M����[M��&�O�ۖɭ�M��?|�a����W��]619LL-#&��\lL�����4j�����Z�ur74f���q1S|�p����o�2a��t��ɇ������lkW�V�{�¯K�\����8ۗY����n۝�s����3|.A����O�s�b�N
��M��ī��8�����joV��l4d֗�\�+)�p��~yƮ
���kM�����Ig3r2�����c�\�+|ђ���ɇ�Wݗ����M�S�	�f]g���6��G�8�dŋ�#�wG\��]+��J�R��OC��r�U��8�U�#7��M��7���Hk&,XX/#�Y�,#����a����E�5��(w_4~�/�2�G�g�V��Vj»s��5�K���G���Յ^˖4�#��zk(�R���ceܽt�������=/䬝�}�;ԧfo|��װ���0����۟�������]��[H^�w�g��&Ny��������ظ'��d����s�R���6'�a]M�7R8;��]�[G�8ߊmuW��+S��W[�6S�=�x���5xݧ�Xv^A��_c�d��ή5^����`�I��>��jm}ʼ��m���u���}W��<�a��S�1E���U��3�h��ì�t9��ja�e�Y��a^�إ���i,,T4Ɉ�eV#��W�Z#!h,]+C�h���a�
�+���%�_+';�˾��?�{O����pe10ɉL8'��2Y߷����5������x�������a�YMO�嚧i�Z��jJ�^���K�moy,��e�{,�z�5��=Ʒq�^V��6��+U>��eGƮ�)����5^��T�idJzT�b��Y��3���Z,_�+�Y<�q�����t��i��2��0�&��׵a9갺I����r��Ut�y|������mE�y�������[,��`�+�en�+M��H�1&�;���X����^��o�vX�s
�lqӍ���9hZlR�x���e=�i��>5�[��iX��[���oa�Sʭ���܏e�*��8��R���2r5�\�k�l�t:��:����vL#�v���&�kSE�鬕�8�>�|������yY�Շ=���h����STɆ�E�m|��V�G���2�����S%|����\c��]�^u�<���r��OC�x���^�q���{��x_CG��&�M���q�:oU�ƨ菑zmV���6���캕�N����0��i���bf�Յ|�°�+�+pt0��X���i�-�bb���*��{��[��ڗ����W�l�{�,eO��d�=F��W����Z���I�Z�c��a�a��9Xs�79%s����O�}�:������>�e�-U�����겔�ߖ0F��;u�:���vU�s%�ƍj�V�L�5֥�Q�O�I��,�B�[���گi��61+R���)[[��}'!NRw��[%�uS���k&�:�se0�-N�b�)Ζ&���w\n��^��4ݱ��i��7X�$�F.��[��M��7Do����i��4�Q��g�r]�ڳ��ƶ)��[���N���.ʳ,�+8�"�LF&&�g~y�&&*�a2�a�aXU�
�)X��^�9�nKk蝧���G�r5���enW��+�a�a敒X�����b��|
����Y�������w[8��|rX��u����hɓ�V�w��+�3n�)N���t�KӉ\�����U�a���W�~�S��=�S���FJ���F�ȃ�e�z��
3�hM�,,[��_��t�.�/����ܖV�eb�{-�#5x��<��#��YL٢�E��g~e}�z�M�WRrKz�h�<{�R�N�\s'n��j\e�[�bs4�+�b��+��;.f,S6l_���vP��j�'�Gu�ع#�:�����XV-vFj�a޼����-,Z�x�35X��,Y�{Y-Ѳ5���n9�wX�̵��o��˙��qMUy�[f�d��[ߝ���Z��:@j^��`�����ĭ�fǡ�n�j��-�+��N��v$o�Ӝ�r�e�ʳ���aXd8S�L�Ms�N�8<l�"�W�1U��N�?�a�aU��%bqð��AVU2#{6om^�}a��j��o�iLM6.�云�H�#MU{h��/�Lհ���a¼J�SS�V�Xx�xu��͛�Ͷt�y/���L:,�6:ӡ���U�V�;�=.vt�Z����b=2j�:,���#������ gU�1tK�5\-��f�*�q4F�j�asG�s�X�-vk�^�^��G�.��Z^7l���ߦ�S�,���X&NFnҷ�Ɲ
�jf���E�}kU��#�WLdv�XbK��ɉ�L��a��ɜ��w{%�nU�eW]�����jo�X�ZD�g�R�-��_~1'֎���0���i��e��d�����9�OH�6^��{��x��_S*�nWXe,�Qa��&L��HYAy��ǽ/z[���Fk;%a�w�k��⫉Y%�4d��N�r�=�����K����Ů�dXYY0�bl�ia�3b�W~q9�ѪlM(8��b[�}5YI�b��nTZ�������j�U�k��N�Jo�ݦ���&��U��1V˦2��h�\�����-)�N���6��Ua�a�bb+���Xk���ኚ�ؕ�Ň��le1d,��4/#�8�q�8���ѮkF�i[j��d8�����Z�M��,�S'::�F�Wi���;���mF!��g�v��V�:����^���58޲�+u\���w��4���ŋ�^KD���9Rm�W]�v�-w8���%�)ҫ:�)�'����e2�6�F��cX؎7a/�1>7b�U.�j]�f�)�61f�F�,Ñ�u:)���︒�h�zwgi�X��W��I�Z�V�0�������I���L�gY���VUXa�)�V%x�C[A����v��kjV��VS򰯂�徕�`G�����F�*���f/�<���d~���WԾ�#�`����>���w$S�	ߢ�p