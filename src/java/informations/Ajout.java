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
public class Ajout {
    
    public static void main(String[] args) {
        
        //1. chargement du pilote
        try {
            Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
        }
        catch (Exception e) {
            System.err.println("Erreur de chargement du driver :" + e);
        }
        try {
            String url = "jdbc:odbc:BDGSF"; // 2. Definition de la DSN ODBC
            String password = "";
            String username = "";
            Connection conn = DriverManager.getConnection(url, username, password);//3. connection
            //4. Creation d'une instruction
            Statement st = conn.createStatement();
            //5. Execution de la requete
            String Sql = "INSERT INTO Client VALUES(141, 'Moussa Lo', 'UGB St Louis', '221','221','moussa@ugb.sn')";
            int nb = st.executeUpdate(Sql);
            //6. Traitement
            System.out.println(nb + " ligne(s) inseree(s)");
            //7. Fermeture de la connexion
            st.close();
            conn.close();
        }
        catch (SQLException e) {
            System.err.println(e.getMessage());
        }

    }

}
