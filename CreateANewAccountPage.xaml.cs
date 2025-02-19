namespace LiverLife;
using Microsoft.Maui.Storage;
using System.ComponentModel;
using System.Runtime.CompilerServices;
using System.Collections.Generic;

public partial class CreateANewAccountPage : ContentPage
{
    //private LoginPage _loginPage;
    public CreateANewAccountPage() 
    {
        InitializeComponent();
        // _loginPage = new LoginPage();
        // Hide the navigation bar on this page
        this.Title = string.Empty;
        // Create the ViewModel instance and set it as the BindingContext
        var viewModel = new RegistrationViewModel();
        BindingContext = viewModel;


    }

    // Event handler for the left swipe gesture
    private async void OnSwipeLeft(object sender, SwipedEventArgs e)
    {
        // Navigate to the login page
        await Navigation.PushAsync(new LoginPage());
    }

    private async void OnRegisterButtonClicked(object sender, EventArgs e)
    {
        // Get the ViewModel from the BindingContext
        var viewModel = (RegistrationViewModel)BindingContext;

        // Access the data entered by the user through the ViewModel
        string firstname = viewModel.FirstName;
        string lastname = viewModel.LastName;
        string email = viewModel.Email;
        string password = viewModel.Password;
        string confirmPassword = viewModel.ConfirmPassword;
        string country = viewModel.Country;

        // Check if any required field is empty
        if (string.IsNullOrWhiteSpace(firstname) || string.IsNullOrWhiteSpace(lastname) ||
            string.IsNullOrWhiteSpace(email) ||
            string.IsNullOrWhiteSpace(password) ||
            string.IsNullOrWhiteSpace(confirmPassword) ||
            string.IsNullOrWhiteSpace(country))
        {
            await DisplayAlert("Error", "Please fill in all the fields.", "OK");
            return; // Exit the method early if any field is empty
        }

        // Validate email format
        if (!viewModel.IsValidEmail(email))
        {
            await DisplayAlert("Error", "Invalid email format. Please enter a valid email address.", "OK");
            return; // Exit the method early
        }

        // Check if passwords match
        if (password == confirmPassword)
        {
            // Proceed with registration (you could save to database, call API, etc.)
            await DisplayAlert("Registration", "User registered successfully.", "OK");
            // After registration is successful, navigate to the ConfirmEmailPage
            await Navigation.PushAsync(new ConfirmEmailPage());

            // Clear the ViewModel properties (which will automatically update the UI through binding)
            viewModel.FirstName = "";
            viewModel.LastName = "";
            viewModel.Email = "";
            viewModel.Password = "";
            viewModel.ConfirmPassword = "";
            viewModel.Country = "";


        }
        else
        {
            // Show error for password mismatch
            await DisplayAlert("Error", "Passwords do not match.", "OK");
        }

        // Call Appwrite service to save user data in the database
        try
        {
            var appwriteService = new AppwriteService(); // Make sure you've initialized your Appwrite service
            await appwriteService.CreateUserAsync(firstname, lastname, email, password, country);

            // Proceed with registration success logic
            //await DisplayAlert("Registration", "User registered successfully.", "OK");

            // After registration is successful, navigate to the ConfirmEmailPage
            await Navigation.PushAsync(new ConfirmEmailPage());

            // Clear the ViewModel properties (which will automatically update the UI through binding)
            viewModel.FirstName = "";
            viewModel.LastName = "";
            viewModel.Email = "";
            viewModel.Password = "";
            viewModel.ConfirmPassword = "";
            viewModel.Country = "";
        }
        catch (Exception ex)
        {
            // Handle any errors from Appwrite (e.g., network error, invalid data)
            await DisplayAlert("Error", $"Registration failed: {ex.Message}", "OK");
        }
    }

  

}