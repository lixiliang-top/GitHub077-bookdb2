package cn.kgc.ssm.controller;

import cn.kgc.ssm.pojo.Book;
import cn.kgc.ssm.pojo.User;
import cn.kgc.ssm.service.BookService;
import cn.kgc.ssm.service.UserService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @author 李锡良
 * @create 2020-09-24 9:07
 */
@Controller
public class UserController {

    @Resource
    UserService userService;

    @Resource
    BookService bookService;

    @RequestMapping("/")
    public String toIndex(){
        return "/jsp/index";
    }

    @RequestMapping("/doIndex")
    public String doIndex(Model model, String nickname, String password, HttpSession session){
        User login = userService.login(nickname);
        if (login==null){
            model.addAttribute("error","用户名不存在");
            return "/jsp/index";
        }else if (login.getPassword().equals(password)==false){
            model.addAttribute("error","密码错误");
            return "/jsp/index";
        }else{
            session.setAttribute("userSession",login);
            return "/jsp/index2";
        }
    }

    @RequestMapping("/doIndex2")
    @ResponseBody
    public Map<String,Object> doIndex(Integer pageSize, Integer pageIndex){
        Map<String,Object> map = new HashMap<>();
        PageInfo<Book> pageInfo = bookService.bList(pageIndex, pageSize);
        map.put("data",pageInfo);
        return map;
    }

    @RequestMapping("/doIndex3")
    public  String doIndex3(){
        return "jsp/index3";

    }
    @RequestMapping("/doIndex4")
    @ResponseBody
    public Map<String,Object> doIndex4(Book book,HttpSession session){
        Map<String,Object> map=new HashMap<>();
        Date publishdate = book.getPublishdate();
        SimpleDateFormat simpleDateFormat=new SimpleDateFormat("yyyy-MM-dd");
        String format = simpleDateFormat.format(publishdate);

        session.setAttribute("book",book);
        session.setAttribute("publishdate2",format);
        return map;
    }

    @RequestMapping("/doIndex5")
    public String doIndex5(Book book){
        int upd = bookService.upd(book);
        return "/jsp/index2";
    }

    @RequestMapping("/doIndex6")
    public String doIndex6(){
        return "/jsp/index4";
    }

    @RequestMapping("/doIndex7")
    public String doIndex7(Book book){
        int ins = bookService.ins(book);
        return "/jsp/index2";
    }

    @RequestMapping("/doIndex8")
    @ResponseBody
    public Map<String,Object> doIndex8(int id){
        Map<String,Object> map = new HashMap<>();
        int del = bookService.del(id);
        if (del>0){
            map.put("status","true");
        }else{
            map.put("status","false");
        }
        return map;
    }



}
