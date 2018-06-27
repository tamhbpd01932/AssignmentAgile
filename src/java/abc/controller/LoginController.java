/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package abc.controller;

import abc.entity.Staffs;
import java.util.List;
import abc.util.HibernateUtil;
import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;

import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author Tam Huynh
 */
@Controller
public class LoginController {
    @RequestMapping(value = "Login")
    public String Login(ModelMap model, @ModelAttribute(value = "staff")Staffs s){
        Session ss = HibernateUtil.getSessionFactory().getCurrentSession();
        ss.beginTransaction();
        String spl = "FROM Staffs WHERE username = :username AND password = :password";
        Query query = ss.createQuery(spl);
        query.setParameter("username", s.getUsername());
        query.setParameter("password", s.getPassword());
        List results = query.list();
        ss.getTransaction().commit();
        if(!results.isEmpty()){
            return "redirect: index.htm";
        }else{
            return "login";
        }
    }
}