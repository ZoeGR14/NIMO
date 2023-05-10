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
public class Mantenimiento {
    int id_reporte;
    String solucion, fecha_hora, encargado, estatus, descripcion, cliente;
    public Mantenimiento(){
    }

    public Mantenimiento(int id_reporte, String solucion, String fecha_hora, String encargado, String estatus, String descripcion, String cliente) {
        this.id_reporte = id_reporte;
        this.solucion = solucion;
        this.fecha_hora = fecha_hora;
        this.encargado = encargado;
        this.estatus = estatus;
        this.descripcion = descripcion;
        this.cliente = cliente;
    }

    public int getId_reporte() {
        return id_reporte;
    }

    public void setId_reporte(int id_reporte) {
        this.id_reporte = id_reporte;
    }

    public String getSolucion() {
        return solucion;
    }

    public void setSolucion(String solucion) {
        this.solucion = solucion;
    }

    public String getFecha_hora() {
        return fecha_hora;
    }

    public void setFecha_hora(String fecha_hora) {
        this.fecha_hora = fecha_hora;
    }

    public String getEncargado() {
        return encargado;
    }

    public void setEncargado(String encargado) {
        this.encargado = encargado;
    }

    public String getEstatus() {
        return estatus;
    }

    public void setEstatus(String estatus) {
        this.estatus = estatus;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public String getCliente() {
        return cliente;
    }

    public void setCliente(String cliente) {
        this.cliente = cliente;
    }
    
}
