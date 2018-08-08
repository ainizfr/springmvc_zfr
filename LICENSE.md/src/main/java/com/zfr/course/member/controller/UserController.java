package com.zfr.course.member.controller;


import com.sun.org.apache.xpath.internal.operations.Mod;
import com.zfr.course.member.model.User;
import com.zfr.course.member.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;

@Controller
public class UserController {
    @Autowired
    UserService userService;




    @RequestMapping("/toRegister")//跳转到注册jsp 页面
    public String toRegister(User user,Model model) {
        return "registeruser";

    }
    @RequestMapping("/registerUser")
    public String registerUser(User user, Model model) {
        //保存到数据库
        userService.addUser(user);
        return "redirect:toUserList";
    }


    @RequestMapping("/toUserList")//跳转到用户列表jsp 页面
    public String toUserList(Model model) {
       //查询数据库
        List<User> userList =userService.findAllUsers();

        //把数据放到model,传到jsp使用
        model.addAttribute("user_list", userList);
        return "userlist";
    }



    /*//批量删除用户
    @RequestMapping("/deleteUsers")
    public  String deleteUsers(int[] ids, Model model){
        String msg="";
        for(int id:ids){
            msg=msg+"     "+id;

        }
        model.addAttribute("msg",msg);
        return "success";
    }*/

    //删除用户
    @RequestMapping("/deleteUser")
    public String deleteUser(int id,Model model){
        userService.deleteUser(id);
        //model.addAttribute("msg","删除了id="+id);
        return "redirect:toUserList";
    }
    //跳转修改信息页面
    @RequestMapping("/toEditUser")
    public String toEditUser(int id,Model model){
        //根据id从数据库中查找
        User user=userService.findUserById(id);
        model.addAttribute("user",user);


        return "useredit";

    }
    //修改用户信息

    @RequestMapping("/editUser")
    public String  editUser(User user){
        //保存数据库操作
        userService.editUser(user);
        return "redirect:toUserList";
    }


}
