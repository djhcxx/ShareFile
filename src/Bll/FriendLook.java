package Bll;

import Dao.DBcon;
import  Entity.*;
import com.sun.jdi.Field;

import java.sql.ResultSet;
import java.util.ArrayList;

public class FriendLook {
    public  static ArrayList<Customer> Show(String customer)
    {
        ArrayList<Customer> arrayList=new ArrayList<>();
        DBcon dBcon=new DBcon();
        dBcon.conWhichDB("Shop");
        ResultSet rs=dBcon.execQuerySQL("Select faccount from Friend where selfaccout="+customer );
        String sql="Select * from Customer where ";
        try {
            while (rs.next()) {
                sql+=" account = "+rs.getString(1) +" and ";
            }
            sql+=" 1!=1 ";

            dBcon.execQuerySQL(sql);
            arrayList=Look.show(new Customer(),sql);
            return  arrayList;
        }
        catch (Exception e){}

    return null;
    }
}
