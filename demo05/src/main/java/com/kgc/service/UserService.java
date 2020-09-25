package com.kgc.service;


import com.kgc.pojo.User;

public interface UserService {

    User selectByName(String name);

}
