/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package controller;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import model.DonDatPhong;
import model.Hotel;
import model.TaiKhoan;


/**
 *
 * @author Tuan Nau
 */
public class TaiKhoanDAO {
    
    DAODB DAODB = new DAODB();
    public Connection conn = DAODB.DAO_DB();
    public ArrayList<TaiKhoan> getListAccout() {
        ArrayList<TaiKhoan> list = new ArrayList<>();
        String select = "Select * from T_TaiKhoan";
        try {
            PreparedStatement ps = conn.prepareStatement(select);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
              TaiKhoan r = new TaiKhoan();
                //doc du lieu tu sql ra java
                r.setMaTaiKhoan(rs.getInt("MaTaiKhoan"));
                r.setTenDangNhap(rs.getString("TenDangNhap"));
                r.setMatKhau(rs.getString("MatKhau"));
                r.setEmail(rs.getString("Email"));
                r.setHoTen(rs.getString("HoTen"));
               
                
                list.add(r);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return list;
    }
    
    
}
