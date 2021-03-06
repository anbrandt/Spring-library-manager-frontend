package com.sda.controller;

import java.util.List;
import java.util.Map;

import com.sun.org.apache.regexp.internal.RE;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sda.model.Book;
import com.sda.service.BookService;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class BookController {

    private BookService bookService;

    @Autowired
    public BookController(BookService bookService) {
        this.bookService = bookService;
    }

    @RequestMapping(value = "/books", method = RequestMethod.GET)
    public String books(Map<String, Object> model) {
        List<Book> books = bookService.getAll();
        model.put("books", books);
        return "books";
    }

    @RequestMapping(value = "/books/create", method = RequestMethod.GET)
    public String addBookForm() {
        return "createbook";
    }

    @RequestMapping(value = "/books/create", method = RequestMethod.POST)
    public String createBook() {

        //HERE IN RETURN IS THE NAME OF JSP FILE!!!!
        return "createbook";
    }

    @RequestMapping(value = "/books/created")
    public String createdBook(@ModelAttribute Book book) {
        bookService.createBook(book);
        return "created";
    }
}
