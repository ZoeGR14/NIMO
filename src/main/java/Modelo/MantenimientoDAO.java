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
public class MantenimientoDAO {

    Conexion cn = new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;

    public void resolverM(Mantenimiento m) {

        String sql = "update reportes set solucion= '" + m.getSolucion() + "', estatus='Programacion Finalizada', fecha_hora=now() where id_reporte = " + m.getId_reporte();

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

    public List listarM(String trabajador) {
        List<Mantenimiento> lista = new ArrayList<>();
        String sql = "select * from reportes inner join trabajador_reporte on trabajador_reporte.id_reporte=reportes.id_reporte where encargado='" + trabajador + "' and estatus = 'En Programacion'";
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);

            rs = ps.executeQuery();
            while (rs.next()) {
            System.out.println("bien listarm");
                Mantenimiento m = new Mantenimiento();
                m.setId_reporte(rs.getInt(1));
                m.setDescripcion(rs.getString(2));
                m.setEstatus(rs.getString(3));
                m.setEncargado(rs.getString(4));
                m.setFecha_hora(rs.getString(5));
                m.setSolucion(rs.getString(6));
                m.setCliente(rs.getString(8));
                lista.add(m);
            }
            rs.close();
            ps.close();
            con.close();
        } catch (Exception e) {
            System.out.println("Error 'tás bien mensa al listar :DD");
        }
        return lista;
    }

    public List listarM2() {
        List<Mantenimiento> lista = new ArrayList<>();
        String sql = "select * from reportes inner join trabajador_reporte on trabajador_reporte.id_reporte=reportes.id_reporte where estatus = 'En Programacion'";
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);

            rs = ps.executeQuery();
            while (rs.next()) {
            System.out.println("bien listarm");
                Mantenimiento m = new Mantenimiento();
                m.setId_reporte(rs.getInt(1));
                m.setDescripcion(rs.getString(2));
                m.setEstatus(rs.getString(3));
                m.setEncargado(rs.getString(4));
                m.setFecha_hora(rs.getString(5));
                m.setSolucion(rs.getString(6));
                m.setCliente(rs.getString(8));
                lista.add(m);
            }
            rs.close();
            ps.close();
            con.close();
        } catch (Exception e) {
            System.out.println("Error 'tás bien mensa al listar :DD");
        }
        return lista;
    }

    public List listarReporteM(int id) {
        List<Mantenimiento> lista = new ArrayList<>();
        String sql = "select * from reportes where id_reporte =" + id;
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);

            rs = ps.executeQuery();
            while (rs.next()) {
                Mantenimiento m = new Mantenimiento();
                m.setId_reporte(rs.getInt(1));
                m.setDescripcion(rs.getString(2));
                m.setEstatus(rs.getString(3));
                m.setEncargado(rs.getString(4));
                m.setFecha_hora(rs.getString(5));
                m.setSolucion(rs.getString(6));
                lista.add(m);
            }
            rs.close();
            ps.close();
            con.close();
        } catch (Exception e) {
            System.out.println("Error 'tás bien mensa al listar reportes :DD");
        }
        return lista;
    }
    public void cerrarReporteM(Mantenimiento m) {
        String sql = "update reportes set estatus = 'Programacion Finalizada' where id_reporte = " + m.getId_reporte();
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
