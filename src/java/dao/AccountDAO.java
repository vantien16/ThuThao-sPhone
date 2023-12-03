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
public class AccountDAO {

    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public List<Account> getAllAccount() {
        List<Account> list = new ArrayList<>();
        try {
            conn = new DBcontext().getConnection();
            ps = conn.prepareStatement("select * from tblUsers");
            rs = ps.executeQuery();
            while (rs.next()) {
                Account a = new Account(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getBoolean(5));
                list.add(a);
            }
        } catch (Exception e) {
        }

        return list;
    }

    public List<Account> searchName(String name) {
        List<Account> list = new ArrayList<>();
        try {
            conn = new DBcontext().getConnection();
            ps = conn.prepareStatement("select * from tblUsers where fullName like ?");
            ps.setString(1, "%" + name + "%");
            rs = ps.executeQuery();
            while (rs.next()) {
                Account a = new Account(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getBoolean(5));
                list.add(a);
            }
        } catch (Exception e) {
        }
        return list;
    }

    public void delete(String id) {
        String query = "delete from [tblUsers] where userID=?";
        try {
            conn = new DBcontext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, id);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public Account getAccountByID(String id) {
        String query = "select * from [tblUsers] where userID=?";
        try {
            conn = new DBcontext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                Account a = new Account(rs.getString("userID"), rs.getString("password"), rs.getString("fullName"), rs.getString("roleID"), rs.getBoolean("status"));
                return a;
            }
        } catch (Exception e) {
        }
        return null;
    }

    public void updateAccount(String UserID, String Password, String FullName, String RoleID) {
        String query = "update [tblUsers] set password=?, fullName=?, roleID=? where userID=?;";
        try {
            conn = new DBcontext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, Password);
            ps.setString(2, FullName);
            ps.setString(3, RoleID);
            ps.setString(4, UserID);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public void insertAccount(String UserID, String Password, String FullName) {
        String query = "insert into tblUsers values(?,?,?,'US','1')";
        try {
//            String query = "INSERT INTO tblUsers (userID, password, fullName, roleID,status) " +
//                       "VALUES ('" + UserID + "', '" + Password + "', '" + FullName + "', 'US1'"+"', '1')";
            conn = new DBcontext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, UserID);
            ps.setString(2, Password);
            ps.setString(3, FullName);
            ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public boolean checkUser(String userID) {
        String query = "select * from [tblUsers] where userID=?";
        try {
            conn = new DBcontext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, userID);
            rs = ps.executeQuery();
            while (rs.next()) {
                return false;
            }
        } catch (Exception e) {
        }
        return true;
    }

}
