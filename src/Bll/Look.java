package Bll;
import Dao.DBcon;
import Dao.DBcon.*;

import java.lang.reflect.Field;

import java.sql.*;
import java.util.ArrayList;
import Entity.*;
public class Look {
    public static   <T>   ArrayList<T> show( T t,String sql)
    {
        ArrayList<T> arrayList=new ArrayList<>();
        Class type=t.getClass();
        DBcon dBcon=new DBcon();
        Field[] f =type.getDeclaredFields();
        try {


        dBcon.conWhichDB("Shop");
        ResultSet rs=dBcon.execQuerySQL("Select * from Good "+ sql);

            while (rs.next()) {
                T o=(T)type.newInstance();
            for(int i=0;i<f.length;i++)
            {

                f[i].setAccessible(true);
                f[i].set(o,rs.getObject(f[i].getName()));
            }
                arrayList.add(o);
            }
        }
        catch (Exception e)
        {
            System.out.println("666");
        }
        return arrayList;


    }
}
