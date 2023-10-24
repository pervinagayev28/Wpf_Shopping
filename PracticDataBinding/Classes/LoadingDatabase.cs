using PracticDataBinding.Pages;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.IO;
using System.Linq;
using System.Text;
using System.Text.Json;
using System.Threading.Tasks;

namespace PracticDataBinding.Classes
{
    public static class LoadingDatabase<T>
    {
        public static ObservableCollection<Foods> Loading(ObservableCollection<Foods>? ToLoad, string FromLoad)
        {
            ToLoad = JsonSerializer.Deserialize<ObservableCollection<Foods>>(File.ReadAllText("C:\\Users\\Agaye_jz58\\Source\\Repos\\Wpf_Shopping\\PracticDataBinding\\FoodsDatabaseJson\\jsconfig1.json"));
            return ToLoad;
        }
    }
}
