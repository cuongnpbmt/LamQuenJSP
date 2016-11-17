/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.javaweb.service;

import com.javaweb.hibernate.util.HibernateUtil;
import com.javaweb.model.Users;
import java.util.ArrayList;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

/**
 *
 * @author CuongNP
 */
public class UserService {
    public boolean InsertUser(Users user){
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction tx = null;
        
        try {
            tx = session.getTransaction();
            tx.begin();
            session.saveOrUpdate(user);
            tx.commit();
            return true;
        } catch (Exception e) {
            if(tx != null){
                tx.rollback();
            }
            System.out.println(e.toString());
        }finally{
            session.close();
        }
        
        return false;
    }
    
    public Users GetUserByEmailOrUserName(String giaTriNguoiDungNhap){
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction tx = null;
        
        try {
            tx = session.getTransaction();
            tx.begin();
            
            String strQuery = "from Users where email = '" + giaTriNguoiDungNhap 
                    + "' or UserName ='" + giaTriNguoiDungNhap + "'";
            Query query = session.createQuery(strQuery);
            Users user = (Users) query.uniqueResult();
            tx.commit();
            return user;
            
        } catch (Exception e) {
             if(tx != null){
                tx.rollback();
            }
            System.out.println(e.toString());
        }finally{
            session.close();
        }
        return null;
    }
    
    public boolean CheckLogin(String giaTriNhap, String password){
        Users user = GetUserByEmailOrUserName(giaTriNhap);
        if(user == null){
            return false;
        }else{
            if(user.getPwd().equals(password)){
                return true;
            }else{
                return false;
            }
        }
    }
    
    public ArrayList<Users> GetAllUsers(){
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction tx = null;
        ArrayList<Users> listUsers = new ArrayList<Users>();
        try {
            tx = session.getTransaction();
            tx.begin();
            Query query = session.createQuery("from Users");
            listUsers = (ArrayList) query.list();
            tx.commit();       
        } catch (Exception e) {
            if(tx != null){
                tx.rollback();
            }
            System.out.println("Loi" + e.toString());
        }finally{
            session.close();
        }        
        return listUsers;
    }
    
    public Users GetUserByID(String userID){
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction tx = null;
        
        try {
            tx = session.getTransaction();
            tx.begin();
            
            String strQuery = "from Users where idUser = " + userID ;
            Query query = session.createQuery(strQuery);
            Users user = (Users) query.uniqueResult();
            tx.commit();
            return user;
            
        } catch (Exception e) {
             if(tx != null){
                tx.rollback();
            }
            System.out.println(e.toString());
        }finally{
            session.close();
        }
        return null;
    }
}
