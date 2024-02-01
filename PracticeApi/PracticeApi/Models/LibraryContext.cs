using Microsoft.EntityFrameworkCore;

namespace PracticeApi.Models;

public class LibraryContext : DbContext
{
    public LibraryContext(DbContextOptions<LibraryContext> options) : base(options)
    {
    }

    public DbSet<Book> Books { get; set; } = null!;
}
