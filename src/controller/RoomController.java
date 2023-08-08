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
import model.RoomModel;

public class RoomController {

    DAODB DAODB = new DAODB();
    public Connection conn = DAODB.DAO_DB();

    public ArrayList<RoomModel> getListRoom() {
        ArrayList<RoomModel> list = new ArrayList<>();
        String select = "select a.MaPhong,a.TenPhong,b.TenLoaiPhong,b.MoTa,b.SoGiuong,b.GiaPhong from T_Phong a,T_LoaiPhong b \n" +
"where a.MaLoaiPhong = b.MaLoaiPhong";
        try {
            PreparedStatement ps = conn.prepareStatement(select);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                RoomModel r = new RoomModel();
                //doc du lieu tu sql ra java
                r.setMaPhong(rs.getInt("MaPhong"));
                r.setTenPhong(rs.getString("TenPhong"));
                //r.setMaLoaiPhong(rs.getInt("MaLoaiPhong"));
                r.setTenLoaiPhong(rs.getString("TenLoaiPhong"));
                r.setMoTa(rs.getString("MoTa"));
                r.setSoGiuong(rs.getString("SoGiuong"));
                r.setGiaPhong(rs.getInt("GiaPhong"));
                //thêm vào trong danh sách
                list.add(r);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return list;
    }
    public ArrayList<RoomModel> getListLoaiPhong() {
        ArrayList<RoomModel> list = new ArrayList<>();
        String select = "select * from T_LoaiPhong";
        try {
            PreparedStatement ps = conn.prepareStatement(select);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                RoomModel r = new RoomModel();
                //doc du lieu tu sql ra java
                r.setMaLoaiPhong(rs.getInt("MaLoaiPhong"));
                //r.setTenLoaiPhong(rs.getString("TenLoaiPhong"));
                //r.setMaLoaiPhong(rs.getInt("MaLoaiPhong"));
                r.setTenLoaiPhong(rs.getString("TenLoaiPhong"));
                r.setMoTa(rs.getString("MoTa"));
                r.setSoGiuong(rs.getString("SoGiuong"));
                r.setSoNguoi(rs.getInt("SoNguoi"));
                r.setSoPhong(rs.getInt("SoPhong"));
                r.setGiaPhong(rs.getInt("GiaPhong"));
                r.setMaKhachSan(rs.getInt("MaKhachSan"));
                //thêm vào trong danh sách
                list.add(r);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return list;
    }
    public ArrayList<RoomModel> getListTKRoom(String id, String TypeR, String SG) {
        ArrayList<RoomModel> list_TK = new ArrayList<>();
        try {
            String TK = "select a.MaPhong,a.TenPhong,b.* from T_Phong a,T_LoaiPhong b where a.MaPhong like ? and b.TenLoaiPhong like ? and b.SoGiuong like ? and a.MaLoaiPhong =b.MaLoaiPhong";
            PreparedStatement ps = conn.prepareStatement(TK);
            ps.setString(1, "%" + id + "%");
            ps.setString(2, "%" + TypeR + "%");
            ps.setString(3, "%" + SG + "%");
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                RoomModel r = new RoomModel();
                //doc du lieu tu sql ra java
                r.setMaPhong(rs.getInt("MaPhong"));
                r.setTenPhong(rs.getString("TenPhong"));
                r.setTenLoaiPhong(rs.getString("TenLoaiPhong"));
                r.setMoTa(rs.getString("MoTa"));
                r.setSoGiuong(rs.getString("SoGiuong"));
                r.setGiaPhong(rs.getInt("GiaPhong"));
                
                //thêm vào trong danh sách
                list_TK.add(r);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return list_TK;
    }
    public ArrayList<RoomModel> getListTKLoaiPhong(String id, String TypeR, String SG) {
        ArrayList<RoomModel> list_TK = new ArrayList<>();
        try {
            String TK = "select * from T_LoaiPhong  where MaLoaiPhong like ? and TenLoaiPhong like ? and SoGiuong like ?";
            PreparedStatement ps = conn.prepareStatement(TK);
            ps.setString(1, "%" + id + "%");
            ps.setString(2, "%" + TypeR + "%");
            ps.setString(3, "%" + SG + "%");
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                RoomModel r = new RoomModel();
                //doc du lieu tu sql ra java
                r.setMaLoaiPhong(rs.getInt("MaLoaiPhong"));
                //r.setTenLoaiPhong(rs.getString("TenLoaiPhong"));
                //r.setMaLoaiPhong(rs.getInt("MaLoaiPhong"));
                r.setTenLoaiPhong(rs.getString("TenLoaiPhong"));
                r.setMoTa(rs.getString("MoTa"));
                r.setSoGiuong(rs.getString("SoGiuong"));
                r.setSoNguoi(rs.getInt("SoNguoi"));
                r.setSoPhong(rs.getInt("SoPhong"));
                r.setGiaPhong(rs.getInt("GiaPhong"));
                r.setMaKhachSan(rs.getInt("MaKhachSan"));
                //thêm vào trong danh sách
                list_TK.add(r);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return list_TK;
    }
    public boolean deleteRoom(String id) {
        try {
            String delete = "delete T_Phong where MaPhong =?";
            PreparedStatement ps = conn.prepareStatement(delete);
            ps.setString(1, id);
            return ps.executeUpdate() > 0;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return true;
    }
    public boolean deleteLoaiPhong(String id) {
        try {
            String delete = "delete T_LoaiPhong where MaLoaiPhong =?";
            PreparedStatement ps = conn.prepareStatement(delete);
            ps.setString(1, id);
            return ps.executeUpdate() > 0;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return true;
    }
    public boolean editRoom(RoomModel r, String id) {
        try {
            //Can them Trigger--------------------------------------------
            String editR = "update T_Phong a,T_LoaiPhong b set a.TenPhong=?, b.TenLoaiPhong=?, b.SoGiuong=?, b.GiaPhong=? where a.MaLoaiPhong = b.MaLoaiPhong and a.MaPhong =?";
            PreparedStatement ps = conn.prepareStatement(editR);
            ps.setString(1, r.getTenPhong());
            ps.setString(2, r.getTenLoaiPhong());
            ps.setString(3, r.getSoGiuong());
            ps.setBigDecimal(4, new BigDecimal(r.getGiaPhong()));
            ps.setString(5, id); // id can sua = id sua  
            return ps.executeUpdate() > 0;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return true;
    }
    public boolean editLoaiPhong(RoomModel r, String id) {
        try {
            //Can them Trigger--------------------------------------------
            String editR = "update T_LoaiPhong  set TenLoaiPhong=?, MoTa=?,SoGiuong=?, SoNguoi=?, SoPhong=?,GiaPhong=?,MaKhachSan=? where MaLoaiPhong=? ";
            PreparedStatement ps = conn.prepareStatement(editR);
            ps.setString(1, r.getTenLoaiPhong());
            ps.setString(2, r.getMoTa());
            ps.setString(3, r.getSoGiuong());
            ps.setInt(4, r.getSoNguoi());
            ps.setInt(5, r.getSoPhong());
            ps.setBigDecimal(6, new BigDecimal(r.getGiaPhong()));
            ps.setInt(7, r.getMaKhachSan());
            ps.setString(8, id); // id can sua = id sua  
            return ps.executeUpdate() > 0;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return true;
    }
    public boolean addRoom(RoomModel r) {
        //Can them Trigger----------------------------------------------------
        String insert = "INSERT INTO (ID_R, Ten_R, Loai_R, SoGiuong_R, Gia_R)"
                + " VALUES(?,?,?,?,?) ";
        try {
            PreparedStatement ps = conn.prepareStatement(insert);
            ps.setInt(1, r.getMaPhong());
            ps.setString(2, r.getTenPhong());
            ps.setString(3, r.getTenLoaiPhong());
            ps.setString(4, r.getSoGiuong());
            //ps.setFloat(5, r.getPrice());
            ps.setBigDecimal(5, new BigDecimal(r.getGiaPhong()));
            return ps.executeUpdate() > 0;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }
     public boolean addLoaiPhong(RoomModel r) {
        //Can them Trigger----------------------------------------------------
        String insert = "INSERT INTO T_LoaiPhong"
                + " VALUES(?,?,?,?,?,?,?) ";
        try {
            PreparedStatement ps = conn.prepareStatement(insert);
            //ps.setInt(1, r.getMaLoaiPhong());
            ps.setString(1, r.getTenLoaiPhong());
            ps.setString(2, r.getMoTa());
            ps.setString(3, r.getSoGiuong());
            ps.setInt(4, r.getSoNguoi());
            ps.setInt(5, r.getSoPhong());
            //ps.setInt(7,r.getGiaPhong());
            ps.setBigDecimal(6, new BigDecimal(r.getGiaPhong()));
            ps.setInt(7, r.getMaKhachSan());
            //ps.setFloat(5, r.getPrice());
            //ps.setBigDecimal(5, new BigDecimal(r.getGiaPhong()));
            return ps.executeUpdate() > 0;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }
    //Sap xep theo gia giam---------------------------------------------------------------
    public ArrayList<RoomModel> getListCBBSX1() {
        ArrayList<RoomModel> list1 = new ArrayList<>();
        String select = "select * from T_Phong a,T_LoaiPhong b where a.MaLoaiPhong=b.MaLoaiPhong order by a.MaPhong desc";
        try {
            PreparedStatement ps = conn.prepareStatement(select);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                RoomModel r = new RoomModel();
                //doc du lieu tu sql ra java
                r.setMaPhong(rs.getInt("MaPhong"));
                r.setTenPhong(rs.getString("TenPhong"));
                r.setTenLoaiPhong(rs.getString("TenLoaiPhong"));
                r.setMoTa(rs.getString("MoTa"));
                
                r.setSoGiuong(rs.getString("SoGiuong"));
                r.setGiaPhong(rs.getInt("GiaPhong"));
                //thêm vào trong danh sách
                list1.add(r);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return list1;
    }

    //Sap xep theo so giuong
    public ArrayList<RoomModel> getListCBBSX2() {
        ArrayList<RoomModel> list2 = new ArrayList<>();
        String select = "select * from T_Phong a,T_LoaiPhong b where a.MaLoaiPhong=b.MaLoaiPhong order by b.SoGiuong asc";
        try {
            PreparedStatement ps = conn.prepareStatement(select);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                RoomModel r = new RoomModel();
                //doc du lieu tu sql ra java
                r.setMaPhong(rs.getInt("MaPhong"));
                r.setTenPhong(rs.getString("TenPhong"));
                r.setTenLoaiPhong(rs.getString("TenLoaiPhong"));
                r.setMoTa(rs.getString("MoTa"));
                
                r.setSoGiuong(rs.getString("SoGiuong"));
                r.setGiaPhong(rs.getInt("GiaPhong"));
                //thêm vào trong danh sách
                list2.add(r);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return list2;
    }

    //Sap xep thep gia tang
    public ArrayList<RoomModel> getListCBBSX3() {
        ArrayList<RoomModel> list3 = new ArrayList<>();
        String select = "select * from T_Phong a,T_LoaiPhong b where a.MaLoaiPhong=b.MaLoaiPhong order by b.GiaPhong asc";
        try {
            PreparedStatement ps = conn.prepareStatement(select);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                RoomModel r = new RoomModel();
                //doc du lieu tu sql ra java
                r.setMaPhong(rs.getInt("MaPhong"));
                r.setTenPhong(rs.getString("TenPhong"));
                r.setTenLoaiPhong(rs.getString("TenLoaiPhong"));
                r.setMoTa(rs.getString("MoTa"));
                
                r.setSoGiuong(rs.getString("SoGiuong"));
                r.setGiaPhong(rs.getInt("GiaPhong"));
                //thêm vào trong danh sách
                list3.add(r);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return list3;
    }

    public ArrayList<RoomModel> getListCBBSX4() {
        ArrayList<RoomModel> list4 = new ArrayList<>();
        String select = "select * from T_Phong a,T_LoaiPhong b where a.MaLoaiPhong=b.MaLoaiPhong order by b.TenLoaiPhong asc";
        try {
            PreparedStatement ps = conn.prepareStatement(select);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                RoomModel r = new RoomModel();
                //doc du lieu tu sql ra java
                r.setMaPhong(rs.getInt("MaPhong"));
                r.setTenPhong(rs.getString("TenPhong"));
                r.setTenLoaiPhong(rs.getString("TenLoaiPhong"));
                r.setMoTa(rs.getString("MoTa"));
                
                r.setSoGiuong(rs.getString("SoGiuong"));
                r.setGiaPhong(rs.getInt("GiaPhong"));
                //thêm vào trong danh sách
                list4.add(r);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return list4;
    }


    

    
    
    
}
