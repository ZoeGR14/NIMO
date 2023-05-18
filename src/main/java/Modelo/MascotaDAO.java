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
/*Mis Mascotas*/
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

    public void editarFoto(Mascota m, int id) {
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
    
/*Dar en Adopción*/
    public List listarN(String usuario) {

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

            String sql2 = "select * from mascota where estado = 'normal' and (id_masc = ";
            int size = lista.size();
            for (int i = 0; i < size; i++) {
                if (i == 0) {
                    sql2 = sql2 + lista.get(i).getId();
                } else {
                    sql2 = sql2 + " or id_masc = " + lista.get(i).getId();
                }
            }
            sql2 = sql2 + ");";
            System.out.println(sql2);
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
                    m.setEstado(rs2.getString(14));
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

    public List listarAdopcion(String usuario) {

        List<Mascota> listaAdop = new ArrayList<>();
        String sql2 = "SELECT * FROM mascota INNER JOIN adopc_masc ON mascota.id_masc = adopc_masc.id_masc INNER JOIN adopcion ON adopcion.id_adopc = adopc_masc.id_adopc INNER JOIN masc_usu ON mascota.id_masc = masc_usu.id_masc WHERE mascota.estado = 'adopcion' AND masc_usu.usuar !='" + usuario + "' ";
        System.out.println(sql2);
        try {
            con = cn.getConnection();
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
                m.setEstado(rs2.getString(14));
                m.setSalud(rs2.getString(18));
                m.setHistoria(rs2.getString(19));
                m.setUbicacion(rs2.getString(20));
                listaAdop.add(m);
            }
            rs2.close();
            ps2.close();

        } catch (SQLException e) {
            System.out.println("Error Listar adoptados, pendeja.");
        }
        return listaAdop;
    }
    
    public void agregarDAP(Mascota M) {
        String sql = "insert into adopcion (historia, salud, ubicacion) values(?, ?, ?)";
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            ps.setString(1, M.getHistoria());
            ps.setString(2, M.getSalud());
            ps.setString(3, M.getUbicacion());
            ps.executeUpdate();

            ps.close();
            con.close();
        } catch (Exception e) {
        }
    }

    public List listarDAP() {
        String sql = "select * from adopcion";
        List<Mascota> lista = new ArrayList<>();
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Mascota m = new Mascota();
                m.setIdA(rs.getInt(1));
                m.setSalud(rs.getString(2));
                m.setHistoria(rs.getString(3));
                m.setUbicacion(rs.getString(4));
                lista.add(m);
            }
        } catch (Exception e) {
        }
        return lista;
    }

    private Mascota ultimO() {
        String sql = "select * from adopcion";
        Mascota d = new Mascota();
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
    
     private Mascota ultimOAdoptar() {
        String sql = "select * from adoptar";
        Mascota d = new Mascota();
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                d.setIdA(rs.getInt(1));
            }
        } catch (Exception e) {
        }
        return d;
    }
    
    public void agregarUnionDAP(int id) {
        String sql = "insert into adopc_masc (id_adopc, id_masc) values (?, ?)";
        Mascota d = ultimO();
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            ps.setInt(1, d.getId());
            ps.setInt(2, id);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public void cambiarEstadoDAP(String mascota) {
        String sql = "update mascota set estado = 'adopcion' where id_masc = " + mascota + "";
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            ps.executeUpdate();

            ps.close();
            con.close();
        } catch (Exception e) {
            System.out.println("Error al actualizar estado, estás bien estúpida alch. Tqm.");
            e.printStackTrace();
        }
    }

    /*Adoptar*/
    public void verFormulario(Mascota A) {
        List<Mascota> lista = new ArrayList<>();
        String sql = "select * from adoptar where";
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            ps.setString(1, A.getP1());
            ps.setString(2, A.getP2());
            ps.setString(3, A.getP3());
            ps.setString(4, A.getP4());
            ps.setString(5, A.getP5());
            ps.setString(6, A.getP6());
            ps.setString(7, A.getP7());
            ps.setString(8, A.getP8());
            ps.setString(9, A.getP9());
            ps.executeUpdate();
            ps.close();
            con.close();
        } catch (Exception e) {
        }
    }

    public void enviarFormulario(Mascota A) {
        String sql = "insert into adoptar (p1,p2,p3,p4,p5,p6,p7,p8,p9) values(?, ?, ?, ?, ?, ?, ?, ?, ?)";
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            ps.setString(1, A.getP1());
            ps.setString(2, A.getP2());
            ps.setString(3, A.getP3());
            ps.setString(4, A.getP4());
            ps.setString(5, A.getP5());
            ps.setString(6, A.getP6());
            ps.setString(7, A.getP7());
            ps.setString(8, A.getP8());
            ps.setString(9, A.getP9());
            ps.executeUpdate();
            ps.close();
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
            System.out.println("Error envio de formulario");
        }
    }

    public void agregarUnionAdoptar(int id, String usuario) {
        String sql = "insert into adopt_masc (id_adopt, id_masc, usuar) values (?, ?, ?)";
        Mascota d = ultimOAdoptar();
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            ps.setInt(1, d.getId());
            ps.setInt(2, id);
            ps.setString(3, usuario);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public List listarAdoptados(String usuario) {
        String sql = "SELECT * FROM mascota INNER JOIN adopt_masc ON mascota.id_masc = adopt_masc.id_masc INNER JOIN adoptar ON adoptar.id_adopt = adopt_masc.id_adopt INNER JOIN usuario ON adopt_masc.usuar = usuario.usuar INNER JOIN masc_usu ON mascota.id_masc = masc_usu.id_masc WHERE masc_usu.usuar = '"+usuario+"'";
        List<Mascota> ListaA = new ArrayList<>();
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            rs=ps.executeQuery();
            
            while(rs.next()){
                Mascota m = new Mascota();
                m.setNombre(rs.getString(2));
                m.setFoto(rs.getBinaryStream(10));
                m.setP1(rs.getString(19));
                m.setP2(rs.getString(20));
                m.setP3(rs.getString(21));
                m.setP4(rs.getString(22));
                m.setP5(rs.getString(23));
                m.setP6(rs.getString(24));
                m.setP7(rs.getString(25));
                m.setP8(rs.getString(26));
                m.setP9(rs.getString(27));
                ListaA.add(m);
            }
            ps.executeUpdate();
            ps.close();
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
            System.out.println("Error al ver adopciones.");
        }
        return ListaA;
    }
     public List listarAdoptadosU(String usuario) {
        String sql = "SELECT * FROM mascota INNER JOIN adopt_masc ON mascota.id_masc = adopt_masc.id_masc INNER JOIN adoptar ON adoptar.id_adopt = adopt_masc.id_adopt INNER JOIN usuario ON adopt_masc.usuar = usuario.usuar INNER JOIN masc_usu ON mascota.id_masc = masc_usu.id_masc WHERE masc_usu.usuar = '"+usuario+"'";
        List<Usuario> ListaAU = new ArrayList<>();
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            rs=ps.executeQuery();
            
            while(rs.next()){
                Usuario u = new Usuario();
                u.setUsuario(rs.getString(28));
                u.setTelefono(rs.getString(30));
                u.setGenero(rs.getString(31));
                u.setFecha_nac(rs.getString(32));
                u.setAp_pat(rs.getString(33));
                u.setAp_mat(rs.getString(34));
                u.setNombre(rs.getString(35));
                u.setMail(rs.getString(37));
                ListaAU.add(u);
            }
            ps.executeUpdate();
            ps.close();
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
            System.out.println("Error al ver adopciones2.");
        }
        return ListaAU;
    }
}
