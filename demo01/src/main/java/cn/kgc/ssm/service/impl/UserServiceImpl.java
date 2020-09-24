package cn.kgc.ssm.service.impl;

import cn.kgc.ssm.mapper.UserMapper;
import cn.kgc.ssm.pojo.User;
import cn.kgc.ssm.pojo.UserExample;
import cn.kgc.ssm.service.UserService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;

/**
 * @author 李锡良
 * @create 2020-09-24 9:04
 */
@Transactional
@Service("userService")
public class UserServiceImpl implements UserService {

    @Resource
    UserMapper userMapper;

    @Override
    public User login(String nickname) {
        User user = null;
        UserExample example = new UserExample();
        UserExample.Criteria criteria = example.createCriteria();
        criteria.andNicknameEqualTo(nickname);
        List<User> users = userMapper.selectByExample(example);
        if (users!=null&&users.size()>0){
            user = users.get(0);
        }
        return user;
    }
}
