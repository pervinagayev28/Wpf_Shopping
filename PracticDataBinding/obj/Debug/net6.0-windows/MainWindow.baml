   M S B A M L   `   `   `  ����M  IPracticDataBinding, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null7 clr-namespace:PracticDataBindingPracticDataBinding  5   	   #    PracticDataBinding.MainWindow   5   	   W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   _ [Microsoft.Xaml.Behaviors, Version=1.1.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a3i+http://schemas.microsoft.com/xaml/behaviors  5   	   Dmc;http://schemas.openxmlformats.org/markup-compatibility/2006  5   	   ,local clr-namespace:PracticDataBinding  5   	   _ [MaterialDesignThemes.Wpf, Version=4.9.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	     � 
ResizeMode$  NoResize=�5
   	    � Title$ 
MainWindow��5   	    � WindowState$ 	Maximized=�6   .��5      � ���#F32929 � RowDefinitions 5   
   �� 5      $
��0.2* �6   �� 5      $��* �6   .+�5   
   �� $��0��6   $	��100��6   $	��700��6*   ���#3CBC52$��BRAVO��6K   $��Arail)�6[   $��
ExtraLight"�6n   $��Center=�6�   $��90(�6�   � 5   
   $��1��6   ���#3D57FF$��100,0,100,20q�61    5      �� 5      $
��0.2* �6    �� 5      $
��0.2* �6    �� 5      $��* �6    .+�5      � $��0��6    � ColumnDefinitions 5      �� 5      $
��0.5* �6'   �� 5      .+�5       � -   5          �Name$
 Page��5        � NavigationUIVisibility$ Hidden=�6&   $��1��6F   $��1��6S   
������ $��50��6|   $	��300��6�   �� 5      $��0��6   $��Food/DrinkMenu��6(   $��Center=�6A   $��	80,30,0,0q�6c   $��30(�6v   $��Black"�6�   5       �� 5!      $��1��6   $��Center=�6&    �� Orientation$ 
Horizontal=�6C   .+�5"      '  !MaterialDesignThemes.Wpf.PackIcon  
�������$��Center=�6=      Kind$ Search=�6X   
���   �$��60��6z   $��50��6�   �� 5#      -   5        	 ��Name$	 	SearchBox��5#      $��15q�6.   $��search��6;   $��20(�6I   $
��Bold"�6W   $	��400��6j   $��60��6v   6�   5%      �� 5(      $��2��6   .+�5)      �� -   5        $��listViewBuys��5)   z   $y�Hidden=�6   
 �� Left$
 50��6/   ���#3CBC52$	��250��6�   $	��400��6�   $��Disabled=�6�   ��6@   �� *BoughtFoods+��5*      �� 5+      .R�5,      �  � Orientation$ 
Horizontal=�6(   5-      ��5/      �� 50      .R�51      �� $ Vertical=�6)   .+�52   "   �� -   5        $��60��52   *   $��60��65   ��6A   �� *ImageSource+6`   �� 53   "   $��Center=�6,   $��15(�6_   $
��Bold"�6m   $��60��6   ��6I   �� *Name+6   54      55      57      �� 59      -   5        $��listView��59   b   $	
 370��6   ���#3CBC52$
��1000��6r   $	��400��6   $��Disabled=�6�   ��6D   �� *foods+��5:      �� 5;      .R�5<      � $ 
Horizontal=�6(   5=      ��5?      �� 5@      .R�5A      �� $ Vertical=�6)   .+�5B   "   �� -   5        $	��100��5B   *   $	��100��66   ��6C   �� *ImageSource+6b   �� 5C   "   $ 
Horizontal=�6-   $��30��6F   $	��100��6R   .+�5D   &   �� $��15(�6F   $
��Bold"�6T   $��70��6f   ��60   �� *Name+6f   �� 5E   &   -   5        
�������$��Center=�5E   [   $��Center=�6~   $��30��6�   $��20��6�   $��Right=�6�   ��5F   *     5G   .   $ ShoppingBasket=�6F   
����������#3CBC526o   5I   '   5J   #   5K      5L      5N      �� 5Q      -   5         ��Name$ filteringList��5Q      $y�Hidden=�62   $	
 370��6F   ���#3CBC52$
��1000��6�   $	��400��6�   $��Disabled=�6�   ��6o   �� *filteredFoods+��5R      �� 5S      .R�5T      � $ 
Horizontal=�6(   5U      ��5W      �� 5X      .R�5Y      �� $ Vertical=�6)   .+�5Z   "   �� -	   5        $	��100��5Z   *   $	��100��66   ��6C   �� *ImageSource+6b   �� 5[   "   $ 
Horizontal=�6-   $��30��6F   $	��100��6R   .+�5\   &   �� $��15(�6F   $
��Bold"�6T   $��70��6f   ��60   �� *Name+6f   �� 5]   &   -
   5        
�������$��Center=�5]   [   $��Center=�6~   $��30��6�   $��20��6�   $��Right=�6�   ��5^   *     5_   .   $ ShoppingBasket=�6F   
����������#3CBC526o   5a   '   5b   #   5c      5d      5f      5g      5h      5j      5k      