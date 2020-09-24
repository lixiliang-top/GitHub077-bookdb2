package com.kgc.zjh.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.kgc.zjh.pojo.Book;
import com.kgc.zjh.service.BookService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import java.util.List;

@Controller
public class BookController {

    @Resource
    BookService bookService;

    @RequestMapping("/BookList")
    public String BookList(Model model,String pageIndex){
        int pageNum=1;
        if(pageIndex!=null){
            pageNum=Integer.parseInt(pageIndex);
        }
        int pageSize=3;
        PageHelper.startPage(pageNum,pageSize);
        PageHelper.orderBy("id desc");
        List<Book> books = bookService.selectAll();
        PageInfo pageInfo=new PageInfo(books);
        model.addAttribute("pageInfo",pageInfo);
        return "index";
    }

    @RequestMapping("/add")
    public String add(){
        return "add";
    }

    @RequestMapping("/insertBook")
    public String insertBook(Book book){
        bookService.insert(book);
        return "redirect:/BookList";
    }

    @RequestMapping("/updLook")
    public String updLook(int id,Model model){
        Book book = bookService.selectById(id);
        model.addAttribute("book",book);
        return "upd";
    }

    @RequestMapping("/updateBook")
    public String updateBook(Book book){
        bookService.update(book);
        return "redirect:/BookList";
    }

    @RequestMapping("/deleteBook")
    public String deleteBook(int id,Model model){
        bookService.delete(id);
        return "redirect:/BookList";
    }
}
