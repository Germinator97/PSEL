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
public class Supprime {
    
    public static void main(String[] args) {
        
        //1. chargement du pilote
        final int numClient = 141;
        try {
            Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
        }
        catch (Exception e) {
            System.err.println("Erreur de chargement du driver :" + e);
        }
        try {
            String url = "jdbc:odbc:BDGSF"; // 2. Definition de DSN ODBC
            Connection conn = DriverManager.getConnection(url, "brou", "brou");//3. connection
            //4. Creation d'une instruction
            Statement st = conn.createStatement();
            //5. Execution de la requete
            String Sql = "DELETE FROM Client WHERE numCl = " + numClient;
            int nb = st.executeUpdate(Sql);
            //6. Traitement
            System.out.println(nb + " ligne(s) supprimee(s)");
            //7. Fermeture de la connexion
            st.close();
            conn.close();
        }
        catch (SQLException e) {
            System.err.println(e.getMessage());
        }
        
    }
    
}
