package com.kgc.service.Impl;


import com.kgc.mapper.BookMapper;
import com.kgc.pojo.Book;
import com.kgc.service.BookService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service("bookservice")
public class BookServiceImpl implements BookService {

    @Resource
    BookMapper bookMapper;

    @Override
    public List<Book> selectAll() {
        return bookMapper.selectByExample(null);
    }

    @Override
    public void insert(Book book) {
        bookMapper.insert(book);
    }

    @Override
    public Book selectById(int id) {
        Book book = bookMapper.selectByPrimaryKey(id);
        return book;
    }

    @Override
    public void update(Book book) {
        bookMapper.updateByPrimaryKeySelective(book);
    }

    @Override
    public void delete(int id) {
        bookMapper.deleteByPrimaryKey(id);
    }
}
