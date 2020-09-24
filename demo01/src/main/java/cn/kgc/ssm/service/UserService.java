package cn.kgc.ssm.service;

import cn.kgc.ssm.pojo.User;

/**
 * @author 李锡良
 * @create 2020-09-24 9:04
 */
public interface UserService {

    User login(String nickname);

}
