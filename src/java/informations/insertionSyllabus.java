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
public class insertionSyllabus {
    
    connexion db = new connexion();
    String sql = "";
    Connection con;
    PreparedStatement pst;
    ResultSet rs;
    
     public insertionSyllabus() {
        
    }
    
    public int insert(String code, String nom, String heure, String professeur, String classe) {
        
        int Professeur = Integer.parseInt(professeur);
        int Heure = Integer.parseInt(heure);
        int Classe = Integer.parseInt(classe);
        
        
        try {
            Class.forName(db.getDriver());
            con = DriverManager.getConnection(db.getUrl(), db.getUser(), db.getPwd());
            sql = "INSERT INTO syllabus(contenu, matiere, date, heure) VALUES('"+code+"', '"+nom+"', "+Classe+", "+Professeur+", "+Heure+")";
            pst = con.prepareStatement(sql);
            pst.executeUpdate();
                
            System.out.println("Enregistrement de la matiere éffectué");
            
            con.close();
            return 1;
        }
        catch (SQLException | ClassNotFoundException e) {
            System.out.println(e.getMessage());
            return 0;
        }
        
    }
}