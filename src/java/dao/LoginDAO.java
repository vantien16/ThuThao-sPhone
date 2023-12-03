/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import context.DBcontext;
import entity.Account;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author ADMIN
 */
public class LoginDAO {

    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public Account checkLogin(String user, String pass) {

        try {
            String query = "Select * from [tblUsers] where userID=? and password=?";
//            String query = "insert into account values(?,?)";
            conn = new DBcontext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, user);
            ps.setString(2, pass);
            rs = ps.executeQuery();
            while (rs.next()) {
                String roleID = rs.getString("roleID");
                String fullName = rs.getString("fullName");
                boolean status = rs.getBoolean("status");

                Account a = new Account(rs.getString(1), rs.getString(2), fullName, roleID,status);
                return a;
            }
        } catch (Exception e) {
        }
        return null;
    }
}
