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
BZh91AY&SY��;�  ���1s�����������P F �  P��/c:�R뻓�S0�D��L�<=S�)�4��i�L�SF��(2=CL�I!����jdhj6������S@M 4��  �! �)�	M�O�jz��hh�ȆCC�  A��M �CMM 4h� Ѡ�Ji�Q�!�@       �Bs������^5�������u�M
|6h��bMEh��	�5��z=��K���~Y�����Q�p4rL;��e�&ݳ��-q�w���\����Ҫ�c�j/���5�*�3�Y���&S9oP[��HV�jhm^��K%>�r��s�9$uq[wJ�^��a5� ���7�\�gӦ����cE���Z���1����O�fGUs�NKx��6��E�^��]�vc����{ν��-%��xF��d3���%5&s�@)�c�����Wm���p����l��g����a�ެіV��)%A7����KU��	Z���!%�,l��j�O�3�B�O
��+VL�l(T�:�iyC���sV�h
�$ɛ���6N�#_c ��_1�B�a kyڌI��B�:I�a5bB�)k~s�K�h�)F��9 �z�wL@!
l���hv��i�"C	7?�������e�E���˖���+pRzc^ܛU����S_q�F��i��<��Ma.����$��Β<�Kɶ�)��N�ు�޵�,���@n�?5h"��!T�Ꙏ��Hz��7Бإ�m�1�ӑ������^�xԩmN���{#%y�;XdV��� �9���6Ō(�"�tp��"����-Y�Y�0P�(�030V^��T���m
8�4��ؐGqW��mз��y� ���+�$���L ٺ��ȿB�k2��-�%�T�M{��pm��d��Q!tz9�Y�4'f�5F��9'EUVR&{�L&m�/�5PU�|�A��������c�!���h�%�J�1	4ԅ:#ju9nN~A�Q�1cc���Љ
�Gf�(�q���Л'[��X���Q�$�v/+��)HkKWH�����Ê�)ϥu�L���� ��4�Xe��:�����]�����B�^�@���	��O�G}7�Cvf"B��FL,�,�J7��?��84>��Y��f�-[#ͽS�-�� ���r%BqJG%d�q��k�0UL��	
)䤳r٩t�Jޘx�9�mdUD�.=�I
2�s���ܸ�蹬���ݷJ���Np��Q\�4!�r[7N}�}f��c���&��2����������i�yL�F�Xo��P �����)�S=XZ��{9���L)�Z�TQ�K�Z۬@�0����d���� k�K�Q���.)�j��gV���N\�DT�@5&gX���q�`�@'i���0��=��@�!D�eP�!���Y��0J��sRv�S�b��5�8���BI���^J�_�d=���?�d2
{t�*3�X���!�pU�#��V !�?�w$S�	�� 