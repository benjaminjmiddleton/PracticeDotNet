namespace PracticeApi.Models
{
    public class Book
    {
        public long Id { get; set; }
        public string? Title { get; set; }
        public bool CheckedOut { get; set; }
        public List<Author> Authors { get; } = [];
    }
    public class Author
    {
        public string? Name { get; set; }
        public List<Book> Books { get; } = [];
    }
}
