package com.kgc.service;



import com.kgc.pojo.Book;

import java.util.List;

public interface BookService {

    public List<Book> selectAll();

    void insert(Book book);

    public Book selectById(int id);

    void update(Book book);

    void delete(int id);
}
