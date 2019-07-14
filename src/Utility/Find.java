package Utility;

public class Find {

    public  static String FindIsLogin( javax.servlet.http.Cookie[] Ck)
    {
        int i;
        for ( i=0;i<Ck.length;i++) //看有没有这个ID
        {
            if (Ck[i].getName().equals("account")) //有就添加
            {
              return Ck[i].getValue().toString();
            }
        }
        return  null;
    }
}

