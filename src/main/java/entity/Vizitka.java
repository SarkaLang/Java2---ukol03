package entity;

public class Vizitka {
    private String jmeno;
    private String firma;
    private String ulice;
    private String obecPsc;
    private String celaAdresa;

    private String mail;
   private String telefon;
   private String  web;

   public Vizitka() {

   }

   public Vizitka (String jmeno, String firma, String ulice, String obecPsc, String celaAdresa,
                   String mail, String telefon, String web) {
       this.jmeno = jmeno;
       this.firma = firma;
       this.ulice = ulice;
       this.obecPsc = obecPsc;
       this.celaAdresa = ulice + ", " + obecPsc;
       this.mail = mail;
       this.telefon = telefon;
       this.web = web;

   }

    public String getCelaAdresa() {
        return celaAdresa;
    }

    public void setCelaAdresa(String celaAdresa) {
        this.celaAdresa = celaAdresa;
    }


    public String getJmeno() {
        return jmeno;
    }

    public void setJmeno(String jmeno) {
        this.jmeno = jmeno;
    }

    public String getFirma() {
        return firma;
    }

    public void setFirma(String firma) {
        this.firma = firma;
    }

    public String getUlice() {
        return ulice;
    }

    public void setUlice(String ulice) {
        this.ulice = ulice;
    }

    public String getMail() {
        return mail;
    }

    public void setMail(String mail) {
        this.mail = mail;
    }

    public String getTelefon() {
        return telefon;
    }

    public void setTelefon(String telefon) {
        this.telefon = telefon;
    }

    public String getWeb() {
        return web;
    }

    public void setWeb(String web) {
        this.web = web;
    }

    public String getObecPsc() {
        return obecPsc;
    }

    public void setObecPsc(String obecPsc) {
        this.obecPsc = obecPsc;
    }
}
