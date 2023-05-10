package Modelo;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpServletResponse;

public class MascotaDAO {

    Conexion cn = new Conexion();
    Connection con;
    PreparedStatement ps;
    PreparedStatement ps2;
    ResultSet rs;
    ResultSet rs2;

    public List listar(String usuario) {

        List<Mascota> lista = new ArrayList<>();
        List<Mascota> lista2 = new ArrayList<>();
        String sql = "select * from masc_usu where usuar = '" + usuario + "'";
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Mascota m = new Mascota();
                m.setId(rs.getInt(1));
                lista.add(m);
            }

            String sql2 = "select * from mascota where id_masc = ";
            int size = lista.size();
            for (int i = 0; i < size; i++) {
                if (i == 0) {
                    sql2 = sql2 + lista.get(i).getId();
                } else {
                    sql2 = sql2 + " or id_masc = " + lista.get(i).getId();
                }
            }

            try {
                ps2 = con.prepareStatement(sql2);
                rs2 = ps2.executeQuery();
                while (rs2.next()) {
                    Mascota m = new Mascota();
                    m.setId(rs2.getInt(1));
                    m.setNombre(rs2.getString(2));
                    m.setRaza(rs2.getString(3));
                    m.setTipoRaza(rs2.getString(4));
                    m.setNacimMasc(rs2.getString(5));
                    m.setGustos(rs2.getString(6));
                    m.setDisgustos(rs2.getString(7));
                    m.setSexo(rs2.getString(8));
                    m.setPeso(rs2.getInt(9));
                    m.setFoto(rs2.getBinaryStream(10));
                    m.setTipoAnimal(rs2.getString(11));
                    m.setAlergias(rs2.getString(12));
                    m.setColor(rs2.getString(13));
                    lista2.add(m);
                }
                rs2.close();
                ps2.close();

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

    public List listarEditado(int id) {
        List<Mascota> lista = new ArrayList<>();
        String sql = "select * from mascota where id_masc = " + id;
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Mascota m = new Mascota();
                m.setId(rs.getInt(1));
                m.setNombre(rs.getString(2));
                m.setRaza(rs.getString(3));
                m.setTipoRaza(rs.getString(4));
                m.setNacimMasc(rs.getString(5));
                m.setGustos(rs.getString(6));
                m.setDisgustos(rs.getString(7));
                m.setSexo(rs.getString(8));
                m.setPeso(rs.getInt(9));
                m.setFoto(rs.getBinaryStream(10));
                m.setTipoAnimal(rs.getString(11));
                m.setAlergias(rs.getString(12));
                m.setColor(rs.getString(13));
                lista.add(m);
            }
        } catch (Exception e) {
            System.out.println("Mal listado de editado");
        }

