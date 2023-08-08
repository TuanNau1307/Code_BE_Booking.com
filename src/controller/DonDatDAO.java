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


/**
 *
 * @author Tuan Nau
 */
public class DonDatDAO {
    
    DAODB DAODB = new DAODB();
    public Connection conn = DAODB.DAO_DB();
    public ArrayList<DonDatPhong> getListBill() {
        ArrayList<DonDatPhong> list = new ArrayList<>();
        String select = "Select * from T_DonDatPhong";
        try {
            PreparedStatement ps = conn.prepareStatement(select);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
              DonDatPhong r = new DonDatPhong();
                //doc du lieu tu sql ra java
                r.setMaDat(rs.getInt("MaDat"));
                r.setMaTaikhoan(rs.getInt("MaTaiKhoan"));
                r.setMaPhong(rs.getInt("MaPhong"));
                r.setNgayCheckIn(rs.getDate("NgayCheckin"));
                r.setNgayCheckout(rs.getDate("NgayCheckout"));
                r.setGhiChu(rs.getString("GhiChu"));
                
                list.add(r);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return list;
    }
    
    
}
