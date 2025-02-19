namespace LiverLife;

public partial class LoginPage : ContentPage
{
    private CreateANewAccountPage _createANewAccountPage;
    private WelcomePage _welcomepage;
    private HomePage _homepage;
    private ForgotPasswordPage _forgotpasswordpage;
    public LoginPage()
    {
        InitializeComponent();

        // Preload the CreateANewAccount page
        // _createANewAccountPage = new CreateANewAccount();

        // Preload the CreateANewAccount page only once
        if (_createANewAccountPage == null)
        {
            _createANewAccountPage = new CreateANewAccountPage();
        }

        if (_welcomepage == null)
        {
            _welcomepage = new WelcomePage();
        }

        if (_forgotpasswordpage == null)
        {
            _forgotpasswordpage = new ForgotPasswordPage();
        }
        //this.Title = string.Empty;
        //// Hide the navigation bar on this page
        // NavigationPage.SetHasNavigationBar(this, true);


    }


    //private void OnEyeButtonClicked(object sender, EventArgs e)
    //{
    //    // Toggle the password visibility for the login page
    //    TogglePasswordVisibility(LoginPasswordEntry, ToggleLoginPasswordVisibilityButton);
    //}

    private void TogglePasswordVisibility(Entry entry, ImageButton button)
    {
        // Toggle the visibility of the password
        entry.IsPassword = !entry.IsPassword;

        // Change the icon based on the visibility of the password
        button.Source = entry.IsPassword ? "eye_close.png" : "eye_open.png"; // Toggle between eye_closed and eye_open
    }

    //Create a New Account method 

    private async void OnCreateNewAccountClicked(object sender, EventArgs e)
    {

        // Navigate to CreateAnewAccount.xaml page
        var navpage = new NavigationPage(_createANewAccountPage);

        await Navigation.PushAsync(navpage, animated: false);


    }

    //sign in Button method 
    private async void OnSignInClicked(object sender, EventArgs e)
    {
        // Disable the sign-in button to prevent multiple submissions
        SignInBtn.IsEnabled = false;

        // Get the entered email and password from the UI
        string email = EmailEntry.Text;
        string password = LoginPasswordEntry.Text;


        var appwriteService = new AppwriteService(); // Make sure you've initialized your Appwrite service

        try
        {
            // Attempt to sign in and get the result
            bool isSignedIn = await appwriteService.SignInAsync(email, password);

            if (isSignedIn)
            {
                // Successful sign-in
                await DisplayAlert("Success", "Login successful", "OK");
                // Perform any actions after successful sign-in, e.g., navigate to a different page
            }
            else
            {
                // Sign-in failed
                Console.WriteLine("Sign-in failed. Please check your credentials.");
                // You can display an error message to the user, for example:
                await DisplayAlert("Error", "Incorrect email or password.", "OK");
            }
        }
        catch (Exception ex)
        {
            // Catch and log any exceptions that occurred during the sign-in attempt
            Console.WriteLine($"Error during sign-in: {ex.Message}");
            await DisplayAlert("Error", "An error occurred during sign-in. Please try again later.", "OK");
        }
        finally
        {
            // Re-enable the sign-in button after the operation is complete
            SignInBtn.IsEnabled = true;
        }

    }

    private async void ContinueAsGuestClicked(object sender, EventArgs e)
    {

        // Navigate to CreateAnewAccount.xaml page
        var navpage = new NavigationPage(_welcomepage);
        await Navigation.PushAsync(navpage, animated: false);

    }


    private async void ForgotPassBtnClicked(object sender, EventArgs e)
    {

        var navpage = new NavigationPage(_forgotpasswordpage);
        await Navigation.PushAsync(navpage, animated: false);

    }

    ////static class to provide a globally accessible HttpClient object not used in this project. for testing purposes
    //public static class HttpClientProvider
    //{
    //    // this defines a static read only named handler. manages HTTP request and reponses liek: managing cookies, handling redirect or controlling SSL certificate.
    //    private static readonly HttpClientHandler handler = new HttpClientHandler
    //    {
    //        // this is used to byepass the SSL certifictae validation (** not recommend for produciton, testing use only **)
    //        // sender: the object sending the request
    //        // cert: the server certicate presented by the server
    //        // chain: the certificate chain used to verify the server's certificate
    //        //sslPolicyErrors: any errors relaed to SSL validation. the lambda (=> true) simply return true for every certificate. meaning every certificate is accespted.

    //        ServerCertificateCustomValidationCallback = (sender, cert, chain, sslPolicyErrors) => true
    //    };

    //    // this line creates a static, read-only HttpClient intance called client. the HttpClient is being initialized with the custom HttpClientHandler (handler) that was created earlier

    //    private static readonly HttpClient client = new HttpClient(handler)
    //    {
    //        // this Timeout property of the HttpClient instance to 500 seconds (8 minutes) defines the maximum amount od time the HttpClient will wait for a repsonse from the server before throwing TimeoutException

    //        Timeout = TimeSpan.FromSeconds(500)  // Increase the timeout to 500 seconds (8 minutes)
    //    };

    //    // this line defines a public static method GetClient() that returns the singleton HttpClient intance (Client). this ensure that every call to GetClient() will return the same intance of HttpClient

    //    public static HttpClient GetClient()
    //    {
    //        // this return the HttpClient intance (Client)

    //        return client;
    //    }
}





