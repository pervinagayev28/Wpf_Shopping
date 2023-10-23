
using PracticDataBinding.Classes;
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
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.IO;
using System.Collections.ObjectModel;
using PracticDataBinding.Pages;
using System.ComponentModel;
using System.Runtime.CompilerServices;

namespace PracticDataBinding
{

    public partial class MainWindow : Window, INotifyPropertyChanged
    {
        public ObservableCollection<Foods>? foods { get; set; } = new();
        public ObservableCollection<Foods> filteredFoods { get; set; } = new ObservableCollection<Foods>();
        public ObservableCollection<Foods>? BoughtFoods { get; set; } = new();
        public MainWindow()
        {
            InitializeComponent();
            foods = LoadingDatabase<Foods>.Loading(foods, "C:\\Users\\user\\OneDrive\\Desktop\\PracticDataBinding\\PracticDataBinding\\FoodsDatabaseJson\\jsconfig1.json");
            DataContext = this;
            filteringList.DataContext = this;

        }


        public event PropertyChangedEventHandler? PropertyChanged;

        private void SearchBox_GotFocus(object sender, RoutedEventArgs e)
        {
            if (SearchBox.Text == "search")
            {
                SearchBox.Text = "";
            }
        }
        private void SearchBox_TextChanged(object sender, TextChangedEventArgs e)
        {
            filteredFoods.Clear();
            foreach (var item in foods)
            {
                if (item.Name.ToLower().Contains(SearchBox.Text.ToLower()))
                {
                    filteredFoods.Add(item);
                }
            }
            if (filteringList != null && filteringList.Visibility == Visibility.Hidden)
                filteringList.Visibility = Visibility.Visible;

        }
        private void SearchBox_LostFocus(object sender, RoutedEventArgs e)
        {
            if (string.IsNullOrWhiteSpace(SearchBox.Text))
            {
                SearchBox.Text = "search";
                filteringList.Visibility = Visibility.Hidden;
            }
        }

        private void Image_mouse_Cliked(object sender, MouseButtonEventArgs e)
        {
            if (e.LeftButton == MouseButtonState.Pressed)
            {
                var item = ((sender as Image)).DataContext;
                if (item != null && item is Foods foodItem)
                {
                    var informPage = new Inform();
                    informPage.food.Name = foodItem.Name;
                    informPage.food.Price = foodItem.Price;
                    informPage.food.ImageSource = foodItem.FinalDate.ToString("dd,MM,yyyy");
                    Page.NavigationService.Navigate(informPage);

                }
            }
        }
        protected void OnPropertyChanged(string propertyName)
        {
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
        }

        private void btn_shopping_click(object sender, RoutedEventArgs e)
        {
            listViewBuys.Visibility = Visibility.Visible;
            var item = ((sender as Button)).DataContext;
            foods.Remove(item as Foods);
            BoughtFoods.Add(item as Foods);
        }


    }
}