        return lista;
    }

    private Mascota listar2() {

        String sql = "select * from mascota";
        Mascota m = new Mascota();
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                m.setId(rs.getInt(1));
                m.setNombre(rs.getString(2));
                m.setRaza(rs.getString(3));
                m.setTipoRaza(rs.getString(4));
                m.setNacimMasc(rs.getString(5));
                m.setGustos(rs.getString(6));
                m.setDisgustos(rs.getString(7));
                m.setSexo(rs.getString(8));
                m.setPeso(rs.getInt(9));
                m.setFoto(rs.getBinaryStream(10));
                m.setTipoAnimal(rs.getString(11));
                m.setAlergias(rs.getString(12));
                m.setColor(rs.getString(13));
            }

            rs.close();
            ps.close();
            con.close();

        } catch (SQLException e) {
            System.out.println("Error listar 2");
        }
        return m;
    }

    public void listarImg(int id, HttpServletResponse response) {
        String sql = "SELECT imagen FROM mascota WHERE id_masc = ?";
        InputStream inputStream = null;
        OutputStream outputStream = null;
        BufferedInputStream bufferedInputStream = null;
        BufferedOutputStream bufferedOutputStream = null;
        PreparedStatement ps = null;
        Connection con = null;

        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                inputStream = rs.getBinaryStream("imagen");
            }

            response.setContentType("image/*");
            outputStream = response.getOutputStream();
            bufferedInputStream = new BufferedInputStream(inputStream);
            bufferedOutputStream = new BufferedOutputStream(outputStream);
            int i = 0;
            while ((i = bufferedInputStream.read()) != -1) {
                bufferedOutputStream.write(i);
            }
            System.out.println("ListarIMG bien");
        } catch (IOException | SQLException e) {
            System.out.println("Error al listar la imagen: " + e.getMessage());
            e.printStackTrace();
        } finally {
            if (bufferedOutputStream != null) {
                try {
                    bufferedOutputStream.close();
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
            if (bufferedInputStream != null) {
                try {
                    bufferedInputStream.close();
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
            if (outputStream != null) {
                try {
                    outputStream.close();
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
            if (inputStream != null) {
                try {
                    inputStream.close();
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
            if (ps != null) {
                try {
                    ps.close();
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
            if (con != null) {
                try {
                    con.close();
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }
    }

    public void agregar(Mascota m) {
        String sql = "insert into mascota(nombre_masc, raza, tipoRaza, nac_masc, gustos, disgustos, sexo, peso, imagen, tipo_animal, alergias, color, estado) values (?,?,?,?,?,?,?,?,?,?,?,?,?)";
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            ps.setString(1, m.getNombre());
            ps.setString(2, m.getRaza());
            ps.setString(3, m.getTipoRaza());
            ps.setString(4, m.getNacimMasc());
            ps.setString(5, m.getGustos());
            ps.setString(6, m.getDisgustos());
            ps.setString(7, m.getSexo());
            ps.setInt(8, m.getPeso());
            ps.setBlob(9, m.getFoto());
            ps.setString(10, m.getTipoAnimal());
            ps.setString(11, m.getAlergias());
            ps.setString(12, m.getColor());
            ps.setString(13, "normal");

            ps.executeUpdate();

            ps.close();
            con.close();
        } catch (SQLException e) {
            System.out.println("Error MascotaDAO");
        }

    }

    public void editar(Mascota m, int id) {
        String sql = "update mascota set nombre_masc = ?, raza = ?, tipoRaza = ?, nac_masc = ?, gustos = ?, disgustos = ?, sexo = ?, peso =?, tipo_animal =?, alergias =?, color=? where id_masc = " + id;
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            ps.setString(1, m.getNombre());
            ps.setString(2, m.getRaza());
            ps.setString(3, m.getTipoRaza());
            ps.setString(4, m.getNacimMasc());
            ps.setString(5, m.getGustos());
            ps.setString(6, m.getDisgustos());
            ps.setString(7, m.getSexo());
            ps.setInt(8, m.getPeso());
//            ps.setBlob(9, m.getFoto());
            ps.setString(9, m.getTipoAnimal());
            ps.setString(10, m.getAlergias());
            ps.setString(11, m.getColor());

            ps.executeUpdate();

            ps.close();
            con.close();
        } catch (SQLException e) {
            System.out.println("Error MascotaDAO");
        }

    }
    
    public void editarFoto(Mascota m, int id){
        String sql = "update mascota set imagen = ? where id_masc = " + id;
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            ps.setBlob(1, m.getFoto());
            ps.executeUpdate();
            ps.close();
            con.close();
        } catch (Exception e) {
            System.out.println("Error actualizacion de foto");
        }
        
    }

    public void eliminar(int id) {
        String sql = "delete from mascota where id_masc = " + id;
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
            System.out.println("Error EDITAR");
            e.printStackTrace();
        }
    }

    public void agregarUnion(String id_usu) {
        String sql = "insert into masc_usu values(?, ?)";
        Mascota m = listar2();
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            ps.setInt(1, m.getId());
            ps.setString(2, id_usu);
            ps.executeUpdate();

            ps.close();
            con.close();
        } catch (SQLException e) {
            System.out.println("Error Union");
        }

    }
}
