using System.ComponentModel.DataAnnotations;

namespace PracticeFrontend.Models
{
    public class Book
    {
        public long Id { get; set; }
        public string? Title { get; set; }
        public bool CheckedOut { get; set; }
        public List<Author> Authors { get; set; } = new List<Author>();
    }
    public class Author
    {
        public string? Name { get; set; }
        public List<Book> Books { get; set; } = new List<Book>();
    }
}
