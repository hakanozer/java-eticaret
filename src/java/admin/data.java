package admin;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

public class data {

    private final String url = "jdbc:mysql://localhost/eticaret";
    private final String duName = "root";
    private final String dPass = "19863308";
    private final String Driver = "com.mysql.jdbc.Driver";

    Connection conn = null;
    Statement st = null;

//    public static void main(String[] args) throws Exception {
//        data ns = new data();
//        ns.baglan();
//    }

    public Statement baglan() throws Exception {
        try {

            if (conn == null) {
                Class.forName(Driver);
                conn = DriverManager.getConnection(url, duName, dPass);
                st = conn.createStatement();
                System.out.println("MYSQL Bağlantı Başarılı");
            }

        } catch (SQLException | ClassNotFoundException e) {
            System.err.println("MYSQL Bağlantı Hatası  :" + e);
        } 
        
        return st;
    }

}
