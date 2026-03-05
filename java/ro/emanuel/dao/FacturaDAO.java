package ro.emanuel.dao;

import java.sql.*;
import java.util.ArrayList;

import ro.emanuel.helpers.DBHelper;
import ro.emanuel.pojo.Factura;

public class FacturaDAO {

	public static Factura getFacturaById(int factura_id) throws ClassNotFoundException, SQLException {

		Connection con = DBHelper.getConnection();
		String q = "select * from factura where factura_id = " + factura_id;
		Statement s = con.createStatement();
		ResultSet rs = s.executeQuery(q);
		boolean exists = rs.next();

		if (exists == true) {
			return new Factura(
					rs.getInt("factura_id"),
					rs.getInt("pacient_id"),
					rs.getDate("factura_data").toLocalDate(),
					rs.getFloat("cost"),
					rs.getString("metoda_plata"),
					rs.getString("factura_status"));
		}

		return null;
	}

	public static ArrayList<Factura> getAll() throws ClassNotFoundException, SQLException {

		ArrayList<Factura> result = new ArrayList<>();

		Connection con = DBHelper.getConnection();
		String query = "select * from factura";
		Statement stmt = con.createStatement();
		ResultSet rs = stmt.executeQuery(query);

		while (rs.next()) {

			Factura f = new Factura();
			f.setFactura_id(rs.getInt("factura_id"));
			f.setPacient_id(rs.getInt("pacient_id"));
			f.setFactura_data(rs.getDate("factura_data").toLocalDate());
			f.setCost(rs.getFloat("cost"));
			f.setMetoda_plata(rs.getString("metoda_plata"));
			f.setFactura_status(rs.getString("factura_status"));

			result.add(f);
		}

		return result;
	}

	public static void create(Factura f) throws ClassNotFoundException, SQLException {

		Connection con = DBHelper.getConnection();
		String insertQuery = "insert into factura(pacient_id,factura_data,cost,metoda_plata,factura_status) values(?,?,?,?,?)";
		PreparedStatement i = con.prepareStatement(insertQuery);

		i.setInt(1, f.getPacient_id());
		i.setDate(2, java.sql.Date.valueOf(f.getFactura_data()));
		i.setFloat(3, f.getCost());
		i.setString(4, f.getMetoda_plata());
		i.setString(5, f.getFactura_status());

		i.executeUpdate();
		DBHelper.closeConnection();
	}

	public static void update(Factura f) throws ClassNotFoundException, SQLException {

		Connection con = DBHelper.getConnection();
		String query = "update factura set pacient_id=?, factura_data=?, cost=?, metoda_plata=?, factura_status=? where factura_id=?";
		PreparedStatement i = con.prepareStatement(query);

		i.setInt(1, f.getPacient_id());
		i.setDate(2, java.sql.Date.valueOf(f.getFactura_data()));
		i.setFloat(3, f.getCost());
		i.setString(4, f.getMetoda_plata());
		i.setString(5, f.getFactura_status());
		i.setInt(6, f.getFactura_id());

		i.executeUpdate();
		DBHelper.closeConnection();
	}

	public static void deleteFactura(int factura_id) throws SQLException, ClassNotFoundException {

		Connection con = DBHelper.getConnection();
		String query = "delete from factura where factura_id=" + factura_id;
		Statement stmt = con.createStatement();
		stmt.executeUpdate(query);
		DBHelper.closeConnection();

	}
}