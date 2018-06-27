/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package abc.model;


import abc.entity.Departs;
import abc.entity.Records;
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
public class RecordModel {

   public List<Records> getAllRecord() {
        Session session = HibernateUtil.getSessionFactory().getCurrentSession();
        List<Records> lst = new ArrayList<>();
        try {
            session.beginTransaction();
            lst = session.createCriteria(Records.class).list();
            session.getTransaction().commit();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return lst;
    }

    public boolean createRecord(Records rs) {
        Session session = HibernateUtil.getSessionFactory().getCurrentSession();
        try {
            session.beginTransaction();
            session.save(rs);
            session.getTransaction().commit();
            return true;
        } catch (Exception e) {
            e.printStackTrace();
        } return false;
    }
    
    public Records getRecord(int id){
        Session session = HibernateUtil.getSessionFactory().getCurrentSession();
        Records record = new Records();
            try {
            session.beginTransaction();
            record = (Records) session.get(Records.class, id);
            session.getTransaction().commit();
        } catch (Exception e) {
            e.printStackTrace();
        }   
            return record;
    }
    public boolean removeRecord(Records rs){
        Session session = HibernateUtil.getSessionFactory().getCurrentSession();
        try {
            session.beginTransaction();
            session.delete(rs);
            session.getTransaction().commit();
            return true;
        } catch (Exception e) {
            return false;
        } 
    } 
    public boolean  editRecord(Records rs){
        Session session = HibernateUtil.getSessionFactory().getCurrentSession();
        try {
            session.beginTransaction();
            session.update(rs);
            session.getTransaction().commit();
            return true;
        } catch (Exception e) {
            e.printStackTrace();
        } return false;
    }
    
}
