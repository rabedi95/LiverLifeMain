namespace LiverLife;

public partial class ElastographyPage : ContentPage
{
	public ElastographyPage()
	{
		InitializeComponent();
	this.BindingContext = new ProductPageViewModel();

    }

    // This event handler resets the SelectedIndex to -1 to hide the selected item in the Picker
    private void OnGenderSelected(object sender, EventArgs e)
    {
        // Reset the SelectedIndex to -1 to hide the selected item
        GenderEntry.SelectedIndex = -1;
    }

    private void OnStageSelected(object sender, EventArgs e)
    {
        // Reset the SelectedIndex to -1 to hide the selected item
        StageEntry.SelectedIndex = -1;
    }




    private void OnAddButtonClicked(object sender, EventArgs e)
    {

        EPToolbarEditBtn.IsEnabled = true;
        // Hide the input layout
        EPInputLayout.IsVisible = false;

        // Show the recorded data layout
        EPRecordedDataLayout.IsVisible = true;

        // Set the recorded data
        EPRecordedLsmLabel.Text = LsmEntry.Text;
        EPRecordedIqrLabel.Text = IqrEntry.Text;
        EPRecordedStageLabel.Text = StageLabel.Text;
        EPRecordedAgeLabel.Text = AgeEntry.Text;
        EPRecordedGenderLabel.Text = GenderLabel.Text;



    }

    private async void OnEditButtonClicked(object sender, EventArgs e)
    {
        // Show options for Edit or Delete
        string action = await DisplayActionSheet("Edit or Delete", "Cancel", null, "Edit", "Delete");

        // If Edit is selected

        // If Edit is selected
        if (action == "Edit")
        {
            // Show the InputLayout again to allow editing
            EPToolbarEditBtn.IsEnabled = false;
            EPInputLayout.IsVisible = true;

            // Set the values back into the entry fields so the user can edit them
            EPRecordedLsmLabel.Text = LsmEntry.Text;
            EPRecordedIqrLabel.Text = IqrEntry.Text;
            //EPRecordedStageLabel.Text = StageLabel.Text;
            EPRecordedAgeLabel.Text = AgeEntry.Text;
            //EPRecordedGenderLabel.Text = GenderLabel.Text;
            // Update ViewModel properties instead of Labels directly
            var viewModel = BindingContext as ProductPageViewModel;
            if (viewModel != null)
            {
                viewModel.SelectedStage = StageLabel.Text;
                viewModel.SelectedGender = GenderLabel.Text;
            }
            // Hide the Recorded Data Layout
            EPRecordedDataLayout.IsVisible = false;
        }
        // If Delete is selected
        else if (action == "Delete")
        {
            EPToolbarEditBtn.IsEnabled = false;
            // Clear the data and hide the Recorded Data Layout
            LsmEntry.Text = null;
            IqrEntry.Text = null;
            AgeEntry.Text = null;
            var viewModel = BindingContext as ProductPageViewModel;
            if (viewModel != null)
            {
                viewModel.SelectedStage = null;
                viewModel.SelectedGender = null;
            }

            EPRecordedLsmLabel.Text = null;
            EPRecordedIqrLabel.Text = null;
            EPRecordedStageLabel.Text = null;
            EPRecordedAgeLabel.Text = null;
            EPRecordedGenderLabel.Text = null;



            EPRecordedDataLayout.IsVisible = false;
            EPInputLayout.IsVisible = true;
        }
    }

}