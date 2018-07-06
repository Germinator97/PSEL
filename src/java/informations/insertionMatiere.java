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
public class insertionMatiere {
    
    connexion db = new connexion();
    String sqlSyllabus = "";
    String sqlMatiere = "";
    Connection con;
    PreparedStatement pstSyllabus;
    PreparedStatement pstMatiere;
    
     public insertionMatiere() {
        
    }
    
    public int insert(String code, String nom, String heure, String professeur, String classe, String contenu) {
        
        int Professeur = Integer.parseInt(professeur);
        int Heure = Integer.parseInt(heure);
        int Classe = Integer.parseInt(classe);
        
        
        try {
            Class.forName(db.getDriver());
            con = DriverManager.getConnection(db.getUrl(), db.getUser(), db.getPwd());
            
            sqlMatiere = "INSERT INTO matiere(code, nom, salle, prof, heure) VALUES('"+code+"', '"+nom+"', "+Classe+", "+Professeur+", "+Heure+")";
            pstMatiere = con.prepareStatement(sqlMatiere);
            pstMatiere.executeUpdate();
                
            sqlSyllabus = "INSERT INTO syllabus(contenu, matiere) VALUES('"+contenu+"', '"+code+"')";
            pstSyllabus = con.prepareStatement(sqlSyllabus);
            pstSyllabus.executeUpdate();
            
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