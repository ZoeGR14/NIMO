package Modelo;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class NotaDAO {
    
    Conexion cn = new Conexion();
    Connection con;
    PreparedStatement ps;
    PreparedStatement ps2;
    ResultSet rs;
    ResultSet rs2;
    
    public List listar(String usuario){
        
        List<Nota>lista = new ArrayList<>();
        List<Nota>lista2 = new ArrayList<>();
        String sql = "select * from nota_usu where usuar = '"+usuario+"'";
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while(rs.next()){
                Nota n = new Nota();
                n.setId(rs.getInt(1));
                lista.add(n);
            }
            
            String sql2 = "select * from nota where id_nota = ";
            int size = lista.size();
            for (int i = 0; i < size; i++) {
                if(i == 0)
                    sql2 = sql2 + lista.get(i).getId();
                else
                    sql2 = sql2 + " or id_nota = " + lista.get(i).getId();
            }
            
            try {
                ps2 = con.prepareStatement(sql2);
                rs2 = ps2.executeQuery();
                while(rs2.next()){
                    Nota n = new Nota();
                    n.setId(rs2.getInt(1));
                    n.setContenido(rs2.getString(2));
                    n.setFecha(rs2.getString(3));
                    n.setEstado(rs2.getInt(4));
                    lista2.add(n);
                }
                ps2.close();
                rs2.close();
                
            } catch (SQLException e) {
                System.out.println("Error Listar_2");
            }
            rs.close();
            ps.close();
            con.close();
            
        } catch (SQLException e) {
            System.out.println("Error Listar_1");
        }
        return lista2;
    }
    
    
    public void agregar(Nota n){
        String sql = "insert into nota (contenido_nota, estado) values (?, ?)";
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            ps.setString(1, n.getContenido());
            ps.setInt(2, 1);
            ps.executeUpdate();
            
        } catch (Exception e) {
        }
    }
    
    public void agregarUnion(String id_usu){
        String sql = "insert into nota_usu values (?, ?)";
        Nota n = listar2();
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            ps.setInt(1, n.getId());
            ps.setString(2, id_usu);
            ps.executeUpdate();
            
        } catch (Exception e) {
        }
    }
    
    private Nota listar2(){
        
        String sql = "select * from nota";
        Nota n = new Nota();
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while(rs.next()){
                n.setId(rs.getInt(1));
                n.setContenido(rs.getString(2));
                n.setFecha(rs.getString(3));
                n.setEstado(rs.getInt(4));
            }
        } catch (Exception e) {
        }
        return n;
    }
    
    public String getContenidoNota(int id){
            String sql = "select * from nota where id_nota=" + id;
            String contenido = "";
            try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while(rs.next()){
                Nota n = new Nota();
                n.setContenido(rs.getString(2));
                contenido = n.getContenido();
            }
        } catch (Exception e) {
        }
        return contenido;
    }
    
    public void editar(Nota n, int tipo){
        String sql = "";
        if(tipo == 1){
            sql = "update nota set contenido_nota = '"+n.getContenido()+"' where id_nota = "+n.getId();
        } else if(tipo == 2){
            sql = "update nota set estado = "+2+" where id_nota = "+n.getId();
        } else if(tipo == 3){
            sql = "update nota set estado = "+1+" where id_nota = "+n.getId();
        }
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
            System.out.println("Error EDITAR");
            e.printStackTrace();
        }
    }
    
    public void eliminar(Nota n){
        String sql = "delete from nota where id_nota = " + n.getId();
         try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
            System.out.println("Error EDITAR");
            e.printStackTrace();
        }
    }
}
