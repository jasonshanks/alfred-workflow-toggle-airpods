FasdUAS 1.101.10   ��   ��    k             l     ����  I    �� ��
�� .miscactvnull��� ��� null  m      	 	�                                                                                  syui  alis    b  Macintosh SSD                  BD ����SystemUIServer.app                                             ����            ����  
 cu             CoreServices  1/:System:Library:CoreServices:SystemUIServer.app/   &  S y s t e m U I S e r v e r . a p p    M a c i n t o s h   S S D  .System/Library/CoreServices/SystemUIServer.app  / ��  ��  ��  ��     
  
 l   � ����  O    �    O   
 �    k    �       l   ��  ��    F @ Working CONNECT/DISCONNECT Script.  Goes through the following:     �   �   W o r k i n g   C O N N E C T / D I S C O N N E C T   S c r i p t .     G o e s   t h r o u g h   t h e   f o l l o w i n g :      l   ��  ��    2 , Clicks on Bluetooth Menu (OSX Top Menu Bar)     �   X   C l i c k s   o n   B l u e t o o t h   M e n u   ( O S X   T o p   M e n u   B a r )      l   ��  ��    l f    => Clicks on AirpodsName Item [NOTE: you must change AirPodsName on Line 11 to your AirPods name!]     �     �         = >   C l i c k s   o n   A i r p o d s N a m e   I t e m   [ N O T E :   y o u   m u s t   c h a n g e   A i r P o d s N a m e   o n   L i n e   1 1   t o   y o u r   A i r P o d s   n a m e ! ]   ! " ! l   �� # $��   # Z T      => Clicks on Connect or Disconnect Item depending on current connection status    $ � % % �             = >   C l i c k s   o n   C o n n e c t   o r   D i s c o n n e c t   I t e m   d e p e n d i n g   o n   c u r r e n t   c o n n e c t i o n   s t a t u s "  & ' & r    # ( ) ( l   ! *���� * 6   ! + , + n     - . - 4    �� /
�� 
mbri / m    ����  . 4    �� 0
�� 
mbar 0 m    ����  , E      1 2 1 1    ��
�� 
desc 2 m     3 3 � 4 4  b l u e t o o t h��  ��   ) o      ���� 0 btmenu btMenu '  5�� 5 O   $ � 6 7 6 k   ( � 8 8  9 : 9 I  ( -������
�� .prcsclicnull��� ��� uiel��  ��   :  ;�� ; O   . � < = < k   8 � > >  ? @ ? I  8 =������
�� .prcsclicnull��� ��� uiel��  ��   @  A�� A Z   > � B C D E B I  > I�� F��
�� .coredoexnull���     **** F n   > E G H G 4   B E�� I
�� 
menI I m   C D J J � K K  C o n n e c t H 4   > B�� L
�� 
menE L m   @ A���� ��   C k   L ^ M M  N O N I  L Y�� P��
�� .prcsclicnull��� ��� uiel P n   L U Q R Q 4   P U�� S
�� 
menI S m   Q T T T � U U  C o n n e c t R 4   L P�� V
�� 
menE V m   N O���� ��   O  W�� W L   Z ^ X X m   Z ] Y Y � Z Z  C o n n e c t i n g . . .��   D  [ \ [ I  a n�� ]��
�� .coredoexnull���     **** ] n   a j ^ _ ^ 4   e j�� `
�� 
menI ` m   f i a a � b b  D i s c o n n e c t _ 4   a e�� c
�� 
menE c m   c d���� ��   \  d�� d k   q � e e  f g f I  q ~�� h��
�� .prcsclicnull��� ��� uiel h n   q z i j i 4   u z�� k
�� 
menI k m   v y l l � m m  D i s c o n n e c t j 4   q u�� n
�� 
menE n m   s t���� ��   g  o�� o L    � p p m    � q q � r r   D i s c o n n e c t i n g . . .��  ��   E k   � � s s  t u t l  � � v w x v I  � ��� y��
�� .prcsclicnull��� ��� uiel y o   � ����� 0 btmenu btMenu��   w 8 2 Close main BT drop down if Connect wasn't present    x � z z d   C l o s e   m a i n   B T   d r o p   d o w n   i f   C o n n e c t   w a s n ' t   p r e s e n t u  {�� { L   � � | | m   � � } } � ~ ~ p A i r p o d s   w e r e   n o t   f o u n d ,   t r y   m a n u a l l y   p a i r i n g   t h e m   a g a i n !��  ��   = l  . 5 ����  n   . 5 � � � 4   2 5�� �
�� 
menI � m   3 4 � � � � �  A i r P o d s N a m e � 4   . 2�� �
�� 
menE � m   0 1���� ��  ��  ��   7 o   $ %���� 0 btmenu btMenu��    4   
 �� �
�� 
prcs � m     � � � � �  S y s t e m U I S e r v e r  m     � ��                                                                                  sevs  alis    ^  Macintosh SSD                  BD ����System Events.app                                              ����            ����  
 cu             CoreServices  0/:System:Library:CoreServices:System Events.app/  $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   S S D  -System/Library/CoreServices/System Events.app   / ��  ��  ��     � � � l     ��������  ��  ��   �  � � � l     �� � ���   � C = Script by Jason Shanks of http://FirstWorldAppleProblems.com    � � � � z   S c r i p t   b y   J a s o n   S h a n k s   o f   h t t p : / / F i r s t W o r l d A p p l e P r o b l e m s . c o m �  ��� � l     �� � ���   � 6 0 Adapted from an original script by Josh Johnson    � � � � `   A d a p t e d   f r o m   a n   o r i g i n a l   s c r i p t   b y   J o s h   J o h n s o n��       �� � ���   � ��
�� .aevtoappnull  �   � **** � �� ����� � ���
�� .aevtoappnull  �   � **** � k     � � �   � �  
����  ��  ��   �   �  	�� ��� ����� ��� 3�������� � J�� T Y a l q }
�� .miscactvnull��� ��� null
�� 
prcs
�� 
mbar
�� 
mbri �  
�� 
desc�� 0 btmenu btMenu
�� .prcsclicnull��� ��� uiel
�� 
menE
�� 
menI
�� .coredoexnull���     ****�� ��j O� �*��/ �*�k/�k/�[�,\Z�@1E�O� k*j O*�k/��/ Z*j O*�k/��/j  *�k/�a /j Oa Y 1*�k/�a /j  *�k/�a /j Oa Y �j Oa UUUU ascr  ��ޭ