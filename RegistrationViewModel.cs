using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Text.RegularExpressions;
using System.ComponentModel;

namespace LiverLife
{
    public class RegistrationViewModel : INotifyPropertyChanged
    {
        // Properties for binding
        private string _FirstName;
        private string _LastName;
        private string _email;
        private string _password;
        private string _confirmPassword;
        private string _country;
        public string FirstName
        {
            get => _FirstName;
            set
            {
                if (_FirstName != value)
                {
                    _FirstName = value;
                    OnPropertyChanged(nameof(FirstName)); // Notifies the UI when the value changes
                }
            }
        }
        public string LastName
        {
            get => _LastName;
            set
            {
                if (_LastName != value)
                {
                    _LastName = value;
                    OnPropertyChanged(nameof(LastName)); // Notifies the UI when the value changes
                }
            }
        }
        public string Email
        {
            get => _email;
            set
            {
                if (_email != value)
                {
                    _email = value;
                    OnPropertyChanged(nameof(Email));
                }
            }
        }
        public string Password
        {
            get => _password;
            set
            {
                if (_password != value)
                {
                    _password = value;
                    OnPropertyChanged(nameof(Password));
                }
            }
        }
        public string ConfirmPassword
        {
            get => _confirmPassword;
            set
            {
                if (_confirmPassword != value)
                {
                    _confirmPassword = value;
                    OnPropertyChanged(nameof(ConfirmPassword));
                }
            }
        }
        public string Country
        {
            get => _country;
            set
            {
                if (_country != value)
                {
                    _country = value;
                    OnPropertyChanged(nameof(Country));
                }
            }
        }

        // Countries list for binding to the Picker
        private List<string> _countries;
        public List<string> Countries
        {
            get => _countries;
            set
            {
                if (_countries != value)
                {
                    _countries = value;
                    OnPropertyChanged(nameof(Countries));
                }
            }
        }

        // Constructor for RegistrationViewModel
        public RegistrationViewModel()
        {
            // Populate the Countries list using the CountryList class
            var countryList = new CountryList();
            Countries = countryList.GetCountries();  // Assume CountryList is already created
        }

        // Implement the INotifyPropertyChanged interface
        public event PropertyChangedEventHandler PropertyChanged;

        protected virtual void OnPropertyChanged(string propertyName)
        {
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
        }

        // Method to validate the email format using regular expression
        public bool IsValidEmail(string email)
        {
            var emailRegex = new Regex(@"^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$");
            return emailRegex.IsMatch(email);
        }

        // CountryList class that returns a list of countries
        public class CountryList
        {
            public List<string> GetCountries()
            {
                return new List<string>
            {
                "United States", "Canada", "United Kingdom", "Australia", "Germany", "France"
            };
            }
        }

    }
}
