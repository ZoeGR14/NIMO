package Modelo;

import java.sql.Connection;
import java.sql.DriverManager;
public class Conexion {
    Connection con;
    public Connection getConnection(){
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con  = DriverManager.getConnection("jdbc:mysql://localhost:3308/NimoBase?autoReconnect=true&useSSL=false","root","n0m3l0");       
        } catch (Exception e) {
            System.out.print("Error Conexión");
            e.printStackTrace();
        }
        return con;
    }
}
