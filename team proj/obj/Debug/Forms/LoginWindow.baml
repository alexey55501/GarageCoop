   M S B A M L   `   `   `  ����D  @team proj, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null1clr-namespace:team_proj.Formsteam_proj.Forms  5   	   !    team_proj.Forms.LoginWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   /localclr-namespace:team_proj.Forms     5   	     � Title$  Авторизация��5   	   $	��300��6   $	��400��6*   $��13(�66   $��	Titillium)�6D   $	��200��6[   $	��200��6k    � WindowStartupLocation$ CenterScreen=�6z   .��5	      � .+�5
   
   �� $��Center=�6   $��Center=�62   .+�5      �� -   5         ��Name$ lbLogin��5      $��Логин:��6%   $
��Left=�66   $	��Top=�6R   �� 5      -   5         ��Name$ tbLogin��5      $
��Left=�6'   $��23��6B   $	��Top=�5      $	��120��6+   
���   ����#D0D1D9$	��1.5q�6`   �� 5      -   5        $ 
lbPassword��5      $��Пароль:��6(   $
��Left=�6:   $	��Top=�6V   G� 5      -   5         G�Name$ 
tbPassword��5      $
��Left=�6.   $��23��6I   $	��Top=�5      $	��120��6-   
���   ����#D0D1D9$	��1.5q�6b   �� 5      -   5        $��bEnter��5   ;    �� 	IsDefault .  � Cursor$
 Hand��6I   $	��120��6W   $��25��6c   $��0,5,0,0q�6o   $��
Войти��6�   
�������$	��1.5q�6�   ��5      �� 5       �� 
TargetType" ��6   .�5      ��  �� Property � ��	 �� Value	 �#78828F67   �� 5       � ��	 �#78828F68   
 �� Triggers
 5      P� 5       P� Property �@J�IsMouseOver P� Value . . �5   "   ��  � ��	 �#69727D6?   �� 5   "    � ��	 �#69727D6@   5      5      5      �� 5      -   5        $ lbResetPass��5      $ ��Забыли пароль?��6)   $
��Left=�6B   $	��Top=�6^   5       5"      5#      