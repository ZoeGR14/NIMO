/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author jwqui
 */
public class SoporteDAO {

    Conexion cn = new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;

    public List listar(String trabajador) {
        List<Soporte> lista = new ArrayList<>();
        String sql = "select * from reportes inner join trabajador_reporte on trabajador_reporte.id_reporte=reportes.id_reporte where encargado='" + trabajador + "' and estatus = 'En Proceso'";
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                System.out.println("statement");
                Soporte s = new Soporte();
                s.setId_reporte(rs.getInt(1));
                s.setDescripcion(rs.getString(2));
                s.setEstatus(rs.getString(3));
                s.setEncargado(rs.getString(4));
                s.setFecha_hora(rs.getString(5));
                s.setSolucion(rs.getString(6));
                s.setCliente(rs.getString(8));
                lista.add(s);
            }
            rs.close();
            ps.close();
            con.close();
        } catch (Exception e) {
            System.out.println("Error 'tás bien mensa al listar :DD");
        }
        return lista;
    }

    public List listar2() {
        List<Soporte> lista = new ArrayList<>();
        String sql = "select * from reportes inner join trabajador_reporte on trabajador_reporte.id_reporte=reportes.id_reporte where estatus = 'En Proceso'";
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                System.out.println("statement");
                Soporte s = new Soporte();
                s.setId_reporte(rs.getInt(1));
                s.setDescripcion(rs.getString(2));
                s.setEstatus(rs.getString(3));
                s.setEncargado(rs.getString(4));
                s.setFecha_hora(rs.getString(5));
                s.setSolucion(rs.getString(6));
                s.setCliente(rs.getString(8));
                lista.add(s);
            }
            rs.close();
            ps.close();
            con.close();
        } catch (Exception e) {
            System.out.println("Error 'tás bien mensa al listar :DD");
        }
        return lista;
    }

    public List listarReporte(int id) {
        List<Soporte> lista = new ArrayList<>();
        String sql = "select * from reportes where id_reporte =" + id;
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);

            rs = ps.executeQuery();
            while (rs.next()) {
                Soporte s = new Soporte();
                s.setId_reporte(rs.getInt(1));
                s.setDescripcion(rs.getString(2));
                s.setEstatus(rs.getString(3));
                s.setEncargado(rs.getString(4));
                s.setFecha_hora(rs.getString(5));
                s.setSolucion(rs.getString(6));
                lista.add(s);
            }
            rs.close();
            ps.close();
            con.close();
        } catch (Exception e) {
            System.out.println("Error 'tás bien mensa al listar reportes :DD");
        }
        return lista;
    }

    public void resolver(Soporte s) {

        String sql = "update reportes set solucion= '" + s.getSolucion() + "', fecha_hora=now() where id_reporte = " + s.getId_reporte();

        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            ps.executeUpdate();

            ps.close();
            con.close();
        } catch (Exception e) {
            System.out.println("Error al actualizar reporte");
            e.printStackTrace();
        }
    }

    public void cerrarReporte(Soporte s) {
        String sql = "update reportes set estatus = 'Cerrado' where id_reporte = " + s.getId_reporte();
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            ps.executeUpdate();

            ps.close();
            con.close();
        } catch (Exception e) {
            System.out.println("Error al actualizar estatus");
            e.printStackTrace();
        }
    }
}
