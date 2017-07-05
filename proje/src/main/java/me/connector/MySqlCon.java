package me.connector;

import me.models.Form;

import java.sql.Connection;
import java.sql.DatabaseMetaData;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.io.IOException;
import java.sql.*;

/**
 * Created by Aos on 24.06.2017.
 */
public class MySqlCon {
    // JDBC driver name and database URL
    static final String JDBC_DRIVER = "com.mysql.cj.jdbc.Driver";
    static final String DB_URL = "jdbc:mysql://localhost?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC";

    //  Database credentials
    static final String USER = "root";
    static final String PASS = "";

    private Connection conn;


    public  MySqlCon(){
        Statement stmt = null;


        try {

            Class.forName(JDBC_DRIVER);
            conn = DriverManager.getConnection(DB_URL,USER,PASS);

        } catch (SQLException e) {
            e.printStackTrace();
        }catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
    }



    public boolean checkDB(){
        String dbName="bulutmd";

        try{
            Class.forName(JDBC_DRIVER);


            conn = DriverManager.getConnection("jdbc:mysql://localhost?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC", "root", "");

            ResultSet resultSet = conn.getMetaData().getCatalogs();

            while (resultSet.next()) {

                String databaseName = resultSet.getString(1);
                if(databaseName.equals(dbName)){
                    return true;
                }
            }
            resultSet.close();
            conn.close();

        }
        catch(Exception e){
            e.printStackTrace();
        }

        return false;
    }

    public void createDB() throws ClassNotFoundException{
        try{
            if(!checkDB()){
                Class.forName(JDBC_DRIVER);
                conn = DriverManager.getConnection("jdbc:mysql://localhost?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC", "root", "");
                Statement s =conn.createStatement();
                s.executeUpdate("CREATE DATABASE bulutmd");
            }
            conn.close();

        }
        catch(SQLException ex){
            ex.printStackTrace();
        }
    }

    public boolean checkTable() throws ClassNotFoundException{
        boolean result=false;
        try{
            Class.forName(JDBC_DRIVER);


            conn = DriverManager.getConnection("jdbc:mysql://localhost/bulutmd?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC", "root", "");
            DatabaseMetaData dbm = conn.getMetaData();

            ResultSet tables = dbm.getTables(null, null, "basvuruform", null);
            if (tables.next()) {
                result=true;
            }
            else {
                result=false;
            }
            conn.close();
        }
        catch(SQLException ex){
            ex.printStackTrace();
        }
        return result;
    }


    public void createTable() throws ClassNotFoundException{

        createDB();
        if(!checkTable()){
            try{
                Class.forName(JDBC_DRIVER);
                conn = DriverManager.getConnection("jdbc:mysql://localhost/bulutmd?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC", "root", "");
                Statement s =conn.createStatement();
                s.executeUpdate("CREATE TABLE basvuruform ( `name` varchar(100) NOT NULL, `tc` varchar(11) NOT NULL, `adres` varchar(2000) NOT NULL,`tel` varchar(30) NOT NULL, `email` varchar(1000) NOT NULL, `dtarih` date NOT NULL, `per` varchar(1000) , `tercih` varchar(1000) , `il` varchar(200) , `yat` int(11) , `ek` varchar(3000),  PRIMARY KEY (`tc`), UNIQUE KEY `tc` (`tc`)) ENGINE=InnoDB  CHARSET=utf8 COLLATE utf8_turkish_ci;");
                conn.close();
            }catch(SQLException ex){ ex.printStackTrace();}
        }



    }



    public String addTable(Form basvuru) throws ClassNotFoundException{

        String message;
        try {
            createTable();
            System.out.println("geldi2");


            Class.forName(JDBC_DRIVER);
            conn = DriverManager.getConnection("jdbc:mysql://localhost/bulutmd?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC", "root", "");

            PreparedStatement statement=
                    conn.prepareStatement("INSERT INTO basvuruform (`name`,tc,adres,tel,email,dtarih,per,tercih,il,yat,ek) VALUES(?,?,?,?,?,?,?,?,?,?,?)");

            statement.setString(1, basvuru.getName());
            statement.setString(2, basvuru.getTc());
            statement.setString(3, basvuru.getAdres());
            statement.setString(4, basvuru.getTel());
            statement.setString(5, basvuru.getEmail());
            statement.setDate(6, basvuru.getDtarih());
            statement.setString(7, basvuru.getPer());
            statement.setString(8, basvuru.getTercih());
            statement.setString(9, basvuru.getIl());
            statement.setString(10, basvuru.getYat());
            statement.setString(11, basvuru.getEk());
            statement.execute();
            System.out.println("geldi3");



            conn.close();
            message= "Formunuz başarılı bir şekilde kaydedilmiştir.";
        } catch (SQLException e) {

            message="bir hata oluştu <br>"+e.getMessage();
            e.printStackTrace();}

        return message;
    }
}
