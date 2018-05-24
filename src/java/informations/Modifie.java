/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package informations;

import java.sql.*;

/**
 *
 * @author Asus R511L
 */
public class Modifie {
    
    public static void main(String[] args) {
        
        //1. chargement du pilote
        final int numClient = 2;
        try {
            Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
        }
        catch (Exception e) {
            System.err.println("Erreur de chargement du driver :" + e);
        }
        //2. et 3. Definition de l'URL et connection
        try {
            String url = "jdbc:odbc:BDGSF"; // 2. D'finition de la DSN ODBC
            Connection conn = DriverManager.getConnection(url, "brou", "brou");//3. connection
            //4. Creation d'une instruction
            Statement st = conn.createStatement();
            //5. Execution de la requete
            String Sql = "UPDATE Client SET nom = 'David' WHERE numCl = " + numClient;
            int nb = st.executeUpdate(Sql);
            //6. Traitement
            System.out.println(nb + " ligne(s) mise(s) a jour");
            //7. Fermeture de la connexion
            st.close();
            conn.close();
        }
        catch (SQLException e) {
            System.err.println(e.getMessage());
        }

    }
    
}
