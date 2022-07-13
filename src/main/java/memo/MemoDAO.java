package memo;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import config.DB;

public class MemoDAO {
	public List<MemoDTO> listMemo() {
		List<MemoDTO> items = new ArrayList<>();
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			conn = DB.getConn();//DB커넥션
			String sql="select * from memo order by idx desc";
			pstmt=conn.prepareStatement(sql);
			rs=pstmt.executeQuery();//sql 실행
			while (rs.next()) {
				MemoDTO dto = new MemoDTO();
				dto.setIdx(rs.getInt("idx"));
				dto.setWriter(rs.getString("writer"));
				dto.setMemo(rs.getString("memo"));
				dto.setPost_date(rs.getString("post_date"));
				items.add(dto);//리스트에 dto 추가
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
		return items;
	}
		
}
