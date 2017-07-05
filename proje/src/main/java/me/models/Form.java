package me.models;


import java.util.Calendar;
import java.sql.Date;

/**
 * Created by Aos on 24.06.2017.
 */
public class Form {

     String name;
     String tc;
     String adres;
     String tel;
     String email;
     Date dtarih;
    String per;
    String tercih;
    String il;
    String yat;
    String ek;
    String onay;


     public String message="";
     public boolean formHata;



    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getTc() {
        return tc;
    }

    public void setTc(String tc) {
        this.tc = tc;
    }

    public String getAdres() {
        return adres;
    }

    public void setAdres(String adres) {
        this.adres = adres;
    }

    public String getTel() {
        return tel;
    }

    public void setTel(String tel) {
        this.tel = tel;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public Date getDtarih() {
        return dtarih;
    }

    public void setDtarih(Date dtarih) {
        this.dtarih = dtarih;
    }

    public String getPer() {
        return per;
    }

    public void setPer(String per) {
        this.per = per;
    }

    public String getTercih() {
        return tercih;
    }

    public void setTercih(String tercih) {
        this.tercih = tercih;
    }

    public String getIl() {
        return il;
    }

    public void setIl(String il) {
        this.il = il;
    }

    public String getYat() {
        return yat;
    }

    public void setYat(String yat) {
        this.yat = yat;
    }

    public String getEk() {
        return ek;
    }

    public void setEk(String ek) {
        this.ek = ek;
    }

    public String getOnay() {
        return onay;
    }

    public void setOnay(String onay) {
        this.onay = onay;
    }

    public Form get_validated(){
        try{

      formHata = false;

        }catch(NumberFormatException ex){
           ex.printStackTrace();

        }


        return this;
    }
}
