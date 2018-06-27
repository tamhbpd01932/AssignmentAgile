/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package abc.model;


import abc.entity.Departs;
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
public class DepartsModel {

   public List<Departs> getAllDeparts() {
        Session session = HibernateUtil.getSessionFactory().getCurrentSession();
        List<Departs> lst = new ArrayList<>();
        try {
            session.beginTransaction();
            lst = session.createCriteria(Departs.class).list();
            session.getTransaction().commit();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return lst;
    }

    public boolean createDeparts(Departs dp) {
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
    
    public Departs getDeparts(int id){
        Session session = HibernateUtil.getSessionFactory().getCurrentSession();
        Departs departs = new Departs();
            try {
            session.beginTransaction();
            departs = (Departs) session.get(Departs.class, id);
            session.getTransaction().commit();
        } catch (Exception e) {
            e.printStackTrace();
        }   
            return departs;
    }
    public boolean removeDeparts(Departs dp){
        Session session = HibernateUtil.getSessionFactory().getCurrentSession();
        try {
            session.beginTransaction();
            session.delete(dp);
            session.getTransaction().commit();
            return true;
        } catch (Exception e) {
            return false;
        } 
    } 
    public boolean  editDeparts(Departs dp){
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
    
}
