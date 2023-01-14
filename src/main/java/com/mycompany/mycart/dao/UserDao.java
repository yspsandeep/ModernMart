
package com.mycompany.mycart.dao;

import com.mycompany.mycart.entities.User;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;

public class UserDao {
    private SessionFactory factory;

    public UserDao(SessionFactory factory) {
        this.factory = factory;
    }
    
    //get user by email and password
    public User getUserByEmailAndPassword(String email,String password)
    {
        User user=null;
        
        try {
            
            String query="from User where userEmail =: e and userPassword=: p";
            Session session = this.factory.openSession();
            Query q = session.createQuery(query);
            q.setParameter("e", email);
            q.setParameter("p",password);            
            user=(User) q.uniqueResult();         
            session.close();         
            
            
            
            
            
        } catch (Exception e) {
            e.printStackTrace();
        }     
        
        
        
        
        return user;
    }
    
          public void deleteUserById(String userId)
    {
        User user;
       
        try {
                Session session = this.factory.openSession();
               session.beginTransaction();
//            String query="delete from User where userId =:i";
//        
//            Query q = session.createQuery(query);
//            q.setParameter("i", userId);
//    
//            q.executeUpdate();
               user=new User();
               user.setUserId(Integer.parseInt(userId));
               session.delete(user);
             session.getTransaction().commit();

            session.close();    
                     
           
           
           
           
        } catch (Exception e) {
            e.printStackTrace();
        }    
       
       
        return;
       
       
    }
    
}
