package Modelo;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class GerenteDAO {

    Conexion cn = new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;

    public void agregar(Gerente g, int id_reporte) {
        String sql = "update reportes set estatus = ?, encargado = ?, fecha_hora = now() where id_reporte = ?";
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            ps.setString(1, g.getEstatus());
            ps.setString(2, g.getAsignado());
            ps.setInt(3, id_reporte);
            ps.executeUpdate();

            ps.close();
            con.close();

        } catch (SQLException e) {
            System.out.println("Error agregar");
            e.printStackTrace();
        }
    }

    public void agregarSoporte(Gerente g, int id_reporte) {
        String sql = "update reportes set estatus = ?, fecha_hora = now() where id_reporte = ?";
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            ps.setString(1, g.getEstatus());
            ps.setInt(2, id_reporte);
            ps.executeUpdate();

            ps.close();
            con.close();
        } catch (SQLException e) {
            System.out.println("Error agregar");
            e.printStackTrace();
        }
    }

    public void agregarGerenteEncargado(int id, String trabajador) {
        String sql = "insert into primer_encargado values (?, ?)";
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            ps.setInt(1, id);
            ps.setString(2, trabajador);
            ps.executeUpdate();

            ps.close();
            con.close();

        } catch (SQLException e) {
            System.out.println("Error agregar");
            e.printStackTrace();
        }
    }

    public List listar() {
        List<Gerente> lista = new ArrayList<>();
        String sql = "select * from reportes inner join trabajador_reporte on trabajador_reporte.id_reporte = reportes.id_reporte";
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Gerente g = new Gerente();
                g.setId(rs.getInt(1));
                g.setDescripcion(rs.getString(2));
                g.setEstatus(rs.getString(3));
                g.setAsignado(rs.getString(4));
                g.setFecha(rs.getString(5));
                g.setSolucion(rs.getString(6));
                g.setCliente(rs.getString(8));
                lista.add(g);
            }
            rs.close();
            ps.close();
            con.close();
        } catch (Exception e) {
            System.out.println("error listar");
            e.printStackTrace();
        }
        return lista;
    }

    public List listar2(String trabajador) {
        List<Gerente> lista = new ArrayList<>();
        String sql = "select * from reportes inner join trabajador_reporte on trabajador_reporte.id_reporte = reportes.id_reporte inner join primer_encargado on primer_encargado.id_reporte = reportes.id_reporte where primerEncargado = '" + trabajador + "' and (estatus = 'En Programacion' or estatus = 'Programacion Finalizada' or estatus = 'En Mantenimiento')";
        System.out.println(sql);
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Gerente g = new Gerente();
                g.setId(rs.getInt(1));
                g.setDescripcion(rs.getString(2));
                g.setEstatus(rs.getString(3));
                g.setAsignado(rs.getString(4));
                g.setFecha(rs.getString(5));
                g.setSolucion(rs.getString(6));
                g.setCliente(rs.getString(8));
                lista.add(g);
            }
            rs.close();
            ps.close();
            con.close();
        } catch (Exception e) {
            System.out.println("error listar");
            e.printStackTrace();
        }
        return lista;
    }

    public List listar3() {
        List<Gerente> lista = new ArrayList<>();
        String sql = "select * from reportes inner join trabajador_reporte on trabajador_reporte.id_reporte = reportes.id_reporte inner join primer_encargado on primer_encargado.id_reporte = reportes.id_reporte where primerEncargado like 'gerenMan%' and (estatus = 'En Programacion' or estatus = 'Programacion Finalizada' or estatus = 'En Mantenimiento')";
        System.out.println(sql);
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Gerente g = new Gerente();
                g.setId(rs.getInt(1));
                g.setDescripcion(rs.getString(2));
                g.setEstatus(rs.getString(3));
                g.setAsignado(rs.getString(4));
                g.setFecha(rs.getString(5));
                g.setSolucion(rs.getString(6));
                g.setCliente(rs.getString(8));
                lista.add(g);
            }
            rs.close();
            ps.close();
            con.close();
        } catch (Exception e) {
            System.out.println("error listar");
            e.printStackTrace();
        }
        return lista;
    }
}
