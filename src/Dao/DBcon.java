package Dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class DBcon
{
    private  Connection c = null;
    private  ResultSet resultSet = null;
    private  Statement sql = null;
    public  void conWhichDB(String DBname)
    {


        try
        {
            // 一丶加载驱动
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            //二丶获取数据库连接对象
            c = DriverManager.getConnection
                    (
                            "jdbc:sqlserver://49.234.3.24:1433;DatabaseName=" + DBname,
                            "dc",
                            "cd159357."
                    );
        }
        catch(Exception e){ }


    }

    public ResultSet execQuerySQL(String SQL)
    {
        try
        {
            //三丶创建SQL命令
            sql = c.createStatement();
            //四丶执行
            resultSet = sql.executeQuery(SQL);
        }
        catch(Exception e){}
        return  resultSet;
    }
    public void execUpSQL(String SQL)
    {
        try
        {
            //三丶创建SQL命令
            sql = c.createStatement();
            //四丶执行
          sql.executeQuery(SQL);
        }
        catch(Exception e){}
    }
    public void execInSQL(String SQL)
    {
        try
        {
            //三丶创建SQL命令
            sql = c.createStatement();
            //四丶执行
            sql.execute(SQL);
        }
        catch(Exception e){}
    }
    public  void close()
    {
        try
        {
            c.close();
            sql.close();
            resultSet.close();
        }
        catch (Exception e){}
    }
}

