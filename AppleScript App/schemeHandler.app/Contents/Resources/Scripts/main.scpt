FasdUAS 1.101.10   ��   ��    l      ����  i         I     �� ��
�� .GURLGURLnull��� ��� TEXT  o      ���� 0 	schemeurl 	schemeUrl��    k     1    	 
 	 l     ��������  ��  ��   
     r         n        1    ��
�� 
txdl  1     ��
�� 
ascr  o      ���� 0 	olddelims 	oldDelims      l   ��  ��    R LThis saves Applescript's old text item delimiters to the variable oldDelims.     �   � T h i s   s a v e s   A p p l e s c r i p t ' s   o l d   t e x t   i t e m   d e l i m i t e r s   t o   t h e   v a r i a b l e   o l d D e l i m s .      r        J    
       m       �    c u s t o m : / /   ��  m         � ! !  ? p a r a m =��    o      ���� 0 	newdelims 	newDelims   " # " l   �� $ %��   $ x rThis sets the variable newDelims to our new custom url handler prefix and the prefix for the page number argument.    % � & & � T h i s   s e t s   t h e   v a r i a b l e   n e w D e l i m s   t o   o u r   n e w   c u s t o m   u r l   h a n d l e r   p r e f i x   a n d   t h e   p r e f i x   f o r   t h e   p a g e   n u m b e r   a r g u m e n t . #  ' ( ' r     ) * ) o    ���� 0 	newdelims 	newDelims * n      + , + 1    ��
�� 
txdl , 1    ��
�� 
ascr (  - . - l   �� / 0��   / D >This sets Applescript's text item delimiters to the newDelims.    0 � 1 1 | T h i s   s e t s   A p p l e s c r i p t ' s   t e x t   i t e m   d e l i m i t e r s   t o   t h e   n e w D e l i m s . .  2 3 2 r     4 5 4 n     6 7 6 4    �� 8
�� 
cobj 8 m    ����  7 l    9���� 9 n     : ; : 2   ��
�� 
citm ; o    ���� 0 	schemeurl 	schemeUrl��  ��   5 o      ���� 	0 param   3  < = < l   �� > ?��   > � zThis extracts the file name from the passed url using the new text item delimiters. The file name is the second text item.    ? � @ @ � T h i s   e x t r a c t s   t h e   f i l e   n a m e   f r o m   t h e   p a s s e d   u r l   u s i n g   t h e   n e w   t e x t   i t e m   d e l i m i t e r s .   T h e   f i l e   n a m e   i s   t h e   s e c o n d   t e x t   i t e m . =  A B A l   �� C D��   C A ; This sets the variable param to your script execute result    D � E E v   T h i s   s e t s   t h e   v a r i a b l e   p a r a m   t o   y o u r   s c r i p t   e x e c u t e   r e s u l t B  F G F r    ' H I H I   %�� J��
�� .sysoexecTEXT���     TEXT J b    ! K L K b     M N M m     O O � P P  / b i n / b a s h   N m     Q Q � R R 0 / p a t h / t o / y o u r / s c r i p t . s h   L o     ���� 	0 param  ��   I o      ���� 	0 param   G  S T S l  ( (�� U V��   U X R set param to do shell script "python" & "/path/to/your/python/script.py " & param    V � W W �   s e t   p a r a m   t o   d o   s h e l l   s c r i p t   " p y t h o n "   &   " / p a t h / t o / y o u r / p y t h o n / s c r i p t . p y   "   &   p a r a m T  X Y X l  ( (��������  ��  ��   Y  Z [ Z I  ( /�� \��
�� .sysodisAaleR        TEXT \ b   ( + ] ^ ] m   ( ) _ _ � ` `  d o n e ^ o   ) *���� 0 novelid novelId��   [  a�� a l  0 0��������  ��  ��  ��  ��  ��       �� b c��   b ��
�� .GURLGURLnull��� ��� TEXT c �� ���� d e��
�� .GURLGURLnull��� ��� TEXT�� 0 	schemeurl 	schemeUrl��   d ������������ 0 	schemeurl 	schemeUrl�� 0 	olddelims 	oldDelims�� 0 	newdelims 	newDelims�� 	0 param  �� 0 novelid novelId e ����   ���� O Q�� _��
�� 
ascr
�� 
txdl
�� 
citm
�� 
cobj
�� .sysoexecTEXT���     TEXT
�� .sysodisAaleR        TEXT�� 2��,E�O��lvE�O���,FO��-�m/E�O��%�%j E�O�%j 
OPascr  ��ޭ