package com.kgc.zjh.controller;

import com.kgc.zjh.pojo.User;
import com.kgc.zjh.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

@Controller
public class UserController {

    @Resource
    UserService userService;

    @RequestMapping("/toLogin")
    public String toLogin(){
        return "login";
    }
    @RequestMapping("/doLogin")
    public String doLogin(Model model, String name, String password, HttpSession session){
        User user = userService.selectByName(name);
        if(user==null){
            model.addAttribute("error","账号不存在");
            return "login";
        }else if(user.getPassword().equals(password)==false){
            model.addAttribute("error","密码输入错误");
            return "login";
        }else{
            session.setAttribute("user",user);
            return "redirect:/BookList";
        }
    }
}
