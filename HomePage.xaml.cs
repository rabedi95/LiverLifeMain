namespace LiverLife;

public partial class HomePage : ContentPage
{
    private LoginPage _loginpage;
    private HomePage _homepage;
   
    private WelcomePage _welcomepage;
    private BloodTestPage _bloodtestpage;
    private ElastographyPage _elastogaphypage;
    private HepatiqPage _hepatiqpage;

    //private bool isMenuOpen = false;
    public HomePage()
    {
        InitializeComponent();
        if (_bloodtestpage == null)
        {
            _bloodtestpage = new BloodTestPage();
        }
        if (_elastogaphypage == null)
        {
            _elastogaphypage = new ElastographyPage();
        }
        if (_hepatiqpage == null)
        {
            _hepatiqpage = new HepatiqPage();
        }


    }

    // Declare a variable to hold the previously selected button
    private Button? _previousButton;
    private Button middleButton; // The middle button that will change state
    private string currentState = ""; // Track the current state (Blood Tests, Elastography, etc.)

    private async void HomePageTopBtnClicked(object sender, EventArgs e)
    {
        if (sender is Button button)
        {

            if (_previousButton != null && _previousButton != button)
            {
                _previousButton.BorderColor = Colors.Black;
                _previousButton.TextColor = Colors.Black; // Reset the previous button's border color
            }
            // Change the border color of the currently selected button
            button.BorderColor = Colors.White;
            button.TextColor = Colors.White;
            // Log the button text

            switch (button.Text)
            {
                case "Blood Tests":

                    HomePageMiddleScreenLabel.Text = "Please input the values from your recent blood test report";
                    currentState = "BloodTests";
                    break;

                case "Elastography":

                    HomePageMiddleScreenLabel.Text = "Please input the values from your recent Elastography test report";
                    currentState = "Elastography";
                    break;

                case "Hepatiq":

                    HomePageMiddleScreenLabel.Text = "Ready to try Hepatiq ?";
                    currentState = "Hepatiq";
                    break;

                default:
                    HomePageMiddleScreenLabel.Text = "Unknown button clicked.";
                    currentState = "";
                    break;

            }

            //button.BorderColor = Colors.Red;
            // Update the previously selected button reference
            _previousButton = button;

            // Dynamically update the middle button based on the selected state
            UpdateMiddleButton();



        }




    }

    private void UpdateMiddleButton()
    {
        //if (HomePagemiddleBtn == null)
        //{
        //    // Initialize the middle button if it's not already created
        //    HomePagemiddleBtn = new Button
        //    {
        //        Text = "Proceed",
        //        BackgroundColor = Colors.Purple,
        //        TextColor = Colors.White
        //    };


        //}

        // Change the middle button's behavior based on the state
        if (currentState == "BloodTests")
        {
            HomePagemiddleBtn.Text = "Add Data";
            HomePagemiddleBtn.BorderColor = Colors.WhiteSmoke;
        }
        else if (currentState == "Elastography")
        {
            HomePagemiddleBtn.Text = "Add Data";
            HomePagemiddleBtn.BorderColor = Colors.WhiteSmoke;
        }
        else if (currentState == "Hepatiq")
        {
            HomePagemiddleBtn.Text = "Try";
            HomePagemiddleBtn.BorderColor = Colors.WhiteSmoke;
        }
        else
        {
            HomePagemiddleBtn.Text = "Proceed"; // Default text
        }
    }

    private async void MiddleButtonClicked(object sender, EventArgs e)
    {
        var BloodTestPageEditBtn = _bloodtestpage.FindByName<ToolbarItem>("ToolbarEditBtn");
        if (BloodTestPageEditBtn != null)
        {
            BloodTestPageEditBtn.IsEnabled = false;
        }
        await Task.Delay(100);
        if (currentState == "BloodTests")
        {

            // Navigate to the Blood Test input page
            await Navigation.PushAsync(_bloodtestpage);

        }
        else if (currentState == "Elastography")
        {
            // Navigate to the Elastography input page
            await Navigation.PushAsync(_elastogaphypage);
        }
        else if (currentState == "Hepatiq")
        {
            // Navigate to the Hepatiq page or handle specific logic
            var HepatiqSkipLayout = _hepatiqpage.FindByName<Layout>("HepatiqInfoMessage");
            HepatiqSkipLayout.IsVisible = true;
            await Navigation.PushAsync(_hepatiqpage); 

        }
        else
        {
            // Handle default case, if needed
            await DisplayAlert("Error", "Please select a test type first.", "OK");
        }
    }
    private Button _previouslySelectedButton;
    private void OnTabButtonClicked(object sender, EventArgs e)
    {
        var button = (Button)sender;
        var tabNumber = button.CommandParameter.ToString();

        // Hide all tab content first
        HomePageContent.IsVisible = false;
        LiverPageContent.IsVisible = false;
        DiseasePageContent.IsVisible = false;
        DiagnosticsPageContent.IsVisible = false;
        MyLiverPageContent.IsVisible = false;
        AboutPageContent.IsVisible = false;
        DonatePageContent.IsVisible = false;
        LoginPageContent.IsVisible = false;

        // Show the content based on the tab clicked
        switch (tabNumber)
        {
            case "1":
                HomePageContent.IsVisible = true;
                
                break;
            case "2":
                LiverPageContent.IsVisible = true;
                break;
            case "3":
                DiseasePageContent.IsVisible = true;
                break;
            case "4":
                DiagnosticsPageContent.IsVisible = true;
                break;
            case "5":
                MyLiverPageContent.IsVisible = true;
                break;
            case "6":
                AboutPageContent.IsVisible = true;
                break;
            case "7":
                DonatePageContent.IsVisible = true;
                break;
            case "8":
                LoginPageContent.IsVisible = true;
                break;
        }

        // Change border color for active tab
        if (_previouslySelectedButton != null)
        {
            // Reset previous button's border color (or any other style property)
            _previouslySelectedButton.BorderColor = Colors.Transparent;
        }

        // Set the border color of the clicked button to indicate active state
        button.BorderColor = Colors.White; // Change to the color you want for the active tab

        // Update the previously selected button
        _previouslySelectedButton = button;
    }
}