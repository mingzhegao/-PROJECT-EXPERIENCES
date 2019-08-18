package com.bd.user.controller;

import com.bd.entity.User;
import com.bd.user.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/user")
public class UserController {
    @Autowired
    private UserService userService;

    @PostMapping("/login.action")
    public String login(User user , HttpSession session, Model model){
        user=userService.login(user);
        if (user==null){
            model.addAttribute("msg","用户名密码错误");
            return "login";
        }
        if (user.getUser_state()==0){
            model.addAttribute("msg","当前用户被禁用，请联系经纪人");
            return "login";
        }
        session.setAttribute("user",user);
        return "forward:/customer/loadSelects.action";
    }
    @GetMapping("/logout.action")
    public  String logout(HttpSession session){
        session.invalidate();
        return "login";
    }
    @GetMapping("/gotologin.action")
    public String gotologin(HttpSession session){
        User user = (User) session.getAttribute("user");
        if (user==null){
            return "login";
        }else {
            return "customer";
        }
    }
}
