package cn.kgc.ssm.service;

import cn.kgc.ssm.pojo.Book;
import com.github.pagehelper.PageInfo;

import java.util.List;

/**
 * @author 李锡良
 * @create 2020-09-24 9:19
 */
public interface BookService {

    //分页查询
    PageInfo<Book> bList(Integer pageIndex, Integer pageSize);

    //修改数据
    int upd(Book book);

    //删除
    int del(int id);

    //添加
    int ins(Book book);

}
