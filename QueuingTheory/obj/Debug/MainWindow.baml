   M S B A M L   `   `   `  ����|  xSystem.Windows.Controls.DataVisualization.Toolkit, Version=3.5.40128.1, Culture=neutral, PublicKeyToken=31bf3856ad364e35�rclr-namespace:System.Windows.Controls.DataVisualization;assembly=System.Windows.Controls.DataVisualization.Toolkit)System.Windows.Controls.DataVisualization  5   	   �{clr-namespace:System.Windows.Controls.DataVisualization.Charting;assembly=System.Windows.Controls.DataVisualization.Toolkit2System.Windows.Controls.DataVisualization.Charting  5   	   H DQueuingTheory, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null-clr-namespace:QueuingTheoryQueuingTheory 5   	      QueuingTheory.MainWindow   5   	   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35U QWPFToolkit, Version=3.5.40128.1, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   �dvrclr-namespace:System.Windows.Controls.DataVisualization;assembly=System.Windows.Controls.DataVisualization.Toolkit     5   	   �dvc{clr-namespace:System.Windows.Controls.DataVisualization.Charting;assembly=System.Windows.Controls.DataVisualization.Toolkit     5   	   -localclr-namespace:QueuingTheory     5   	     � Title$  
MainWindow��5
   	    � 
ResizeMode$ 	CanResize=�6   $	��600��63   $
��1000��6@   .��5      �  � RowDefinitions 5   
   �� 5      $	��120 �6   �� 5      $��* �6   .+�5   
   � $��0��6   .+�5      �� -   5         ��Name$ inputRateLabel��5      $S��MՄուտքային հոսքի հաճախությունը (1 ժամուոմ)։��6,   $
��Left=�6a   $��	21,25,0,0q�6|   $	��Top=�6�   �� 5      -   5         ��Name$ 	inputRate��5      $
��Left=�6)   $��20��6D   $��
309,29,0,0q�6P    �� TextWrapping$
 Wrap=�6d   $��2��6x   $	��Top=�6�   $	��120��6�   �� 5      -   5        $ avgTimeLabel��5      $K��EՀաճախորդի սպասարկման ժամանակը (րոպե)։��6*   $
��Left=�6Z   $��	21,51,0,0q�6u   $	��Top=�6�   �� 5      -   5        $ avgTime��5      $
��Left=�6'   $��20��6B   $��
309,54,0,0q�6N   $
 Wrap=�6b   $��10��6v   $	��Top=�6�   $	��120��6�   �� 5      -   5        $ workersCountLabel��5      $/��)Սպասարկողների քանակը։��6/   $
��Left=�6O   $��
458,25,0,0q�6j   $	��Top=�6~   �� 5      -   5        $ workersCount��5      $
��Left=�6,   $��20��6G   $��
677,25,0,0q�6S   $
 Wrap=�6g   $��1��6{   $	��Top=�6�   $	��120��6�   �� 5      -   5        $ maxLengthLabel��5      $=��7Հերթի մաքսիմալ երկարությունը:��6,   $
��Left=�6T   $��
458,50,0,0q�6o   $	��Top=�6�   �� 5      -   5        $ 	maxLength��5      $
��Left=�6)   $��20��6D   $��
677,55,0,0q�6P   $
 Wrap=�6d   $��10��6x   $	��Top=�6�   $	��120��6�   �� 5      -	   5        $ 	timeLabel��5      $+��%Ընդհանուր ժամանակը։��6'   $
��Left=�6E   $��	21,76,0,0q�6`   $	��Top=�6s   �� 5      -
   5        $
 time��5      $
��Left=�6$   $��20��6?   $��
309,82,0,0q�6K   $
 Wrap=�6_   $��8��6s   $	��Top=�6|   $	��120��6�   �� 5      -   5         ��Name$ button��5      
�������
������$��Հաշվել��6T   $
��Left=�6e   $��
834,44,0,0q�6�   $	��Top=�6�   $��40��6�   $	��128��6�    J� RenderTransformOrigin$ 
0.65,0.367&�6�   5      � 5   
   $��1��6   .+�5      �  5      �� 5       $
��Auto �6$   �� 5!      .+�5#      � $��1��6   .+�5$      �� -   5        $
��data��5$   +   $��10q�6    �� View 5%      �� 5&      .P�5'   "   �� $��Անվանում��61   	 �� Width$		 300��6C   
 �� CellTemplate
 5(   &   �� 5)   *   .R�5*   .   �� $
��Wrap=�68   ��6L   �� *Name+5+   +   5-   #   �� 5.   "   $��
Արժեք��61   $	 50��6@   
 5/   &   �� 50   *   .R�51   .   �� $
��Wrap=�68   ��6L   �� *Value+52   +   54   #   �� 56   "   $��Չափման միավոր��61   $		 120��6H   
 57   &   �� 58   *   .R�59   .   �� $
��Wrap=�68   ��6L   �� *Measurement+5:   +   5<   #   5=      5?      5@      � 5A      $��0��6   .+�5B      >   8System.Windows.Controls.DataVisualization.Charting.Chart  -   5        $��Chart0��5B   N   $��0q�6    $	��300��64   $
��Auto��6A      Axes 5D      E   ?System.Windows.Controls.DataVisualization.Charting.CategoryAxis  D   >System.Windows.Controls.DataVisualization.Charting.DisplayAxis   Title$ Ժամանակ��6/   =   7System.Windows.Controls.DataVisualization.Charting.Axis   Orientation$ X=�6?     5E      $ 
Արժեք��6/   $ Y=�6=      Series 5H      C   =System.Windows.Controls.DataVisualization.Charting.LineSeries  -   5          Name$ served��5K   *   ?   9System.Windows.Controls.DataVisualization.Charting.Series   Title$! Սպասարկվում են��5J   *   H   BSystem.Windows.Controls.DataVisualization.Charting.DataPointSeries   IndependentValueBinding 5L   *   �� *Time+   DependentValueBinding 5M   *   �� *Value+5N        5P      -   5        $ refused��5S   *   $ Մերժված են��5R   *    5T   *   �� *Time+ 5U   *   �� *Value+5V        5X      -   5        $ inQueue��5Z   *   $ Հերթի մեջ են��5Y   *    5[   *   �� *Time+ 5\   *   �� *Value+5]      5_      5`      5a      5b      5c      5d      