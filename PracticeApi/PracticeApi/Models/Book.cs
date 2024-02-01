namespace PracticeApi.Models
{
    public class Book
    {
        public long Id { get; set; }
        public string? Title { get; set; }
        public List<string>? Authors { get; set; }
        public bool CheckedOut { get; set; }
    }
}
