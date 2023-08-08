/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.util.Date;

/**
 *
 * @author Tuan Nau
 */
public class DonDatPhong {
    private String GhiChu;
    private Date NgayCheckIn, NgayCheckout;
    private int MaDat,MaTaikhoan,MaPhong;

    public DonDatPhong() {
    }

    
    public String getGhiChu() {
        return GhiChu;
    }

    public void setGhiChu(String GhiChu) {
        this.GhiChu = GhiChu;
    }

    public Date getNgayCheckIn() {
        return NgayCheckIn;
    }

    public void setNgayCheckIn(Date NgayCheckIn) {
        this.NgayCheckIn = NgayCheckIn;
    }

    public Date getNgayCheckout() {
        return NgayCheckout;
    }

    public void setNgayCheckout(Date NgayCheckout) {
        this.NgayCheckout = NgayCheckout;
    }

    public int getMaDat() {
        return MaDat;
    }

    public void setMaDat(int MaDat) {
        this.MaDat = MaDat;
    }

    public int getMaTaikhoan() {
        return MaTaikhoan;
    }

    public void setMaTaikhoan(int MaTaikhoan) {
        this.MaTaikhoan = MaTaikhoan;
    }

    public int getMaPhong() {
        return MaPhong;
    }

    public void setMaPhong(int MaPhong) {
        this.MaPhong = MaPhong;
    }
    
    
    
}
