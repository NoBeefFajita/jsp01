package member;

import java.sql.*;
import config.DB;

public class MemberDAO {
	public String loginCheck(String userid, String pw){
        String name = null;
		Connection conn=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		try {
			conn = DB.getConn();//DB커넥션
			String sql="select name from member where userid=? and passwd=?";
			pstmt=conn.prepareStatement(sql);
            pstmt.setString(1, userid);
            pstmt.setString(2, pw);
			rs=pstmt.executeQuery();//sql 실행
			if (rs.next()) {        // 레코드가 존재하면 (로그인 성공)
                name = rs.getString("name");
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if(rs != null) rs.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
			try {
				if(pstmt != null) pstmt.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
			try {
				if(conn != null) conn.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		return name;
	}

}
