package com.sda.service;

import java.util.List;

import com.fasterxml.jackson.databind.ObjectMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

import com.sda.model.Book;

@Service
public class BookService {

    private RestTemplate restTemplate;
    private String bookServiceURL;
    private ObjectMapper objectMapper;

    public BookService() {
        this.restTemplate = new RestTemplate();
    }


    public List<Book> getAll() {
        ResponseEntity<List> forEntity = restTemplate.getForEntity("http://localhost:8080/library/all", List.class);
        return forEntity.getBody();
    }



    public String createBook(Book book) {

    	//post for entity - when in header we use post method it has to be postforentity
        ResponseEntity<String> forEntity = restTemplate.postForEntity("http://localhost:8080/library/create", book,String.class);

        return forEntity.getBody();
    }

    //TODO update - button in the tabel next to the obok
	//TODO update - as above, the same button 


}
