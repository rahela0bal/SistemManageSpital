package ro.emanuel.pojo;

import java.time.LocalDate;

import org.springframework.format.annotation.DateTimeFormat;

public class Factura {

	private int factura_id;
	private int pacient_id;

	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private LocalDate factura_data;

	private float cost;
	private String metoda_plata;
	private String factura_status;

	public Factura() {

	}

	public Factura(int factura_id, int pacient_id, LocalDate factura_data, float cost, String metoda_plata,
			String factura_status) {
		super();
		this.factura_id = factura_id;
		this.pacient_id = pacient_id;
		this.factura_data = factura_data;
		this.cost = cost;
		this.metoda_plata = metoda_plata;
		this.factura_status = factura_status;
	}

	public int getFactura_id() {
		return factura_id;
	}

	public void setFactura_id(int factura_id) {
		this.factura_id = factura_id;
	}

	public int getPacient_id() {
		return pacient_id;
	}

	public void setPacient_id(int pacient_id) {
		this.pacient_id = pacient_id;
	}

	public LocalDate getFactura_data() {
		return factura_data;
	}

	public void setFactura_data(LocalDate factura_data) {
		this.factura_data = factura_data;
	}

	public float getCost() {
		return cost;
	}

	public void setCost(float cost) {
		this.cost = cost;
	}

	public String getMetoda_plata() {
		return metoda_plata;
	}

	public void setMetoda_plata(String metoda_plata) {
		this.metoda_plata = metoda_plata;
	}

	public String getFactura_status() {
		return factura_status;
	}

	public void setFactura_status(String factura_status) {
		this.factura_status = factura_status;
	}

}
