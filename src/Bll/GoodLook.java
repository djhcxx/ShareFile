package Bll;
import Dao.DBcon;

import java.lang.reflect.Type;
import java.rmi.activation.Activator;
import java.sql.*;
import java.util.ArrayList;
import Entity.*;
public class GoodLook {




    public  <T>  ArrayList<T> showgood( T t,String sql)
    {
        ArrayList<T> arrayList=new ArrayList<>();

        Class type=t.getClass();

        var prop=type.getField();
        DBcon dBcon=new DBcon();
        dBcon.conWhichDB("Shop");
        ResultSet rs=dBcon.execQuerySQL("Select * from Shop "+ sql);
        try {
            while (rs.next()) {
             Object obj=.newInstance();

            }
        }
        catch (Exception e){}
        return


    }
}
