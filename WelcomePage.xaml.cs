namespace LiverLife;

public partial class WelcomePage : ContentPage
{
    private HomePage _homepage;
    private Button _selectedButton;
    private WelcomePage _welcomepage;
    private int currentLabelIndex = 0;
    private Label[] labels;
    public WelcomePage()
    {
        InitializeComponent();
       

        if (_homepage == null)
        {
            _homepage = new HomePage();
        }

        var items = new List<CarouselItem>
        {
            new CarouselItem { ImageSource = "bloodtest_finalwpf.png", LabelText = "Input your blood test report for analysis" },
            new CarouselItem { ImageSource = "elastography_fionalwpf.png", LabelText = "Input your elastography report for detailed liver health insights" },
            new CarouselItem { ImageSource = "hepatic_finalwpf.png", LabelText = "Add HEPATIQ to quantify liver function" },
        };

        // Bind the ItemsSource of the CarouselView to the list of items
        carouselView.ItemsSource = items;

    }

    //this method is responsible for navigation page from welcome page to home page when user clicks Start button
    private async void WelcomeStartButtonClicked(object sender, EventArgs e)
    {
        var navpage = new NavigationPage(_homepage);
        await Task.Delay(80);
        await Navigation.PushAsync(navpage, animated: false);
        // await Navigation.PushAsync(_homepage);
        var HomePageHomeTabBtn = _homepage.FindByName<Button>("HomeTabBtn");
        var HomePageBloodTestBtn = _homepage.FindByName<Button>("HomeBloodTestBtn");
        var HomePageElastographyBtn = _homepage.FindByName<Button>("HomeElastographBtn");
        var HomePageHepatiqBtn = _homepage.FindByName<Button>("HomeHepatiqtBtn");
        if (HomePageBloodTestBtn != null & HomePageHomeTabBtn != null)
        {
            // Manually trigger the button's Clicked event handler
            HomePageHepatiqBtn.TextColor = Colors.Black;
            HomePageElastographyBtn.TextColor = Colors.Black;
            HomePageHomeTabBtn?.SendClicked();
            HomePageBloodTestBtn?.SendClicked();
        }
    }

  
}