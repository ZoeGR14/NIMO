package envioCorreos;

public class setget_corre {
    private String correi;

    public String getCorrei() {
        return correi;
    }

    public void setCorrei(String correi) {
        this.correi = correi;
    }
    
    public void Manda (){
        enviar_corr enviito = new enviar_corr();
        enviito.transfer_mail(correi);

    }
}
    
    

