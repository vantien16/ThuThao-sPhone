/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package context;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 *
 * @author ADMIN
 */
public class DBcontext {
    public Connection getConnection() throws Exception{
        String url= "jdbc:sqlserver://" + serverName + ":" + portNumber +"\\"+instance+";databaseName="+dbName+"?useUnicode=true;characterEncoding=utf-8";
        if(instance ==null ||instance.trim().isEmpty()){
            url="jdbc:sqlserver://"+ serverName + ":" + portNumber + ";databaseName="+dbName;
        }
        Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
        return DriverManager.getConnection(url, userID,password);
    }
    private final String serverName="DESKTOP-9ECS51F\\SQLEXPRESS";
    private final String dbName="ASM";
    private final String portNumber="1433";
    private final String instance="";
    private final String userID="sa";
    private final String password="12345";
    public static void main(String[] args) {
        try {
            System.out.println(new DBcontext().getConnection());
        } catch (Exception e) {
        }
    }
}
