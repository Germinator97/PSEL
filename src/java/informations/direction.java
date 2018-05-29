/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package informations;

import java.sql.*;
import connexion.connexion;

/**
 *
 * @author germinator
 */
public class direction {
    
    connexion db = new connexion();
    String sql = "";
    Connection con;
    PreparedStatement pst;
    ResultSet rs;
    
    public direction() {
        
    }
    
    public String lecture(String username, String password) {
        
        String id = null;
        
        try {
            Class.forName(db.getDriver());
            con = DriverManager.getConnection(db.getUrl(), db.getUser(), db.getPwd());
            sql = "SELECT id FROM compte WHERE username='"+username+"' AND password='"+password+"' AND statut='Direction'";
            pst = con.prepareStatement(sql);
            rs = pst.executeQuery();
            while (rs.next()) {
                id = rs.getString(1);
            }
            con.close();
            rs.close();
            return id;
        }
        catch (SQLException | ClassNotFoundException e) {
            return id;
        }
        
    }
    
}
