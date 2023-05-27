package Modelo;

import java.sql.Connection;
import java.sql.DriverManager;
public class Conexion {
    Connection con;
    public Connection getConnection(){
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con  = DriverManager.getConnection("jdbc:mysql://10.100.49.216:3306/NimoBase?autoReconnect=true&useSSL=false","root","RTPdlm96117");       
        } catch (Exception e) {
            System.out.print("Error Conexión");
            e.printStackTrace();
        }
        return con;
    }
}
