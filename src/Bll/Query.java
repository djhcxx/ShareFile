package Bll;

import Dao.DBcon;

import java.lang.reflect.Field;
import java.sql.ResultSet;
import java.util.ArrayList;

public class Query {

    public static ResultSet Result( String sql)
    {
        DBcon dBcon=new DBcon();
        dBcon.conWhichDB("Shop");
        ResultSet rs=dBcon.execQuerySQL(sql);
        dBcon.close();
        return rs;
    }
}
