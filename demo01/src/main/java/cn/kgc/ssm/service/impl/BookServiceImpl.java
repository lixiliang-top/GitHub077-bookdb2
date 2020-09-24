package cn.kgc.ssm.service.impl;

import cn.kgc.ssm.mapper.BookMapper;
import cn.kgc.ssm.pojo.Book;
import cn.kgc.ssm.pojo.BookExample;
import cn.kgc.ssm.service.BookService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;

/**
 * @author 李锡良
 * @create 2020-09-24 9:19
 */
@Transactional
@Service("/bookService")
public class BookServiceImpl implements BookService {

    @Resource
    BookMapper bookMapper;

    @Override
    public  PageInfo<Book>  bList(Integer pageIndex, Integer pageSize) {
        BookExample example = new BookExample();
        BookExample.Criteria criteria = example.createCriteria();
        PageHelper.startPage(pageIndex,pageSize);
        PageHelper.orderBy("id desc");
        List<Book> books = bookMapper.selectByExample(example);
        PageInfo<Book> pageInfo = new PageInfo<>(books);
        return pageInfo;
    }

    @Override
    public int upd(Book book) {
        int i = bookMapper.updateByPrimaryKeySelective(book);
        return i;
    }

    @Override
    public int del(int id) {
        int i = bookMapper.deleteByPrimaryKey(id);
        return i;
    }

    @Override
    public int ins(Book book) {
        int i = bookMapper.insertSelective(book);
        return i;
    }
}
