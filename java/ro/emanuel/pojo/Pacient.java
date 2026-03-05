package ro.emanuel.pojo;

import java.time.LocalDate;

import org.springframework.format.annotation.DateTimeFormat;

public class Pacient {
	
	private int pacient_id;
	private String nume;
	private String sex;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private LocalDate data_nasterii;
	private int telefon;
	
	public Pacient() {
	
	}
	
	public Pacient(int pacient_id, String nume, String sex, LocalDate data_nasterii, int telefon) {
		super();
		this.pacient_id = pacient_id;
		this.nume = nume;
		this.sex = sex;
		this.data_nasterii = data_nasterii;
		this.telefon = telefon;
	}
	
	public int getPacient_id() {
		return pacient_id;
	}
	public void setPacient_id(int pacient_id) {
		this.pacient_id = pacient_id;
	}
	public String getNume() {
		return nume;
	}
	public void setNume(String nume) {
		this.nume = nume;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public LocalDate getData_nasterii() {
		return data_nasterii;
	}
	public void setData_nasterii(LocalDate data_nasterii) {
		this.data_nasterii = data_nasterii;
	}
	public int getTelefon() {
		return telefon;
	}
	public void setTelefon(int telefon) {
		this.telefon = telefon;
	}

}