/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package informations;

import connexion.connexion;
import java.sql.*;

/**
 *
 * @author Asus R511L
 */
public class modificationUtilisateur {
    
    connexion db = new connexion();
    String sql = "";
    Connection con;
    PreparedStatement pst;
    ResultSet rs;
    
    public modificationUtilisateur() {
        
    }
    
    public int informations(String identifiant, String nom, String prenom, String telephone, String email) {
        
        int id = Integer.parseInt(identifiant);
        int i = 0;
        int j = 0;
        int k = 0;
        
        try {
            Class.forName(db.getDriver());
            con = DriverManager.getConnection(db.getUrl(), db.getUser(), db.getPwd());
            
            sql = "SELECT * FROM chef WHERE chef.compte="+id+"";
            pst = con.prepareStatement(sql);
            rs = pst.executeQuery();
            
            while (rs.next()) {
                
                i = rs.getInt(1);
                
                
            }
            sql = "SELECT * FROM professeur WHERE professeur.compte="+id+"";
            pst = con.prepareStatement(sql);
            rs = pst.executeQuery();
            
            while (rs.next()) {
                
                j = rs.getInt(1);
                
                
            }
            sql = "SELECT * FROM direction WHERE direction.compte="+id+"";
            pst = con.prepareStatement(sql);
            rs = pst.executeQuery();
            
            while (rs.next()) {
                
                k = rs.getInt(1);
                
                
            }
            
            if (i != 0) {
                System.out.println("Modification des informations");
                sql = "UPDATE chef SET nom='"+nom+"', prenom='"+prenom+"', telephone='"+telephone+"', email='"+email+"' WHERE chef.compte="+id+"";
                pst = con.prepareStatement(sql);
                pst.executeUpdate();
                System.out.println("Modification des informations éffectué");
            }
            
            
            
            if (j != 0) {
                System.out.println("Modification des informations");
                sql = "UPDATE professeur SET nom='"+nom+"', prenom='"+prenom+"', telephone='"+telephone+"', email='"+email+"' WHERE professeur.compte="+id+"";
                pst = con.prepareStatement(sql);
                pst.executeUpdate();
                System.out.println("Modification des informations éffectué");
            }
            
            
            
            if (k != 0) {
                System.out.println("Modification des informations");
                sql = "UPDATE direction SET nom='"+nom+"', prenom='"+prenom+"', telephone='"+telephone+"', email='"+email+"' WHERE direction.compte="+id+"";
                pst = con.prepareStatement(sql);
                pst.executeUpdate();
                System.out.println("Modification des informations éffectué");
            }
            System.out.println("Modification des informations");
            con.close();
            rs.close();
            return 1;
        }
        catch (SQLException | ClassNotFoundException e) {
            System.out.println(e.getMessage());
            return 0;
        }
        
    }
    
}
