package com.sda.service;

import java.util.List;

import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

import com.sda.model.Book;

@Service
public class BookService {

    private RestTemplate restTemplate;

    public BookService() {
        this.restTemplate = new RestTemplate();
    }

    public List<Book> getAll() {
        ResponseEntity<List> forEntity = restTemplate.getForEntity("http://localhost:8080/library/all", List.class);
        return forEntity.getBody();
    }



    public String createBook() {
        ResponseEntity<String> forEntity = restTemplate.getForEntity("http://localhost:8080/library/create", String.class);

        return forEntity.getBody();
    }


}
