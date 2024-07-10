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
BZh91AY&SY`I�C ���� ����������pF@�  `
�|����P�   !L"dy#5������ d�a4�z4���4���S��O(z   10`�2  0p       h4   �4    �   �  �� �H�#	��G��4�mL	����&�M4�4�1m#LM4�M�A"D� ���S#)���6��O(�ѵ��h4�� f*�u����Nxf�'�l�Y~�N	�����r`�+���r������<)+R�)UOƴ�*2AZ�44�����B���jȏ�ʰvj��c'��`��%lX�<����Dɕ��J��z���R��g��eѠW���(�C� U?>��n��D=�'�������.Z@�bXa��cbLh �;d�CG����MnVN�t^�UG#��p;s��g���h����ey�Ni��H8L�k��IV���h}�}�	�H�~f�D���Y�JF��//��<ȳ�#(i��0L��\.�K3s'?~uf�'7��R�o�/���J͌����l�%\U����d�p$�O��t��˄��@�Sa,��'w.Z�MeCǀ��y���@��-�	�0Q��t�D�g!��R)C� �y���և�_�Ȭ���,��+5���U�e���J̤�Ǆ�����˴��`�H٬��.B��a�2�WI���z���|�P���}t6��p��%Dn�&"�Mԇv#�W!��B�%� �t��#�8�4Xg9I�Š���b0��ٟ`�"j�)�țv4 �K��ܗ\����� � ш�l�c�g�������i�H@T�?�
_������N	R��	� ����q�_b����ie8xt���@�ݧ�,�.x���"B0�"���=�߶˪3d��D����Ɩ��[vA�Gd�������6�*�� �3s����}>�����ŉvƺ��W^�C��Kr��1� �	"D��eN����-n\x�,[�E±t�7558�U��V��s�b��{ͶߜG�LT� �4�%�S%]J��Ce���Ƅ���cU���OR0���<�P�,���Ե�� P����7B��U�7l�X�%Hgl��I���j@SD/(��=�5\ũ��� ��Teܜ/˘����l�+cOϽ�E��y�)� r�$H\O3��tZ��"��PbA�a�~���.�8�%O0�\�iE(�s�.�3��Z�^'���\�m�X��o����W�D�Y�\��s#~Vհ��*�8������+���_|���o	� �5���@��DZ$)�z৵�\N��-���I���K!�5��t��|�Z$�F�:��{����F�������"«����4Jb�����Janz����J<����K�Q�ccS$�{~�ԙ9�@]��6y�E����4�a��%�$�3��ԩ�S���yC-��x�+����`B-q��fm�X����D,�"��WgCc�1�����P=���2W�����#�HL���^��v��0~H��	s��_0E�4��J��\�`��̡`���k�2E�U���|"�n��!���)3zդ�Z��k��,��և�Q��3��@7둈���ivy�~�d�* x��B� )4����U Nr�ڃ�2�Mb!\�$� s�yҷX����@�Orce��h���A����WSA+��_[���@M�04�f�w�đ�M���k��'��${�R�UuWp1�:�9Z3/��������g��p#���BE,��[�ݳ��]|��N�г�Ǽķ�H9����؋[���g]�ă�7����հ9R�H�S�s�q�V��V����%���!-�
5PB��I��.�@ĲJ� �I5���\}2~)
>���`����m��A��nRJӽBaD�UQ "�Hi ��N�=Vz�6J�2E� �� `T#�X�uP�̄ b:X�p@D	c�ʇ�k�*�A�!� �bS�W�~�iܷ����q֔pe��u2,]~�M�i5�(����1@؏I��q�Kk9bH�]����f(�cA�7 �􄁐��B.�*�A�"�Q�R�w� �J��.I_��2J��bj\�Yq�" O^���v�lL��Y/yhH��KR�iΰK�O!�(m 㴲�4(+m
�E��UV���[�/���L��͢8b+n�5E]N!)!��p�&�*�C0�oI`�qJb�i$XXK]�Lv2�V�\"TY�3E���3T)�ο�X�V^#3�&1Bbk��p p�T0	{=�fnG� -LF�6��!q�Д��G��c�( {2�r�"�!�� �!�S҂�z�h�P`��J�d:�OP�j
+��R%�=a�B�iAmH$O�]��BA�&