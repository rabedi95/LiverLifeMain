namespace LiverLife;

public partial class HepatiqPage : ContentPage
{
	public HepatiqPage()
	{
		InitializeComponent();
       

    }


    private async void SkipBtnClicked(object sender, EventArgs e)
	{

        HepatiqInfoMessage.IsVisible = false;
    }
}