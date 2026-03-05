package ro.emanuel.pojo;

import java.time.LocalDateTime;

import org.springframework.format.annotation.DateTimeFormat;

public class Programare {

	private int programare_id;
	private int pacient_id;

	@DateTimeFormat(pattern = "yyyy-MM-dd'T'HH:mm")
	private LocalDateTime programare;

	private String motiv;
	private String status;

	public Programare() {

	}

	public Programare(int programare_id, int pacient_id, LocalDateTime programare, String motiv, String status) {
		super();
		this.programare_id = programare_id;
		this.pacient_id = pacient_id;
		this.programare = programare;
		this.motiv = motiv;
		this.status = status;
	}

	public int getProgramare_id() {
		return programare_id;
	}

	public void setProgramare_id(int programare_id) {
		this.programare_id = programare_id;
	}

	public int getPacient_id() {
		return pacient_id;
	}

	public void setPacient_id(int pacient_id) {
		this.pacient_id = pacient_id;
	}

	public LocalDateTime getProgramare() {
		return programare;
	}

	public void setProgramare(LocalDateTime programare) {
		this.programare = programare;
	}

	public String getMotiv() {
		return motiv;
	}

	public void setMotiv(String motiv) {
		this.motiv = motiv;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

}	