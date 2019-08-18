package com.bd.mapper;

import com.bd.entity.User;

public interface UserMapper {

    User selectUserByUserCodeAndPassword(User user);

}
