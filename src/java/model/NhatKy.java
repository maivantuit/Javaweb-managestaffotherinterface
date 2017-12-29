package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Vector;

/**
 *
 * @author Administrator
 */
public class NhatKy {
    private int logid;
    private int manv;
    private int mask;
    private String noidung;
    private String ngayhieuluc;

    public NhatKy() {
    }

    public NhatKy(int logid, int manv, int mask, String noidung, String ngayhieuluc) {
        this.logid = logid;
        this.manv = manv;
        this.mask = mask;
        this.noidung = noidung;
        this.ngayhieuluc = ngayhieuluc;
    }
    // lấy dữ liệu bảng Staff set vào method get and set:    
    public static Vector<NhatKy> getTatCaNhatky() {
        NhatKy st = new NhatKy();
        st = null;
        Vector<NhatKy> list = new Vector<NhatKy>();
        try {
          Class.forName("net.sourceforge.jtds.jdbc.Driver");
            String connectionURL = "jdbc:jtds:sqlserver://localhost:1433;databaseName=QLNS;user=sa;password=123";
            Connection connect = DriverManager.getConnection(connectionURL);
            Statement stmt = connect.createStatement();
            ResultSet rs = stmt.executeQuery("Select * from NhatKy");
 
            while (rs.next()) {
                NhatKy s = new NhatKy();
                s.setLogid(rs.getInt("LogID"));
                s.setManv(rs.getInt("MaNV"));// phải get lên mới set Attribute được.
                s.setMask(rs.getInt("MaSK"));
                s.setNoidung(rs.getString("NoiDung"));
                s.setNgayhieuluc(rs.getString("NgayHL"));                
                list.add(s);                
            }

        } catch (ClassNotFoundException ex) {
            System.out.println("" + ex.getMessage());
        } catch (SQLException ex) {
            System.out.println("" + ex.getMessage());
        } catch (Exception e) {
            System.out.println(" " + e.getMessage());
        }
        return list;
    }
    public int getLogid() {
        return logid;
    }

    public int getManv() {
        return manv;
    }

    public int getMask() {
        return mask;
    }

    public String getNoidung() {
        return noidung;
    }

    public String getNgayhieuluc() {
        return ngayhieuluc;
    }

    public void setLogid(int logid) {
        this.logid = logid;
    }

    public void setManv(int manv) {
        this.manv = manv;
    }

    public void setMask(int mask) {
        this.mask = mask;
    }

    public void setNoidung(String noidung) {
        this.noidung = noidung;
    }

    public void setNgayhieuluc(String ngayhieuluc) {
        this.ngayhieuluc = ngayhieuluc;
    }
    
}
