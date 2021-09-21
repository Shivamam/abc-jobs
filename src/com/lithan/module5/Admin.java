package com.lithan.module5;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
 
public class Admin {

	public static Connection getConnection() throws Exception {
		Connection con = null;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/module5","root","");
		} catch (Exception e) {
			e.printStackTrace();

		}
		return con;
	}

	public int registerUser(String fname, String lname, String email, String password, String phone, String gender)
			throws Exception {
		int i = 0;
		try {
			String sql = "INSERT INTO registered_users(fname, lname, email, password, phone, gender) values(?,?,?,?,?,?)";
			PreparedStatement ps = getConnection().prepareStatement(sql);
			ps.setString(1, fname);
			ps.setString(2, lname);
			ps.setString(3, email);
			ps.setString(4, password);
			ps.setString(5, phone);
			ps.setString(6, gender);
			i = ps.executeUpdate();
			return i;
		} catch (Exception e) {
			e.printStackTrace();
			return i;
		} finally {
			if (getConnection() != null) {
				getConnection().close();
			}
		}
	}
	//break point
	public ResultSet report(String Email) throws SQLException, Exception {
		ResultSet rs = null;
		try {
			String sql = "SELECT * FROM registered_users where email = ?";
			PreparedStatement ps = getConnection().prepareStatement(sql);
			ps.setString(1, Email);
			rs = ps.executeQuery();
			return rs;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		} finally {
			if (getConnection() != null) {
				getConnection().close();
			}
		}
	}

	public boolean loginCheck(String email, String password) throws SQLException, Exception {
		boolean whatthestatus = false;
		try {
			String sqls = "Select * from registered_users WHERE email=? and password=?";
			PreparedStatement ps = getConnection().prepareStatement(sqls);
			ps.setString(1, email);
			ps.setString(2, password);
			ResultSet rs = ps.executeQuery();
			whatthestatus = rs.next();
		} catch (SQLException e) {
			e.printStackTrace();

		} catch (Exception b) {
			b.printStackTrace();

		}

		return whatthestatus;
	}

	public int updateProfile(String fname, String lname, String email, String phone, String gender, String password)
			throws SQLException, Exception {
		int i = 0;
		try {
			String sqls = "Update registered_users set fname = ?, lname = ?, email = ?, phone = ?, gender = ?, password = ? where email = ?";
			PreparedStatement ps = getConnection().prepareStatement(sqls);
			ps.setString(1, fname);
			ps.setString(2, lname);
			ps.setString(3, email);
			ps.setString(4, password);
			ps.setString(5, phone);
			ps.setString(6, gender);
			i = ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (Exception f) {
			f.printStackTrace();
		}
		return i;
	}

//method for update new data in database
	public int updateUserDetails(String fname, String lname, String email, String phone, String gender, String password)
			throws SQLException, Exception {
		getConnection().setAutoCommit(false);
		int i = 0;
		try {
			String sql = "UPDATE registered_users SET fname = ?, lname = ?, email = ?, phone = ?, gender = ?, password = ? where email = ?";
			PreparedStatement ps = getConnection().prepareStatement(sql);
			ps.setString(1, fname);
			ps.setString(2, lname);
			ps.setString(3, email);
			ps.setString(4, password);
			ps.setString(5, phone);
			ps.setString(6, gender);

			i = ps.executeUpdate();
			return i;
		} catch (Exception e) {
			e.printStackTrace();
			getConnection().rollback();
			return 0;
		} finally {
			if (getConnection() != null) {
				getConnection().close();
			}
		}
	}
	
//method to search users
	public ResultSet userList (String Search) throws SQLException, Exception
    {
        ResultSet rs = null;


            try
            {
                String sql = "SELECT * FROM registered_users where fname Like ? or lname Like ? ";
                PreparedStatement ps = getConnection().prepareStatement(sql);

                System.out.println(Search);
                ps.setString(1, "%"+Search+"%");
                ps.setString(2, "%"+Search+"%");
            

                rs = ps.executeQuery();


            }
            catch(Exception e)
            {
                e.printStackTrace();

            }
            finally {
                if (getConnection() != null) {
                getConnection().close();
                }

            }


            return rs;


    }



    public ResultSet userSearch(String email) throws SQLException, Exception {
        ResultSet rs = null;
        try {
        String sql = "SELECT * FROM registered_users where email = ?";
        PreparedStatement ps = getConnection().prepareStatement(sql);
        ps.setString(1, email);
        rs = ps.executeQuery();
        return rs;
        } catch (Exception e) {
        e.printStackTrace();
        return null;
        } finally {
        if (getConnection() != null) {
        getConnection().close();
        }
        }
        }

//admin actions
	
	public ResultSet viewUsers() throws SQLException, Exception {
		ResultSet rs = null;
		try {
			String sql = "SELECT * FROM registered_users ORDER BY fname";
			PreparedStatement ps = getConnection().prepareStatement(sql);
			rs = ps.executeQuery();

		} catch (Exception e) {
			e.printStackTrace();

		} finally {
			if (getConnection() != null) {
				getConnection().close();
			}
		}
		return rs;
	}

	public int deleteUserDetails(UserPojo bean) throws SQLException, Exception {
		int i = 0;
		try {
			String sql = "DELETE FROM registered_users where email = ?";
			PreparedStatement ps = getConnection().prepareStatement(sql);
			ps.setString(1, bean.getEmail());
			i = ps.executeUpdate();
			return i;
		} catch (Exception e) {
			e.printStackTrace();
			return 0;
		} finally {
			if (getConnection() != null) {
				getConnection().close();
			}
		}

	}
//admin login
	
	public boolean adminLogin(String email, String password) throws Exception {
		boolean check = false;

		try {
			String sqls = "Select * from Admin where email =? and password = ?";

			PreparedStatement ps = getConnection().prepareStatement(sqls);
			ps.setString(1, email);
			ps.setString(2, password);
			ResultSet rs = ps.executeQuery();
			check = rs.next();
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return check;
	}
}


