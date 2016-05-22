using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Animation;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace WpfApplication1
{
    /// <summary>
    /// Логика взаимодействия для MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
        }

        private List<int> EclipseIDArray = new List<int>();
        private void Insert_Click(object sender, RoutedEventArgs e)
        {
            CreateCircle();
        }

        private List<int> Numbers = new List<int>();
        private int index = -1;
        private List<Ellipse> ellipses = new List<Ellipse>();
        private void CreateCircle()
        {
            if (InsertTextBox.Text != "")
            {
                index++;
                Numbers.Add(Convert.ToInt32(InsertTextBox.Text));
                Ellipse myEllipse = new Ellipse();
                myEllipse.StrokeThickness = 1;
                myEllipse.Stroke = Brushes.Black;
                if(CircleHeight.Text == "")
                {
                    myEllipse.Height = 50;
                }
                else
                {
                    myEllipse.Height = Convert.ToInt32(CircleHeight.Text);
                }
                if(CircleWidth.Text == "")
                {
                    myEllipse.Width = 50;
                }
                else
                {
                    myEllipse.Width = Convert.ToInt32(CircleWidth.Text);
                }
                myEllipse.Name = "Ellipse" + Numbers[index].ToString();
                myEllipse.Fill = new SolidColorBrush((Color)ColorConverter.ConvertFromString("#FFF4F4F5"));
                Canvas.SetLeft(myEllipse, 40);
                Canvas.SetTop(myEllipse, 50);
                TextBlock myTextBlock = new TextBlock();
                myTextBlock.Inlines.Add("1");
                //myEllipse.Fill = myTextBlock;
                //myEllipse.TextInput = myTextBlock;
                MainGrid.Children.Add(myEllipse);
                MainGrid.Children.Add(myTextBlock);
                if(index != 0)
                {
                    CircleAddWay(myEllipse);
                }
                ellipses.Add(myEllipse);
            }
        }

        private void CircleAddWay(Ellipse myEllipse)
        {
            var sb = FindResource("ellipseSB") as Storyboard;
            sb.Stop();
            //PathGeometry pathGeometry = new PathGeometry();
            DoubleAnimation da = new DoubleAnimation();
            da.From = 0;
            da.To = -100;
            da.Duration = new Duration(TimeSpan.FromSeconds(3));
            TranslateTransform rt = new TranslateTransform();
            myEllipse.RenderTransform = rt;
            rt.BeginAnimation(TranslateTransform.XProperty, da);
            da.From = 0;
            da.To = 100;
            rt.BeginAnimation(TranslateTransform.YProperty, da);
        }
    }
}
