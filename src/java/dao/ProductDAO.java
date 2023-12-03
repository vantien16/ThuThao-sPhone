/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import context.DBcontext;
import entity.Product;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author ADMIN
 */
public class ProductDAO {

    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public List<Product> getAllProduct() {
        List<Product> list = new ArrayList();
        try {
            String query = "select*from tblPhones";
            conn = new DBcontext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                Product a = new Product(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getInt(5), rs.getFloat(6), rs.getInt(7), rs.getString(8));
                list.add(a);
            }
        } catch (Exception e) {
        }
        return list;
    }

    public List<Product> searchName(String name) {
        List<Product> list = new ArrayList();
        try {
            String query = "select*from tblPhones where name like ?";
            conn = new DBcontext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1,"%"+ name+"%");
            rs = ps.executeQuery();
            while (rs.next()) {
                Product a = new Product(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getInt(5), rs.getFloat(6), rs.getInt(7), rs.getString(8));
                list.add(a);
            }
        } catch (Exception e) {
        }

        return list;
    }

    public List<Product> get4Random() {
        List<Product> list = new ArrayList();
        try {
            String query = "SELECT TOP 4 * FROM tblPhones ORDER BY NEWID();";
            conn = new DBcontext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                Product a = new Product(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getInt(5), rs.getFloat(6), rs.getInt(7), rs.getString(8));
                list.add(a);
            }
        } catch (Exception e) {
        }
        return list;
    }

    public Product getProductById(String id) {
        List<Product> list = new ArrayList();
        try {
            String query = "select*from tblPhones where id=?";
            conn = new DBcontext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                Product a = new Product(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getInt(5), rs.getFloat(6), rs.getInt(7), rs.getString(8));
                return a;
            }
        } catch (Exception e) {
        }
        return null;
    }

    public boolean checkProduct(String id, String name) {
        try {
            String query = "select * from [tblPhones] where id=? or name=?";
            conn = new DBcontext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, id);
            ps.setString(2, name);
            rs = ps.executeQuery();
            if (rs.next()) {
                return true;
            }
        } catch (Exception e) {
            return false;
        }
        return false;
    }

    public void addProduct(String id, String name, String description, String configuration, int manufacturing_year, float price, int quantity, String url) {
        try {
            String query = "insert into [tblPhones] values(?,?,?,?,?,?,?,?)";
            conn = new DBcontext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, id);
            ps.setString(2, name);
            ps.setString(3, description);
            ps.setString(4, configuration);
            ps.setInt(5, manufacturing_year);
            ps.setFloat(6, price);
            ps.setInt(7, quantity);
            ps.setString(8, url);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public void deleteProduct(String id) {
        try {
            String query = "delete from tblPhones where id=?";
            conn = new DBcontext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, id);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public List<Product> searchByName(String name) {
        List<Product> list = new ArrayList();
        try {
            String query = "select * from tblPhones where name like ?";
            conn = new DBcontext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, '%' + name + '%');
            rs = ps.executeQuery();
            while (rs.next()) {
                Product a = new Product(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getInt(5), rs.getFloat(6), rs.getInt(7), rs.getString(8));
                list.add(a);
            }
        } catch (Exception e) {
        }
        return list;

    }

    public void updatePhone(String id, String name, String des, String conf, int manu, float price, int quantity, String url) {
        try {
            String query = "update [tblPhones] set name=?,description=?,configuration=?,manufacturing_year=?,price=?,quantity=?,url=? where id=?";
            conn = new DBcontext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, name);
            ps.setString(2, des);
            ps.setString(3, conf);
            ps.setInt(4, manu);
            ps.setFloat(5, price);
            ps.setInt(6, quantity);
            ps.setString(7, url);
            ps.setString(8, id);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }
}
