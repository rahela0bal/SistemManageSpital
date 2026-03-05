package ro.emanuel.dao;

import java.sql.*;
import java.util.ArrayList;

import ro.emanuel.helpers.DBHelper;
import ro.emanuel.pojo.Programare;

public class ProgramareDAO {

	public static Programare getProgramareById(int programare_id) throws ClassNotFoundException, SQLException {

		Connection con = DBHelper.getConnection();
		String q = "select * from programare where programare_id = " + programare_id;
		Statement s = con.createStatement();
		ResultSet rs = s.executeQuery(q);
		boolean exists = rs.next();

		if (exists == true) {
			return new Programare(
					rs.getInt("programare_id"),
					rs.getInt("pacient_id"),
					rs.getTimestamp("programare").toLocalDateTime(),
					rs.getString("motiv"),
					rs.getString("status"));
		}

		return null;
	}

	public static ArrayList<Programare> getAll() throws ClassNotFoundException, SQLException {
		ArrayList<Programare> result = new ArrayList<>();

		Connection con = DBHelper.getConnection();
		String query = "select * from programare";
		Statement stmt = con.createStatement();
		ResultSet rs = stmt.executeQuery(query);

		while (rs.next()) {
			Programare p = new Programare();
			p.setProgramare_id(rs.getInt("programare_id"));
			p.setPacient_id(rs.getInt("pacient_id"));
			p.setProgramare(rs.getTimestamp("programare").toLocalDateTime());
			p.setMotiv(rs.getString("motiv"));
			p.setStatus(rs.getString("status"));
			result.add(p);
		}

		return result;
	}

	public static void create(Programare p) throws ClassNotFoundException, SQLException {

		Connection con = DBHelper.getConnection();
		String insertQuery = "insert into programare(pacient_id,programare,motiv,status) values(?,?,?,?)";
		PreparedStatement i = con.prepareStatement(insertQuery);

		i.setInt(1, p.getPacient_id());
		i.setTimestamp(2, Timestamp.valueOf(p.getProgramare()));
		i.setString(3, p.getMotiv());
		i.setString(4, p.getStatus());

		i.executeUpdate();
		DBHelper.closeConnection();
	}

	public static void update(Programare p) throws ClassNotFoundException, SQLException {

		Connection con = DBHelper.getConnection();
		String query = "update programare set pacient_id=?, programare=?, motiv=?, status=? where programare_id=?";
		PreparedStatement i = con.prepareStatement(query);

		i.setInt(1, p.getPacient_id());
		i.setTimestamp(2, Timestamp.valueOf(p.getProgramare()));
		i.setString(3, p.getMotiv());
		i.setString(4, p.getStatus());
		i.setInt(5, p.getProgramare_id());

		i.executeUpdate();
		DBHelper.closeConnection();
	}

	public static void deleteProgramare(int programare_id) throws SQLException, ClassNotFoundException {

		Connection con = DBHelper.getConnection();
		String query = "delete from programare where programare_id=" + programare_id;
		Statement stmt = con.createStatement();
		stmt.executeUpdate(query);
		DBHelper.closeConnection();

	}
}