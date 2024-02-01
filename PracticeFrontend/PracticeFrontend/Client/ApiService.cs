using Microsoft.AspNetCore.Components;

namespace PracticeFrontend.Client
{
    public class ApiService
    {
        public ApiService(HttpClient httpClient)
        {
            HttpClient = httpClient;
            HttpClient.BaseAddress = new Uri("http://localhost:5029/api/");
        }

        public HttpClient HttpClient { get; }
    }
}
