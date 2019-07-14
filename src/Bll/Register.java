package Bll;

import Dao.DBcon;

public class Register {
    public static  void customerRegister(String account,String email,String pwd,String nickname)
    {
        DBcon  db=new DBcon();
        db.conWhichDB("Shop");
        String sql="insert into Customer values( '"+account+"','"+email+"','"+pwd+"','"+nickname+"')";
        db.close();
    }
}
