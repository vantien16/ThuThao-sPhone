
import dao.AccountDAO;
import dao.ProductDAO;
import entity.Account;
import entity.Product;
import java.util.List;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author ADMIN
 */
public class test {
    public static void main(String[] args) {
        ProductDAO dao = new ProductDAO();
        Product a =dao.getProductById("P01");
        System.out.println(a);
//        dao.updatePhone("P00", "11111111", "iPhone 12 Pro - Thiet ke sang trong, hieu nang manh me va camera chuyen nghiep.", "Chip A14 Bionic, man hinh OLED, RAM 6GB, bo nho trong 128GB/256GB/512GB, camera sau 12MP+12MP+12MP, camera truoc 12MP	", 111, 33333333, 333, "qqqqqqqq");
//        System.out.println(dao.getAccountByID("admin"));
//            dao.updateAccount(UserID, Password, FullName, RoleID);
    }
}
