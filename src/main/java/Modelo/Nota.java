package Modelo;
public class Nota {
    int id, estado;
    String contenido, fecha;

    public Nota() {
    }

    public Nota(int id, int estado, String contenido, String fecha) {
        this.id = id;
        this.estado = estado;
        this.contenido = contenido;
        this.fecha = fecha;
    }


    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getContenido() {
        return contenido;
    }

    public void setContenido(String contenido) {
        this.contenido = contenido;
    }

    public String getFecha() {
        return fecha;
    }

    public void setFecha(String fecha) {
        this.fecha = fecha;
    }

    public int getEstado() {
        return estado;
    }

    public void setEstado(int estado) {
        this.estado = estado;
    }

    
}
