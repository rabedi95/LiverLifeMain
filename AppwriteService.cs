using Appwrite.Services;
using Appwrite;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace LiverLife
{
    public class AppwriteService
    {
        private Client _client;
        private Databases _databases;
        private string _documentId;

        private string Email { get; set; }
        private string DocumentId { get; set; }




        public AppwriteService()
        {
            // Initialize Appwrite client with endpoint and project ID
            _client = new Client()
                .SetEndpoint("https://cloud.appwrite.io/v1") // Appwrite endpoint (use your Appwrite server URL here)
                .SetProject("6758786e0005a302a363")      // Your Appwrite project ID
                .SetKey("test_api_key");            // Your API key (generated in Appwrite console)

            // Initialize the database service
            _databases = new Databases(_client);
        }

        //this method creates a collection into appwrite database      
        public async Task CreateUserAsync(string firstname, string lastname, string email, string password, string country)
        {

            // Specify the database ID (if the database already exists, use its ID)
            var databaseId = "67587a5e00359e59a357";  // Replace with your actual database ID
            var collectionId = "67587a84002690fdeeca";  // The collection ID you want to assign (can be any unique string)
            var collectionName = " test_collection";  // The name of the collection
            var documentId = Guid.NewGuid().ToString();
            _documentId = documentId;

            // Hash the password using BCrypt
            string hashedPassword = BCrypt.Net.BCrypt.HashPassword(password);

            // Create the collection within the specified database
            var collectionResponse = await _databases.CreateDocument(
                databaseId,          // Specify the database ID
                collectionId,      // Specify the collection ID
                documentId,
                data: new
                {
                    firstname = firstname,
                    lastname = lastname,
                    email = email,
                    password = hashedPassword,
                    country = country
                },
              [Permission.Read("any")]);

            Console.WriteLine($"Collection created with ID: {collectionResponse.Id}");

            // Optionally, add attributes to the collection (e.g., name, email, etc.)
            // Example: Add attribute for 'name', 'email', 'password', 'country'


        }

        public async Task<bool> SignInAsync(string email, string password)
        {
            object emailobject = null;
            var databaseId = "67587a5e00359e59a357";  // Replace with your actual database ID
            var collectionId = "67587a84002690fdeeca";  // The collection ID you want to assign (can be any unique string)
            var collectionName = " test_collection";



            try
            {
                var documentList = await _databases.ListDocuments(databaseId, collectionId);
                // Find the user document that matches the provided email
                var userDocument = documentList.Documents.FirstOrDefault(doc => doc.Data.ContainsKey("email"));
                //var userDocument = documentList.Documents.FirstOrDefault();
                if (userDocument != null)
                {
                    // User found, now check the password
                    if (userDocument.Data.ContainsKey("password") && userDocument.Data["password"] != null)
                    {
                        string storedHashedPassword = userDocument.Data.GetValueOrDefault("password").ToString();

                        //// Compare the stored hashed password with the entered password
                        if (BCrypt.Net.BCrypt.Verify(password, storedHashedPassword))
                        {
                            // Password matches, successful sign-in
                            Console.WriteLine($"User {email} signed in successfully.");
                            return true; // Successful sign-in
                        }
                        else
                        {
                            // Password does not match
                            Console.WriteLine("Incorrect password.");
                            return false; // Failed sign-in
                        }
                        // Perform the verification asynchronously

                    }
                    else
                    {
                        Console.WriteLine("Password not found in the document.");
                        return false; // Failed sign-in, no password field found
                    }
                }
                else
                {
                    Console.WriteLine($"No user found with email: {email}");
                    return false; // Failed sign-in, user not found
                }
            }
            catch (Exception ex)
            {
                // Handle any errors that occur (e.g., network issues, document retrieval errors)
                Console.WriteLine($"Error during sign-in: {ex.Message}");
                return false; // Failed sign-in due to an error
            }


        }
    }
}
