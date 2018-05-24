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
public class Liste {
    
    public static void main(String[] args) {
        //1. chargement du pilote
        try {
            Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
        }
        catch (Exception e){
            System.err.println("Erreur de chargement du driver :" + e);
        }
        try {
            String url = "jdbc:odbc:BDGSF"; // 2. Definition la DSN ODBC
            Connection conn = DriverManager.getConnection(url, "brou", "brou");//3. connection
            //4. Creation d'une instruction
            Statement st = conn.createStatement();
            //5. Execution de la requete
            String Sql = "SELECT * ";
            Sql = Sql + "FROM Client " + "ORDER BY nom";
            ResultSet rs = st.executeQuery(Sql);
            //6. Traitement
            System.out.println("Numéro\t Nom\t Adresse\t\t Tel\t\t Fax \t\t Email");
            while (rs.next()) {
                System.out.print(rs.getString(1) + "\t\t" + rs.getString(2) + "\t\t" + rs.getString(3) + "\t\t");
                System.out.println(rs.getString(4) + "\t" + rs.getString(5) + "\t\t" + rs.getString(6));
            }
            //7. Fermeture de la connexion
            rs.close();
            st.close();
            conn.close();
            }
        catch (SQLException e) {
            System.err.println(e.getMessage());
        }
    }
    
}
