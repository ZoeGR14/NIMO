/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo;

/**
 *
 * @author jwqui
 */
public class DarAdop {
    int id;
    String historia;
    String salud;
    String ubicacion;
    String mascota;

    public DarAdop() {
    }

    public DarAdop(int id, String historia, String salud, String ubicacion, String mascota) {
        this.id = id;
        this.historia = historia;
        this.salud = salud;
        this.ubicacion = ubicacion;
        this.mascota = mascota;
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

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }
    
}
