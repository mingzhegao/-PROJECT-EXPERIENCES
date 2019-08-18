package com.bd.user.service;

import com.bd.entity.User;
import com.bd.mapper.UserMapper;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service
public class UserService {
    @Resource
    private UserMapper userMapper;

    public User login(User user){

        System.out.println(user);
        System.out.println(userMapper.selectUserByUserCodeAndPassword(user));
        return userMapper.selectUserByUserCodeAndPassword(user);
    }
}
