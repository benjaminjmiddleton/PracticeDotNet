using Microsoft.EntityFrameworkCore;

namespace PracticeApi.Models;

public class LibraryContext : DbContext
{
    public LibraryContext(DbContextOptions<LibraryContext> options) : base(options)
    {
    }

    protected override void OnModelCreating(ModelBuilder modelBuilder)
    {
        base.OnModelCreating(modelBuilder);

        modelBuilder.Entity<Author>()
            .HasKey(c => c.Name);

        modelBuilder.Entity<Book>()
            .HasMany(e => e.Authors)
            .WithMany(e => e.Books)
            .UsingEntity("BookAuthor");
    }

    public DbSet<Book> Books { get; set; } = null!;
    public DbSet<Author> Authors { get; set; } = null!; 
}
