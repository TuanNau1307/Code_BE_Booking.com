/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package controller;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import model.Service_T;
/**
 *
 * @author Tuan Nau
 */
public class ServiceDAO_T {
     DAODB DAODB = new DAODB();
    public Connection conn = DAODB.DAO_DB();


     public ArrayList<Service_T> getListService() {
        ArrayList<Service_T> list = new ArrayList<>();
        String select = "select MaDichVu,TenDichVu from T_DichVu";
        try {
            PreparedStatement ps = conn.prepareStatement(select);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Service_T r = new Service_T();
                r.setMaDichVu(rs.getInt("MaDichVu"));
                r.setTenDichVu(rs.getString("TenDichVu"));
        
                //thêm vào trong danh sách
                list.add(r);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return list;
    }
     public ArrayList<Service_T> getListServicetk(String tk) {
        ArrayList<Service_T> list_TK = new ArrayList<>();
        try {
            String TK = "select * from T_DichVu where MaDichVu like ? or TenDichVu like ?";
            PreparedStatement ps = conn.prepareStatement(TK);
            ps.setString(1, "%" + tk + "%");
            ps.setString(2, "%" + tk + "%");
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Service_T DV = new Service_T();
                //doc du lieu tu sql ra java
                DV.setMaDichVu(rs.getInt("MaDichVu"));
                DV.setTenDichVu(rs.getString("TenDichVu"));
    
             
                //thêm vào trong danh sách
                list_TK.add(DV);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return list_TK;
    }
      public boolean deleteService(String id) {
        try {
            String delete = "delete T_DichVu where MaDichVu = ?";
            PreparedStatement ps = conn.prepareStatement(delete);
            ps.setString(1, id);
            return ps.executeUpdate() > 0;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return true;
    }
      public boolean editService(Service_T r, String id) {
        try {
            String editR = "Update T_DichVu set TenDichVu= ? where MaDichVu= ?";
            PreparedStatement ps = conn.prepareStatement(editR);
            ps.setString(1, r.getTenDichVu());
            
            ps.setString(2, id);
            return ps.executeUpdate() > 0;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return true;
    }
       public Service_T getSerivce(String id) {
        Service_T s = new Service_T();
        String get = "select * from T_DichVu where MaDichVu = ?";
        try {
            PreparedStatement ps = conn.prepareStatement(get);
            ps.setString(1, id);
            ResultSet rs = ps.executeQuery();
            rs.next();
            s.setMaDichVu(rs.getInt("MaDichVu"));
            s.setTenDichVu(rs.getString("TenDichVu"));
        } catch (Exception e) {
            e.printStackTrace();
        }

        return s;
    }
//       public int getServiceId() {
//        int id = 0;
//        String getMaxId = "select max(MaDichVu) as MAX_ID from T_DichVu";
//        try {
//            PreparedStatement ps = conn.prepareStatement(getMaxId);
//            ResultSet rs = ps.executeQuery();
//            rs.next();
//            id = rs.getInt("MAX_ID");
//        } catch (Exception e) {
//            e.printStackTrace();
//        }
//
//        return id + 1;
//    }
       public boolean addService(Service_T r) {
        String insert = "INSERT INTO T_DichVu(TenDichVu)"
                + " VALUES(?) ";
        try {
            PreparedStatement ps = conn.prepareStatement(insert);
           // ps.setInt(1, r.getMaDichVu());
            ps.setString(1, r.getTenDichVu());
            
            return ps.executeUpdate() > 0;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }
}
