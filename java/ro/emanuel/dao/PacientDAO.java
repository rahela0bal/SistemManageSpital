package ro.emanuel.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import ro.emanuel.helpers.DBHelper;
import ro.emanuel.pojo.Pacient;

public class PacientDAO {
		
	public static Pacient getPacientById(int pacient_id) throws ClassNotFoundException, SQLException {
		
		Connection con = DBHelper.getConnection();
		String q = "select * from pacient where pacient_id = " + pacient_id;
		Statement s = con.createStatement();
		ResultSet rs = s.executeQuery(q);
		boolean exists = rs.next();
		
		if (exists == true) {
			return new Pacient(
				rs.getInt("pacient_id"),
				rs.getString("nume"),
				rs.getString("sex"),
				rs.getDate("data_nasterii").toLocalDate(),
				rs.getInt("telefon")
			);
		}
		
		return null;
	}
	
	public static ArrayList<Pacient> getAll() throws ClassNotFoundException, SQLException {
		ArrayList<Pacient> result = new ArrayList<Pacient>();
		
		Connection con = DBHelper.getConnection();
		String query = "select * from pacient";
		Statement stmt = con.createStatement();
		ResultSet rs = stmt.executeQuery(query);
		
		while(rs.next()) {
			Pacient p = new Pacient();
			p.setPacient_id(rs.getInt("pacient_id"));
			p.setNume(rs.getString("nume"));
			p.setSex(rs.getString("sex"));
			p.setData_nasterii(rs.getDate("data_nasterii").toLocalDate());
			p.setTelefon(rs.getInt("telefon"));
			result.add(p);
		}
		return result;
	}
	
	public static void create(Pacient p) throws ClassNotFoundException, SQLException {
		Connection con = DBHelper.getConnection();
		String insertQuery = "insert into pacient(nume,sex,data_nasterii,telefon) values(?,?,?,?)";
		PreparedStatement i = con.prepareStatement(insertQuery);
		
		i.setString(1, p.getNume());
		i.setString(2, p.getSex());
		i.setDate(3, java.sql.Date.valueOf(p.getData_nasterii()));
		i.setInt(4, p.getTelefon());
		
		i.executeUpdate();
		DBHelper.closeConnection();
	}
	
	public static void update(Pacient p) throws ClassNotFoundException, SQLException {
		Connection con = DBHelper.getConnection();
		String query = "update pacient set nume=?, sex=?, data_nasterii=?, telefon=? where pacient_id=?";
		PreparedStatement i = con.prepareStatement(query);
		
		i.setString(1, p.getNume());
		i.setString(2, p.getSex());
		i.setDate(3, java.sql.Date.valueOf(p.getData_nasterii()));
		i.setInt(4, p.getTelefon());
		i.setInt(5, p.getPacient_id());
		
		i.executeUpdate();
		DBHelper.closeConnection();
	}
	
	public static void deletePacient(int pacient_id) throws SQLException, ClassNotFoundException {
		
		Connection con = DBHelper.getConnection();
		String query = "delete from pacient where pacient_id = " + pacient_id;
		Statement stmt = con.createStatement();
		stmt.executeUpdate(query);
		DBHelper.closeConnection(); 
	
	}

}