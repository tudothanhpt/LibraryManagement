namespace LibraryManagement.Domain.Entities;

public sealed class Book
{
    public Guid Id { get; private set; }
    public ISBN Isbn { get; private set; }
    public string? Title { get; private set; }
    public Guid AuthorId { get; private set; }
    public int numberOfCopies { get; private set; }
    public bool IsAvailable { get; private set; }
}
