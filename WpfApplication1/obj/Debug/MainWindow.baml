   M S B A M L   `   `   `  ����J  FWpfApplication1, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null1clr-namespace:WpfApplication1WpfApplication1  5   	        WpfApplication1.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   /localclr-namespace:WpfApplication1     5   	     � Title$  
MainWindow��5   	   $	��350��6   $	��511��6)    � 	Resources 5	         path ��Name  	ellipseSB T�Name �� TargetProperty T� PathGeometry g� Duration g� RepeatBehavior g� AutoReverse	 T� Source��%�  &	        &	 6     7   7   B� 5
   
   $"��M 0,50 A 50,50 0 1 1 100,50 C�6$   �� 5   
   $ myStoryboard1��6'   .��5      T� $ myDoubleAnimation��6'   $ (Canvas.Left)�5      8   $ 0:0:5D�5      $ Forever��6    . $	 X=�5      T� 5      $ myDoubleAnimation2��6'   $ (Canvas.Top)�5      8  $ 0:0:5D�5      $ Forever��6    . $	 Y=�5      5      5      .��5      � -   5        
 �Name$
 MainGrid��5      $	��319��6   $��Bottom=�6+   .+�5   
   �� -   5         ��Name$ Insert��5      $��Insert��6!   $
��Left=�62   $��	88,25,0,0q�6M   $	��Top=�6`   $��56��6x   $��23��6�   6�   �� 5   
   -   5        $ Delete��5      $��Delete��6!   $
��Left=�62   $��
224,25,0,0q�6M   $	��Top=�6a   $��54��6y   $��23��6�   �� 5   
   -   5         ��Name$ InsertTextBox��5      $
��Left=�6)   $��23��6D   $��	23,25,0,0q�6P    �� TextWrapping$
 Wrap=�6c   $�� ��6w   $	��Top=�6   $��60��6�   �� 5   
   -   5        $ DeleteTextBox��5      $
��Left=�6)   $��23��6D   $��
159,25,0,0q�6P   $
 Wrap=�6d   $�� ��6x   $	��Top=�6�   $��60��6�   �� 5   
   -   5        $
 Find��5      $
��Find��6   $
��Left=�6.   $��
362,25,0,0q�6I   $	��Top=�6]   $��54��6u   $��23��6�   �� 5   
   -   5        $ FindTextBox��5      $
��Left=�6'   $��23��6B   $��
297,25,0,0q�6N   $
 Wrap=�6b   $�� ��6v   $	��Top=�6~   $��60��6�   �� 5   
   -   5        $ Print��5      $��Print��6    $
��Left=�60   $��
432,25,0,0q�6K   $	��Top=�6_   $��54��6w   $��23��6�   �� 5    
   -	   5        $ CircleHeight��5       $
��Left=�6(   $��23��6C   $��
426,68,0,0q�6O   $
 Wrap=�6c   $�� ��6w   $	��Top=�6   $��60��6�    J� RenderTransformOrigin$ 	5.3,6.609&�6�   �� 5!   
   -
   5        $ CircleWidth��5!      $
��Left=�6'   $��23��6B   $��
426,98,0,0q�6N   $
 Wrap=�6b   $�� ��6v   $	��Top=�6~   $��60��6�   �� 5"   
   -   5         ��Name$ CircleHeightLabel��5"      $��Height��6+   $
��Left=�6<   $��
383,67,0,0q�6W   $	��Top=�6k   �� 5#   
   -   5        $ CircleWidthLabel��5#      $��Width��6*   $
��Left=�6:   $��
383,98,0,0q�6U   $	��Top=�6i   5$      5%      