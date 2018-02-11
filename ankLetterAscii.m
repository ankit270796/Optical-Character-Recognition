function [ltrAscii]=ankLetterAscii()

%this function maps the letter to the ascii value back and forth

% 32       64 @     96  `
% 33 !     65 A     97  a
% 34 "     66 B     98  b
% 35 #     67 C     99  c
% 36 $     68 D     100 d
% 37 %     69 E     101 e
% 38 &     70 F     102 f
% 39 '     71 G     103 g
% 40 (     72 H     104 h
% 41 )     73 I     105 i
% 42 *     74 J     106 j
% 43 +     75 K     107 k
% 44 ,     76 L     108 l
% 45 -     77 M     109 m
% 46 .     78 N     110 n
% 47 /     79 O     111 o
% 48 0     80 P     112 p
% 49 1     81 Q     113 q
% 50 2     82 R     114 r
% 51 3     83 S     115 s
% 52 4     84 T     116 t
% 53 5     85 U     117 u
% 54 6     86 V     118 v
% 55 7     87 W     119 w
% 56 8     88 X     120 x
% 57 9     89 Y     121 y
% 58 :     90 Z     122 z
% 59 ;     91 [     123 {
% 60 <     92 \     124 |
% 61 =     93 ]     125 }
% 62 >     94 ^     126 ~
% 63 ?     95 _     127 
% returns corresponding ascii values of the characters and the letter
%first 2 rows are for the letters whose black 2 white ratio is > 0.15
smallcase=0;
uppercase=0;
char1=0;

for i=1:26
    smallcase=[smallcase,i+96];
    uppercase=[uppercase,i+64];
end
%char= . , ' $ ! % ; : 1 2 3 4 5 6 7 8 9 ? & space
char=[46 44 39 36 33 37 59 58 49 50 51 52 53 54 55 56 57 63 38 32];
smallcase=smallcase(:,2:end);
uppercase=uppercase(:,2:end);
char1=char1(:,2:end);
ltrAscii=[smallcase,uppercase,char] ;   

