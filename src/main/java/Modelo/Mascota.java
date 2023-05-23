package Modelo;

import java.io.InputStream;

public class Mascota {
    String nombre, raza, tipoRaza, nacimMasc, gustos, disgustos, sexo, tipoAnimal, alergias, color, idDuenio, estado;
    int peso, id;
    InputStream foto;
    String usuario, telefono, genero, fecha_nac, ap_pat, ap_mat, nombre_usu, pass_usu, mail;

    
    int idA;
    String historia;
    String salud;
    String ubicacion;
    String mascota;
    int idD;
    String p1;
    String p2;
    String p3;
    String p4;
    String p5;
    String p6;
    String p7;
    String p8;
    String p9;
    public Mascota(){
    }

    public Mascota(String nombre, String raza, String tipoRaza, String nacimMasc, String gustos, String disgustos, String sexo, String tipoAnimal, String alergias, String color, String idDuenio, String estado, int peso, int id, InputStream foto, String usuario, String telefono, String genero, String fecha_nac, String ap_pat, String ap_mat, String nombre_usu, String pass_usu, String mail, int idA, String historia, String salud, String ubicacion, String mascota, int idD, String p1, String p2, String p3, String p4, String p5, String p6, String p7, String p8, String p9) {
        this.nombre = nombre;
        this.raza = raza;
        this.tipoRaza = tipoRaza;
        this.nacimMasc = nacimMasc;
        this.gustos = gustos;
        this.disgustos = disgustos;
        this.sexo = sexo;
        this.tipoAnimal = tipoAnimal;
        this.alergias = alergias;
        this.color = color;
        this.idDuenio = idDuenio;
        this.estado = estado;
        this.peso = peso;
        this.id = id;
        this.foto = foto;
        /*Usuario*/
        this.usuario = usuario;
        this.telefono = telefono;
        this.genero = genero;
        this.fecha_nac = fecha_nac;
        this.ap_pat = ap_pat;
        this.ap_mat = ap_mat;
        this.nombre_usu = nombre_usu;
        this.pass_usu = pass_usu;
        this.mail = mail;
        /*Dar en Adopcion*/
        this.idA = idA;
        this.historia = historia;
        this.salud = salud;
        this.ubicacion = ubicacion;
        this.mascota = mascota;
        /*Adoptar*/
        this.idD = idD;
        this.p1 = p1;
        this.p2 = p2;
        this.p3 = p3;
        this.p4 = p4;
        this.p5 = p5;
        this.p6 = p6;
        this.p7 = p7;
        this.p8 = p8;
        this.p9 = p9;
    }


    

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getRaza() {
        return raza;
    }

    public void setRaza(String raza) {
        this.raza = raza;
    }

    public String getTipoRaza() {
        return tipoRaza;
    }

    public void setTipoRaza(String tipoRaza) {
        this.tipoRaza = tipoRaza;
    }

    public String getNacimMasc() {
        return nacimMasc;
    }

    public void setNacimMasc(String nacimMasc) {
        this.nacimMasc = nacimMasc;
    }

    public String getGustos() {
        return gustos;
    }

    public void setGustos(String gustos) {
        this.gustos = gustos;
    }

    public String getDisgustos() {
        return disgustos;
    }

    public void setDisgustos(String disgustos) {
        this.disgustos = disgustos;
    }

    public String getSexo() {
        return sexo;
    }

    public void setSexo(String sexo) {
        this.sexo = sexo;
    }

    public String getTipoAnimal() {
        return tipoAnimal;
    }

    public void setTipoAnimal(String tipoAnimal) {
        this.tipoAnimal = tipoAnimal;
    }

    public String getAlergias() {
        return alergias;
    }

    public void setAlergias(String alergias) {
        this.alergias = alergias;
    }

    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color;
    }

    public String getIdDuenio() {
        return idDuenio;
    }

    public void setIdDuenio(String idDuenio) {
        this.idDuenio = idDuenio;
    }

    public int getPeso() {
        return peso;
    }

    public void setPeso(int peso) {
        this.peso = peso;
    }

    public InputStream getFoto() {
        return foto;
    }

    public void setFoto(InputStream foto) {
        this.foto = foto;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }
    
    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }
    
    public String getHistoria() {
        return historia;
    }

    public void setHistoria(String historia) {
        this.historia = historia;
    }

    public String getSalud() {
        return salud;
    }

    public void setSalud(String salud) {
        this.salud = salud;
    }
    
    public String getUbicacion() {
        return ubicacion;
    }

    public void setUbicacion(String ubicacion) {
        this.ubicacion = ubicacion;
    }
    
    public String getMascota() {
        return mascota;
    }

    public void setMascota(String mascota) {
        this.mascota = mascota;
    }

    public int getIdA() {
        return idA;
    }

    public void setIdA(int idA) {
        this.idA = idA;
    }

    public int getIdD() {
        return idD;
    }

    public void setIdD(int idD) {
        this.idD = idD;
    }

    public String getP1() {
        return p1;
    }

    public void setP1(String p1) {
        this.p1 = p1;
    }

    public String getP2() {
        return p2;
    }

    public void setP2(String p2) {
        this.p2 = p2;
    }

    public String getP3() {
        return p3;
    }

    public void setP3(String p3) {
        this.p3 = p3;
    }

    public String getP4() {
        return p4;
    }

    public void setP4(String p4) {
        this.p4 = p4;
    }

    public String getP5() {
        return p5;
    }

    public void setP5(String p5) {
        this.p5 = p5;
    }

    public String getP6() {
        return p6;
    }

    public void setP6(String p6) {
        this.p6 = p6;
    }

    public String getP7() {
        return p7;
    }

    public void setP7(String p7) {
        this.p7 = p7;
    }

    public String getP8() {
        return p8;
    }

    public void setP8(String p8) {
        this.p8 = p8;
    }

    public String getP9() {
        return p9;
    }

    public void setP9(String p9) {
        this.p9 = p9;
    }
    public String getUsuario() {
        return usuario;
    }

    public void setUsuario(String usuario) {
        this.usuario = usuario;
    }

    public String getTelefono() {
        return telefono;
    }

    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }

    public String getGenero() {
        return genero;
    }

    public void setGenero(String genero) {
        this.genero = genero;
    }

    public String getFecha_nac() {
        return fecha_nac;
    }

    public void setFecha_nac(String fecha_nac) {
        this.fecha_nac = fecha_nac;
    }

    public String getAp_pat() {
        return ap_pat;
    }

    public void setAp_pat(String ap_pat) {
        this.ap_pat = ap_pat;
    }

    public String getAp_mat() {
        return ap_mat;
    }

    public void setAp_mat(String ap_mat) {
        this.ap_mat = ap_mat;
    }

    public String getNombre_usu() {
        return nombre_usu;
    }

    public void setNombre_usu(String nombre_usu) {
        this.nombre_usu = nombre_usu;
    }

    public String getPass_usu() {
        return pass_usu;
    }

    public void setPass_usu(String pass_usu) {
        this.pass_usu = pass_usu;
    }

    public String getMail() {
        return mail;
    }

    public void setMail(String mail) {
        this.mail = mail;
    }
    
}
