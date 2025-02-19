using CommunityToolkit.Mvvm.ComponentModel;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace LiverLife
{
    public partial class ProductPageViewModel : ObservableObject
    {
        // Tracks the index of the selected item in the picker
        [ObservableProperty]
        private int selectedGenderIndex;

        // Stores the selected value to be shown in the label
        [ObservableProperty]
        private string selectedGender;


        // Tracks the index of the selected item in the stage picker
        [ObservableProperty]
        private int selectedStageIndex;

        // Stores the selected stage value
        [ObservableProperty]
        private string selectedStage;

        partial void OnSelectedStageIndexChanged(int value)
        {
            if (value == 0)
            {
                SelectedStage = "F0";
            }
            else if (value == 1)
            {
                SelectedStage = "F1";
            }
            else if (value == 2)
            {
                SelectedStage = "F2";
            }
            else if (value == 3)
            {
                SelectedStage = "F3";
            }
            else if (value == 4)
            {
                SelectedStage = "F4";
            }
        }

        // You can have a method or a property that updates `SelectedGender` based on `SelectedGenderIndex`
        partial void OnSelectedGenderIndexChanged(int value)
        {
            // Update the SelectedGender based on the selected index
            if (value == 0)
            {
                SelectedGender = "Male";
            }
            else if (value == 1)
            {
                SelectedGender = "Female";
            }


        }
     
    }
}
