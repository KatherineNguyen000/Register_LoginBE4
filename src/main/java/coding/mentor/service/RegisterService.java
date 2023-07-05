package coding.mentor.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import coding.mentor.db.util.DBUtil;
import coding.mentor.entity.Account;

public class RegisterService {

	public int addNewAccount(Account account) throws SQLException {
		// connect to DB
		Connection conn = null;
		PreparedStatement ps = null;
		int rs = 0;

		try {
			// make connection to mysql
			conn = DBUtil.makeConnection();

			// Run query "INSERT INTO `account`
			ps = conn.prepareStatement("INSERT INTO `account` (`username`, `email`, `password`) VALUES (?, ?, ?)");

			ps.setString(1, account.getUsername());
			ps.setString(2, account.getEmail());
			ps.setString(3, account.getPassword());

			// execute and get result SET
			ps.execute();

			// -> if exist -> return User(id, user,password, status)
			// -> not exist -> return null
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (ps != null) {
				ps.close();
			}
			if (conn != null) {
				conn.close();
			}
		}
		return rs;
	}

	public Account getAccountByUsernameAndPassword(String username, String password) throws SQLException {
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		Account account = null;

		try {
			conn = DBUtil.makeConnection();

			String sql = "SELECT * FROM `account` WHERE username = ? AND password = ? ";
			ps = conn.prepareStatement(sql);

			ps.setString(1, username);
			ps.setString(2, password);

			rs = ps.executeQuery();

			if (rs.next()) {
				account = new Account(username, password);
			}
		
		} finally {
			
			if (ps != null) {
				ps.close();
			}
			if (conn != null) {
				conn.close();
			}
		}
		return account;
	}
}
