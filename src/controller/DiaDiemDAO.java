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
import model.DiaDiem;
import model.RoomModel;

/**
 *
 * @author Tuan Nau
 */
public class DiaDiemDAO {
    DAODB DAODB = new DAODB();
    public Connection conn = DAODB.DAO_DB();
    
    public ArrayList<DiaDiem> getListDiaDiem(){
        ArrayList<DiaDiem> list = new ArrayList<>();
        String s = "select * from T_DiaDiem";
        try {
            PreparedStatement ps = conn.prepareStatement(s);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                DiaDiem r = new DiaDiem();
                //doc du lieu tu sql ra java
                r.setMaDiaDiem(rs.getInt("MaDiaDiem"));
                r.setTenDiaDiem(rs.getString("TenDiaDiem"));
                r.setAnh(rs.getString("Anh"));
                r.setLoaiDiaDiem(rs.getString("LoaiDiaDiem"));
                
                //thêm vào trong danh sách
                list.add(r);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return list;
        
    }
    public ArrayList<DiaDiem> getListTK(String tk) {
        ArrayList<DiaDiem> list_TK = new ArrayList<>();
        try {
            String TK = "select * from T_DiaDiem where MaDiaDiem like ? or TenDiaDiem like ? or LoaiDiaDiem like ?";
            PreparedStatement ps = conn.prepareStatement(TK);
            ps.setString(1, "%" + tk + "%");
            ps.setString(2, "%" + tk + "%");
            ps.setString(3, "%" + tk + "%");
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                DiaDiem r = new DiaDiem();
                //doc du lieu tu sql ra java
                r.setMaDiaDiem(rs.getInt("MaDiaDiem"));
                r.setTenDiaDiem(rs.getString("TenDiaDiem"));
                r.setLoaiDiaDiem(rs.getString("LoaiDiaDiem"));
                r.setAnh(rs.getString("Anh"));
                
                //thêm vào trong danh sách
                list_TK.add(r);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return list_TK;
    }
    public boolean add(DiaDiem r) {
        //Can them Trigger----------------------------------------------------
        String insert = "INSERT INTO T_DiaDiem(TenDiaDiem, Anh, LoaiDiaDiem)"
                + " VALUES(?,?,?) ";
        try {
            PreparedStatement ps = conn.prepareStatement(insert);
            //ps.setInt(1, r.getMaDiaDiem());
            ps.setString(1, r.getTenDiaDiem());
            ps.setString(2, r.getAnh());
            ps.setString(3, r.getLoaiDiaDiem());
            return ps.executeUpdate() > 0;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }
    public boolean edit(DiaDiem r, String id) {
        try {
            //Can them Trigger--------------------------------------------
            String editR = "update T_DiaDiem set TenDiaDiem=?, Anh=?, LoaiDiaDiem=? where MaDiaDiem=?";
            PreparedStatement ps = conn.prepareStatement(editR);
            ps.setString(1, r.getTenDiaDiem());
            ps.setString(2, r.getAnh());
            ps.setString(3, r.getLoaiDiaDiem());

            ps.setString(4, id); // id can sua = id sua  
            return ps.executeUpdate() > 0;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return true;
    }
    public boolean delete(String id) {
        try {
            String delete = "delete T_DiaDiem where MaDiaDiem =?";
            PreparedStatement ps = conn.prepareStatement(delete);
            ps.setString(1, id);
            return ps.executeUpdate() > 0;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return true;
    }
    
}
