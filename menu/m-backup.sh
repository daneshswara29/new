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
BZh91AY&SY�7�� ���� ����������pF@�  `
�����k�t�2]� �������<�ڏP@ ��4h4hd �� @JL�2je6�=T�I���SLi�I�z0�� �L�d�d   �   �  ���   4   ��   2 � )&cI�2&53"hf��ީ�4��0�A��#L �"&�i��F4OJ6�i����d4mF@h4 h�
���;�F4�;�l�ь�������Z��S���Ն�Y3~���+g�>�`XJ�S��C���hH&1"��A������G*��5̹	6e���<[L�1q�k:k&����1b���522ӾBB���3y���hC�pֵtC��X�.���n��D>�'�����ܤ3�e�c�d$��;��O���ȺBKez�שLM���D��zwfb��>��6"�,6�R��k1�Z��1�������t&₱4���GI�P]\�9 xI�a�[��5��'��y�[h*2:���1�&�ۍ{�/�|7 n����V�o����g�sB�����Z+s��:��(
W��?���ZC�d�����+�j��Z4�؊m��!E��.L4_a-����{��M4e%��q�r��b�ώc���Kf��3^���`L�5i�-��'�����"��!�![�U�W�h6��]���FD<os��MZ2 �3��x\Abl�f2����Y�^I*��j���i�P�0kD��	#%Je��Q�aCL�@ɂJ4dU�H�b�F�h;e�+.b���X��O��:�
A��"�=��o��Z�v��,�2�A�$�s�}�o�0�� T��	^�TIBHC/��6��7����LH`��ܝ����Q�`S
H�����I��8\��n����(S9���n;>��B!JX�Yh�(r�J�y�n���M�3X�1檡�mB)ǁ�d$y�ڤ�^�`����Ѡ��� b�}3v t����f����%��
7��^D�CArVտ�.� .H$�p��K@����G5�u.$ae�H��/s������akV^���.zt��I'�W��#�@4�[䧎�[��M�Y6���A��Kn}C�U���=ݸ�@۷�.�g��}���2�<xn��WC���n[&���{�_�^v�;�҅���C��q$�1h�7�� 6C��O��*���?c_�E��sA�Ԧ�H� =1=/{Tʢ�s��C�A��E���V�"��GUS�%V�DZQJ!5�Y�U�B^�kr��Vc��Ck���j��j?c��o�niF��C)�iC��l�)G�mZ�|Bv�G(P�P�)�q���"��G
1��G����� ����C#�ZGiۍ��p��V��6�Sf��"R�X���Z�k��ӌD(�:���4�U1�__��)<(�"Bv?��ik�	ʟM|�$#r�^���ܽ�P-�M�zf�^F!8��3��f��J
)	Ų�5��+�	�pK?�N0X�e�s��z�`Y����H�ZMG��vP�#�e��a6vڕ����N�G;'��q�Fi�c���K@��i,R���E�W�b�b�]�ˬ�Y^�&DO-3:�*iA�a��ι�4qDC�:��p���/��ͣ� d j�'bM��R�4 I�J� `S��v�5k��_����[ʛ�`6�)bt*[ ��+��4y!�K��`�q� ;��Hj<VI��PЛb䆠��j4Hxa:#��%�Y}�D���+d@�LD�o��z�X<w��B���7�`�
J�`��P��$XM罇��E<+�U�U�M5A�8�.;��Gd��.N·�$/�\�wZ����t�u�u����ܓ�ߣ>@�h��G*�#��9bZ�kU������d�m47G̈/x��yZk��ǝ`��0� �]�Njtڬj��=Y_��ְױF?,�9����l#G���l�OC8(I�k+*�4`�ElE9��1������B����ODɱ�bp�!�A;�E�]��`O{��+Q�#@@�s�u�rw�\�0��oeQ�K7�k�hgc�Ctݜ#���� �BA<���	^��BRm?��hyOR�l�ġىIA�
�߶%/�0Ae뮍p#����*a��JJu(�s�p� �^�Y��37��P��"�&=\]5r�+}gyc<<��&��u�e��!���A�u[Q@�@-0cPa��٫ԡ�TM��Q.s	�Tӧ:n���U-�Xb��҆ibqy@���i�b�qb���n���C r7�y�l]�3ə΂���c��g��P�jq� �F~K���� X�c8��n:��4(4�õ��!��G�Kq�#��c�![>"�|>�4��Y��΂d�lH|����AZ" �"�ޥ@�f��6�����A�� �B�iAkH$O���)��_