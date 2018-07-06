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
public class insertionClasse {
    
    connexion db = new connexion();
    String sql = "";
    Connection con;
    PreparedStatement pst;
    ResultSet rs;
    
     public insertionClasse() {
        
    }
    
    public int insertion(String nom, String chef) {
        
        try {
            Class.forName(db.getDriver());
            con = DriverManager.getConnection(db.getUrl(), db.getUser(), db.getPwd());
            sql = "INSERT INTO classe(nom, chef) VALUES('"+nom+"', '"+chef+"')";
            pst = con.prepareStatement(sql);
            pst.executeUpdate();
                
            System.out.println("Enregistrement de la classe éffectué");
            
            con.close();
            return 1;
        }
        catch (SQLException | ClassNotFoundException e) {
            System.out.println(e.getMessage());
            return 0;
        }
        
    }
    
}
