<<<<<<< HEAD
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package connexion;

/**
 *
 * @author germinator
 */
public class connexion {
    
    private final String url;
    private final String user;
    private final String driver;
    private final String pwd;
    
    public connexion() {
        
        this.url = "jdbc:mysql://localhost:3306/psel";
        this.user = "root";
        this.driver = "com.mysql.jdbc.Driver";
        this.pwd = "";
    }

    public String getUrl() {
        return url;
    }

    public String getUser() {
        return user;
    }

    public String getDriver() {
        return driver;
    }

    public String getPwd() {
        return pwd;
    }
    
}
=======
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package connexion;

/**
 *
 * @author germinator
 */
public class connexion {
    
    private final String url;
    private final String user;
    private final String driver;
    private final String pwd;
    
    public connexion() {
        
        this.url = "jdbc:mysql://localhost:3309/db";
        this.user = "root";
        this.driver = "com.mysql.jdbc.Driver";
        this.pwd = "";
    }

    public String getUrl() {
        return url;
    }

    public String getUser() {
        return user;
    }

    public String getDriver() {
        return driver;
    }

    public String getPwd() {
        return pwd;
    }
    
}
>>>>>>> 538f6fc28656e3f80e9c05b9b9cd5ecbdc2b6b30
