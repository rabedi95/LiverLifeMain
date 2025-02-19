namespace LiverLife;
using Microsoft.Maui.Controls;
public partial class BloodTestPage : ContentPage
{
    public DateTime SelectedDate { get; set; }
    private BloodTestPage _bloodtestpage;
    public BloodTestPage()
    {
        InitializeComponent();

    }

    private void OnAddButtonClicked(object sender, EventArgs e)
    {

        BPToolbarEditBtn.IsEnabled = true;
        // Hide the input layout
        BPInputLayout.IsVisible = false;

        // Show the recorded data layout
        BPRecordedDataLayout.IsVisible = true;

        // Set the recorded data
        RecordedTestDateLabel.Text = TestDatePicker.Date.ToString("yyyy-MM-dd");
        RecordedAstLabel.Text = AstEntry.Text;
        RecordedAltLabel.Text = AltEntry.Text;
        RecordedAlpLabel.Text = AlpEntry.Text;
        RecordedBilirubinLabel.Text = BilirubinEntry.Text;
        RecordedInrLabel.Text = InrEntry.Text;
        RecordedAlbuminLabel.Text = AlbuminEntry.Text;

    }

    private async void OnEditButtonClicked(object sender, EventArgs e)
    {
        // Show options for Edit or Delete
        string action = await DisplayActionSheet("Edit or Delete", "Cancel", null, "Edit", "Delete");

        // If Edit is selected
        if (action == "Edit")
        {
            // Show the InputLayout again to allow editing
            BPToolbarEditBtn.IsEnabled = false;
            BPInputLayout.IsVisible = true;
            
            // Set the values back into the entry fields so the user can edit them
            TestDatePicker.Date = DateTime.Parse(RecordedTestDateLabel.Text);
            AstEntry.Text = RecordedAstLabel.Text;
            AltEntry.Text = RecordedAltLabel.Text;
            AlpEntry.Text = RecordedAlpLabel.Text;
            BilirubinEntry.Text = RecordedBilirubinLabel.Text;
            InrEntry.Text = RecordedInrLabel.Text;
            AlbuminEntry.Text = RecordedAlbuminLabel.Text;

            // Hide the Recorded Data Layout
            BPRecordedDataLayout.IsVisible = false;
        }
        // If Delete is selected
        else if (action == "Delete")
        {
            //Hide the edit button 
            BPToolbarEditBtn.IsEnabled = false;

            // Clear the data and hide the Recorded Data Layout
            TestDatePicker.Date = DateTime.Parse(RecordedTestDateLabel.Text);
            AstEntry.Text = null;
            AltEntry.Text = null;
            AlpEntry.Text = null;
            BilirubinEntry.Text = null;
            InrEntry.Text = null;
            AlbuminEntry.Text = null;

            RecordedTestDateLabel.Text = null;
            RecordedAstLabel.Text = null;
            RecordedAltLabel.Text = null;
            RecordedAlpLabel.Text = null;
            RecordedBilirubinLabel.Text = null;
            RecordedInrLabel.Text = null;
            RecordedAlbuminLabel.Text = null;

            //Hide the layout 
            BPRecordedDataLayout.IsVisible = false;
            BPInputLayout.IsVisible = true;
        }
    }
}
