package Dao;

import java.sql.ResultSet;

public class Select {
  public static ResultSet execBookSelect(String str)
    {
        DBcon BC=new DBcon();
        BC.conWhichDB("BookSaleDB");
        String SQL="Select * from Book "+str;
        ResultSet rs=BC.execQuerySQL(SQL);
        BC.close();
        return  rs;
    }
}
