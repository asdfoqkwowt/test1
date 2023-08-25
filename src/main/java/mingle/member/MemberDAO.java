package mingle.member;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import util.JDBCUtil;

public class MemberDAO {
	
	private static MemberDAO dao=new MemberDAO();
	private MemberDAO() {}
	public static MemberDAO getInstance() {
		return dao;
	}
	// login 메   아이디 , 이름 , 등급만 나오게
	public MemberVO login(String id, String pwd) {
		MemberVO vo=null;
		Connection conn=JDBCUtil.getConnection();
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		String sql="select name, grade from membertbl where id=? and pwd=?";
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.setString(2, pwd);
			rs=pstmt.executeQuery();
			if(rs.next()) {
				vo=new MemberVO(id,rs.getString("name"),rs.getString("grade"));
			}
		} catch (SQLException e) {			
			e.printStackTrace();
		} finally {
			JDBCUtil.close(conn, pstmt, rs);
		}		
		return vo;
	}	
	
	// 회원가입 메  
	// 회원가입 시 중복체크 ,,,,,
	// id 중복 체크 Ajax로 해야됨, 그 아이디 사용 하고 있는지 반환 받아야 할 게 필요함.
	// ex) yn이 온다고 치면 가능하면 y가 오고, y가 아닌 값이 돌아오면 메시지를 띄워줘야함.
	// 로그인 회원 가입을 완료 하기 전 중복체크 했는지 안했는지 확인해야됨. input hidden 사용 기본값으로 0을 주고, 
	// 갔다가와서 정상적인 값을 받았을때 1인 값을 받아야함, 1이 아니면 아이디 중복체크를 해야 함(메시지를 줘서 다시 중복체크 하게끔) 
	// keyEvent를 사용해서 하나라도 바뀐게 있으면 처음 그 hidden값을 다시 0으로 초기화 시켜줘야함	
	// input에 이벤트 하나만 주면 된다고 하심 , , , ,
	
	
	public int insertMember(MemberVO vo) {
		int result=0;
		Connection conn=JDBCUtil.getConnection();
		PreparedStatement pstmt=null;
		String sql="insert into membertbl(id,pwd,name,age,address,email,phone) values"
				+ "(?,?,?,?,?,?,?)";
		try {			
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, vo.getId());
			pstmt.setString(2, vo.getPwd());
			pstmt.setString(3, vo.getName());
			pstmt.setInt(4, vo.getAge());
			pstmt.setString(5, vo.getAddress());
			pstmt.setString(6, vo.getEmail());
			pstmt.setString(7, vo.getPhone());
			result=pstmt.executeUpdate();					
		} catch (SQLException e) {			
			e.printStackTrace();
		} finally {
			JDBCUtil.close(conn, pstmt);
		}		
		return result;		
	}
}
