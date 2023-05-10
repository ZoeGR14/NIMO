package Modelo;
public class Gerente {
    String asignado, estatus, fecha, cliente, descripcion, solucion, gerenteM;
    int id;
    public Gerente() {
    }

    public Gerente(String asignado, String estatus, String fecha, String cliente, String descripcion, String solucion, String gerenteS, int id) {
        this.asignado = asignado;
        this.estatus = estatus;
        this.fecha = fecha;
        this.cliente = cliente;
        this.descripcion = descripcion;
        this.solucion = solucion;
        this.gerenteM = gerenteS;
        this.id = id;
    }


    public String getAsignado() {
        return asignado;
    }

    public void setAsignado(String asignado) {
        this.asignado = asignado;
    }

    public String getEstatus() {
        return estatus;
    }

    public void setEstatus(String estatus) {
        this.estatus = estatus;
    }

    public String getFecha() {
        return fecha;
    }

    public void setFecha(String fecha) {
        this.fecha = fecha;
    }

    public String getCliente() {
        return cliente;
    }

    public void setCliente(String cliente) {
        this.cliente = cliente;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public String getSolucion() {
        return solucion;
    }

    public void setSolucion(String solucion) {
        this.solucion = solucion;
    }

    public String getGerenteM() {
        return gerenteM;
    }

    public void setGerenteM(String gerenteM) {
        this.gerenteM = gerenteM;
    }
    
    
    
}
