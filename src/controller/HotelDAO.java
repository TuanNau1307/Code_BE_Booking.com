/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package controller;

import java.math.BigDecimal;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import model.Hotel;
import model.RoomModel;


/**
 *
 * @author Tuan Nau
 */
public class HotelDAO {
    
    DAODB DAODB = new DAODB();
    public Connection conn = DAODB.DAO_DB();
    public ArrayList<Hotel> getListHotel() {
        ArrayList<Hotel> list = new ArrayList<>();
        String select = "Select * from T_KhachSan";
        try {
            PreparedStatement ps = conn.prepareStatement(select);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
              Hotel r = new Hotel();
                //doc du lieu tu sql ra java
                r.setMaKhachSan(rs.getInt("MaKhachSan"));
                r.setTenKhachSan(rs.getString("TenKhachSan"));
                r.setChatLuong(rs.getInt("ChatLuong"));
                r.setDanhGia(rs.getFloat("DanhGia"));
                r.setSoDanhGia(rs.getInt("SoDanhGia"));
                r.setDiaChi(rs.getString("DiaChi"));
                r.setAnh(rs.getString("Anh"));
                r.setLoai(rs.getString("Loai"));
                r.setMoTa(rs.getString("MoTa"));
                r.setMaDiaDiem(rs.getInt("MaDiaDiem"));
                //thêm vào trong danh sách
                list.add(r);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return list;
    }
    public ArrayList<Hotel> getListTKHotel(String id) {
        ArrayList<Hotel> list_TK = new ArrayList<>();
        try {
            String TK = "select * from T_KhachSan where MaKhachSan like ? or TenKhachSan like ? or DiaChi like ? ";
            PreparedStatement ps = conn.prepareStatement(TK);
            ps.setString(1, "%" + id + "%");
            ps.setString(2, "%" + id + "%");
            ps.setString(3, "%" + id + "%");
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Hotel r = new Hotel();
                //doc du lieu tu sql ra java
                r.setMaKhachSan(rs.getInt("MaKhachSan"));
                r.setTenKhachSan(rs.getString("TenKhachSan"));
                r.setChatLuong(rs.getInt("ChatLuong"));
                r.setDanhGia(rs.getFloat("DanhGia"));
                r.setSoDanhGia(rs.getInt("SoDanhGia"));
                r.setDiaChi(rs.getString("DiaChi"));
                r.setAnh(rs.getString("Anh"));
                r.setLoai(rs.getString("Loai"));
                r.setMoTa(rs.getString("MoTa"));
                r.setMaDiaDiem(rs.getInt("MaDiaDiem"));
                
                //thêm vào trong danh sách
                list_TK.add(r);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return list_TK;
    }
    public boolean addHotel(Hotel r) {
        String insert = "INSERT INTO T_KhachSan"
                + " VALUES(?,?,?,?,?,?,?,?,?) ";
        try {
            PreparedStatement ps = conn.prepareStatement(insert);
           // ps.setInt(1, r.getMaDichVu());
            //ps.setInt(1, r.getMaKhachSan());
            ps.setString(1, r.getTenKhachSan());
            ps.setInt(2, r.getChatLuong());
             ps.setFloat(3, r.getDanhGia());
              ps.setInt(4, r.getSoDanhGia());
              ps.setString(5, r.getDiaChi());
               ps.setString(6, r.getAnh());
                ps.setString(7, r.getLoai());
                ps.setString(8, r.getMoTa());
                ps.setInt(9, r.getMaDiaDiem()); 
            
            
            return ps.executeUpdate() > 0;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }
    public boolean editHotel(Hotel r, String id) {
        try {
           
            String editR = "update T_KhachSan  set TenKhachSan=?, ChatLuong=?,DanhGia=?, SoDanhGia=?, DiaChi=?,Anh=?,Loai=?,MoTa=?,MaDiaDiem=? where MaKhachSan=? ";
            PreparedStatement ps = conn.prepareStatement(editR);
            ps.setString(1, r.getTenKhachSan());
            ps.setInt(2, r.getChatLuong());
            ps.setFloat(3, r.getDanhGia());
            ps.setInt(4, r.getSoDanhGia());
            ps.setString(5, r.getDiaChi());
            ps.setString(6, r.getAnh());
            ps.setString(7,r.getLoai());
            ps.setString(8, r.getMoTa());
            ps.setInt(9,r.getMaDiaDiem());
            ps.setString(10, id); // id can sua = id sua  
            return ps.executeUpdate() > 0;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return true;
    }
    
}
