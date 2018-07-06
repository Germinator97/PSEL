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
 * @author germinator
 */
public class insertionUtilisateur {
    
    connexion db = new connexion();
    String sqlCompte = "";
    String insertAdmin = "";
    String insertCompte = "";
    String insertProf = "";
    String insertChef = "";
    Connection con;
    PreparedStatement pst;
    PreparedStatement pstAdmin;
    PreparedStatement pstProf;
    PreparedStatement pstChef;
    PreparedStatement pstCompte;
    ResultSet rs;
    
    public insertionUtilisateur() {
        
    }
    
    public int inserer(String statut, String matricule, String nom, String prenom, String telephone, String email) {
        
        int i = 0;
        
        try {
            Class.forName(db.getDriver());
            con = DriverManager.getConnection(db.getUrl(), db.getUser(), db.getPwd());
            
            sqlCompte = "SELECT compte.id FROM compte ORDER BY id DESC LIMIT 1";
            pst = con.prepareStatement(sqlCompte);
            rs = pst.executeQuery();
            while (rs.next()) {
                i = rs.getInt(1);
            }
            i++;
            switch (statut) {
                case "Direction":
                    insertAdmin = "INSERT INTO direction(nom, prenom, telephone, email, compte) VALUES('"+nom+"', '"+prenom+"', '"+telephone+"', '"+email+"', "+i+")";
                    pstAdmin = con.prepareStatement(insertAdmin);
                    pstAdmin.executeUpdate();
                    System.out.println("Enregistrement d'un membre de la direction éffectué");
                    break;
                case "Professeur":
                    insertProf = "INSERT INTO professeur(nom, prenom, telephone, email, compte) VALUES('"+nom+"', '"+prenom+"', '"+telephone+"', '"+email+"', "+i+")";
                    pstProf = con.prepareStatement(insertProf);
                    pstProf.executeUpdate();
                    System.out.println("Enregistrement d'un professeur éffectué");
                    break;
                case "Chef":
                    insertChef = "INSERT INTO chef(matricule, nom, prenom, telephone, email, compte) VALUES('"+matricule+"', '"+nom+"', '"+prenom+"', '"+telephone+"', '"+email+"', "+i+")";
                    pstChef = con.prepareStatement(insertChef);
                    pstChef.executeUpdate();
                    System.out.println("Enregistrement d'un chef classe éffectué");
                    break;
                default:
                    break;
            }
            insertCompte = "INSERT INTO compte(username, password) VALUES('user"+i+"', 'pass"+i+"')";
            pstCompte = con.prepareStatement(insertCompte);
            pstCompte.executeUpdate();
            System.out.println("Enregistrement du compte éffectué");
            
            con.close();
            rs.close();
            return i;
        }
        catch (SQLException | ClassNotFoundException e) {
            System.out.println(e.getMessage());
            return i;
        }
        
    }
    
}
