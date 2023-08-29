package mingle.product;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import util.JDBCUtil;

public class ProductDAO {
	private static ProductDAO dao = new ProductDAO();

	private ProductDAO() {
	}

	public static ProductDAO getInstance() {
		return dao;
	}
	
	public ProductVO getProductList(int pno) {
		ProductVO vo=null;
		Connection conn=JDBCUtil.getConnection();
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		String sql="select pname, price, content,savepath from producttbl where pno=?";
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, pno);
			rs=pstmt.executeQuery();
			if(rs.next()) {
				vo=new ProductVO(rs.getString("pname"),rs.getInt("price"),rs.getString("content"),rs.getString("savepath"));
			} 			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			JDBCUtil.close(conn, pstmt, rs);
		}		
		
		return vo;	
	}
	
}
