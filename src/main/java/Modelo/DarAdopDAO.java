/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author jwqui
 */
public class DarAdopDAO {

    Conexion cn = new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;

    public void agregar(DarAdop D) {
        String sql = "insert into adopcion (historia, salud, ubicacion) values(?, ?, ?)";
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            ps.setString(1, D.getHistoria());
            ps.setString(2, D.getSalud());
            ps.setString(3, D.getUbicacion());
            ps.executeUpdate();

            ps.close();
            con.close();
        } catch (Exception e) {
        }
    }

    private DarAdop listar() {
        String sql = "select * from adopcion";
        DarAdop d = new DarAdop();
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                d.setId(rs.getInt(1));
                d.setSalud(rs.getString(2));
                d.setHistoria(rs.getString(3));
                d.setUbicacion(rs.getString(4));
            }
        } catch (Exception e) {
        }
        return d;
    }
    private int consultarId(String mascota){
        String sql = "select * from mascota where nombre_masc = '"+mascota+"'";
        int id = 0;
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                id = (rs.getInt(1));
            }
        } catch (Exception e) {
        }
        return id;
    }
    
    public void agregarUnion(String mascota){
        String sql = "insert into adopc_masc (id_adopc, id_masc) values (?, ?)";
        DarAdop d = listar();
        int id = consultarId(mascota);
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            ps.setInt(1, d.getId());
            ps.setInt(2, id);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }
}
