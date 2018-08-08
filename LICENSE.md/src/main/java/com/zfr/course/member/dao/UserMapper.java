package com.zfr.course.member.dao;

import com.zfr.course.member.model.User;

import java.util.List;

public interface UserMapper {
    //修改
    public void  editUser(User user);
    //删除
    public void  deleteUser(int id);
    //id查询
    public User findUserById(int id);
    //添加用户
    public void addUser(User user);
    //查询所有用户
    public List<User> findAllUsers();
}
