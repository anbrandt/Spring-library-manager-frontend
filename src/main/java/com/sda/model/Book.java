// tag::sample[]
package com.sda.model;

public class Book {

    private Long id;
    private String title;
    private String author;
    private String isbn;
    private String bookCategory;


    public Book() {
    }


    public Book(Long id, String title, String author, String isbn, String bookCategory) {
        this.id = id;
        this.title = title;
        this.author = author;
        this.isbn = isbn;
        this.bookCategory = bookCategory;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public String getIsbn() {
        return isbn;
    }

    public void setIsbn(String isbn) {
        this.isbn = isbn;
    }

    public String getBookCategory() {
        return bookCategory;
    }

    public void setBookCategory(String bookCategory) {
        this.bookCategory = bookCategory;
    }

    @Override
    public String toString() {
        return "Book{" +
                "id=" + id +
                ", title='" + title + '\'' +
                ", author='" + author + '\'' +
                ", isbn='" + isbn + '\'' +
                ", bookCategory='" + bookCategory + '\'' +
                '}';
    }
}
