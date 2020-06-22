package file;

import java.sql.DriverManager;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.sql.Connection;

public class ShareDAO {
	
private Connection conn;
	
	public ShareDAO() {
			  try {
				   String dbURL = "jdbc:mysql://localhost:3306/MYFILE?serverTimezone=Asia/Seoul&useSSL=false";
				   String dbID = "root";
				   String dbPassword = "root";
				   Class.forName("com.mysql.cj.jdbc.Driver");
				   conn = DriverManager.getConnection(dbURL, dbID, dbPassword);
			  } catch (Exception e) {
				   e.printStackTrace();
			  }
	}

			  public int upload(String fileName, String fileRealName) {
				  String SQL = "INSERT INTO MYFILE VALUES (?, ?)";
					try {
						   PreparedStatement pstmt = conn.prepareStatement(SQL);
						   pstmt.setString(1, fileName);
						   pstmt.setString(2, fileRealName);
						   return pstmt.executeUpdate();
					} catch(Exception e) {
						e.printStackTrace();
					}
					return -1;
			  }
			  
			  public int hit(String fileRealName) {
				  String SQL = "UPDATE MYFILE SET downloadCount = downloadCount + 1 "
						  + "WHERE fileRealName = ?";
					try {
						   PreparedStatement pstmt = conn.prepareStatement(SQL);
						   pstmt.setString(1, fileRealName);
						   return pstmt.executeUpdate();
					} catch(Exception e) {
						e.printStackTrace();
					}
					return -1;
			  }
			  
			  public ArrayList<ShareDTO> getList1() {
				  String SQL = "SELECT * FROM MYFILE";
				  ArrayList<ShareDTO> list = new ArrayList<ShareDTO>();
				  try {
					   PreparedStatement pstmt = conn.prepareStatement(SQL);
					   ResultSet rs = pstmt.executeQuery();
					   while(rs.next()) {
						   ShareDTO file = new ShareDTO(rs.getString(1), rs.getString(2));
						   list.add(file);   
					   }
				  } catch(Exception e) {
					e.printStackTrace();
				}
				  return list;
			  }

}
