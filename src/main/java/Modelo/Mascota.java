package Modelo;

import java.io.InputStream;

public class Mascota {
    String nombre, raza, tipoRaza, nacimMasc, gustos, disgustos, sexo, tipoAnimal, alergias, color, idDuenio, estado;
    int peso, id;
    InputStream foto;
    
    int idA;
    String historia;
    String salud;
    String ubicacion;
    String mascota;
    
    public Mascota(){
    }

    public Mascota(String nombre, String raza, String tipoRaza, String nacimMasc, String gustos, String disgustos, String sexo, String tipoAnimal, String alergias, String color, String idDuenio, String estado, int peso, int id, InputStream foto, int idA, String historia, String salud, String ubicacion, String mascota) {
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
        this.idA = idA;
        this.historia = historia;
        this.salud = salud;
        this.ubicacion = ubicacion;
        this.mascota = mascota;
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

    public void setIA(int idA) {
        this.idA = idA;
    }
    
}
