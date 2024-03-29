package com.bd.intercepters;

import com.bd.entity.User;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class LoginIntercepter extends HandlerInterceptorAdapter {

    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {

        User user=(User) request.getSession().getAttribute("user");
        if (user==null){
            request.getRequestDispatcher("WEB-INF/jsps/login.jsp").forward(request,response);
            return false;
        }
        //request.getRequestDispatcher("WEB-INF/jsps/customer.jsp").forward(request,response);
        return true;


    }
}
