/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package abc.model;

import abc.entity.Staffs;
import abc.util.HibernateUtil;
import java.util.ArrayList;
import java.util.List;
import org.hibernate.Session;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author kuminhdey
 */
//@Transactional(rollbackFor = Exception.class)
public class StaffsModel {
       public List<Staffs> getAllStaffs() {
        Session session = HibernateUtil.getSessionFactory().getCurrentSession();
        List<Staffs> lst = new ArrayList<>();
        try {
            session.beginTransaction();
            lst = session.createCriteria(Staffs.class).list();
            session.getTransaction().commit();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return lst;
    }

    public boolean createStaffs(Staffs dp) {
        Session session = HibernateUtil.getSessionFactory().getCurrentSession();
        try {
            session.beginTransaction();
            session.save(dp);
            session.getTransaction().commit();
            return true;
        } catch (Exception e) {
            e.printStackTrace();
        } return false;
    }
    
    public Staffs getStaffs(String username){
        Session session = HibernateUtil.getSessionFactory().getCurrentSession();
        Staffs Staffs = new Staffs();
            try {
            session.beginTransaction();
            Staffs = (Staffs) session.get(Staffs.class, username);
            session.getTransaction().commit();
        } catch (Exception e) {
            e.printStackTrace();
        }   
            return Staffs;
    }
    
     public boolean  editStaffs(Staffs dp){
        Session session = HibernateUtil.getSessionFactory().getCurrentSession();
        try {
            session.beginTransaction();
            session.update(dp);
            session.getTransaction().commit();
            return true;
        } catch (Exception e) {
            e.printStackTrace();
        } return false;
    }
    
    public boolean removeStaffs(Staffs dp){
        Session session = HibernateUtil.getSessionFactory().getCurrentSession();
        try {
            session.beginTransaction();
            session.delete(dp);
            session.getTransaction().commit();
            return true;
        } catch (Exception e) {
            e.printStackTrace();
        } return false;
    }

    
   
}
