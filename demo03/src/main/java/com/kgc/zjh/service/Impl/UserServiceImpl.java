package com.kgc.zjh.service.Impl;

import com.kgc.zjh.mapper.UserMapper;
import com.kgc.zjh.pojo.User;
import com.kgc.zjh.pojo.UserExample;
import com.kgc.zjh.service.UserService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service("userservice")
public class UserServiceImpl implements UserService {

    @Resource
    UserMapper userMapper;

    @Override
    public User selectByName(String name) {
        User username=null;
        UserExample example=new UserExample();
        UserExample.Criteria criteria = example.createCriteria();
        criteria.andNameEqualTo(name);

        List<User> list = userMapper.selectByExample(example);
        if(list!=null&&list.size()>0){
            username=list.get(0);
        }
        return username;
    }
}
