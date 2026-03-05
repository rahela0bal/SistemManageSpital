package ro.emanuel.controller;

import java.sql.SQLException;
import java.util.ArrayList;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import ro.emanuel.dao.PacientDAO;
import ro.emanuel.pojo.Pacient;

@Controller
public class PacientController {
	
	@GetMapping("/detaliiPacient")
	public ModelAndView detaliiPacient(int pacient_id) throws ClassNotFoundException, SQLException {
	
		ModelMap map = new ModelMap();
		Pacient dbpacient = PacientDAO.getPacientById(pacient_id);
		if(dbpacient != null) {
			map.put("c", dbpacient);
			return new ModelAndView("Pacient/detaliiPacient.jsp", map);
		}
		
		map.put("errMsg","Pacientul cu id " + pacient_id + " nu a fost gasit!");
		return new ModelAndView("error.jsp", map);
		
	}
	
	@GetMapping("/listaPacienti")
	public ModelAndView allPacient() throws ClassNotFoundException, SQLException {
		ModelMap map = new ModelMap();
		ArrayList<Pacient> pacienti = PacientDAO.getAll();
		
		map.put("pacienti", pacienti);
		
		return new ModelAndView("Pacient/listaPacienti.jsp", map);
	}
	
	@GetMapping("/createPacient")
	public ModelAndView createPacient(Model model) {
		Pacient p = new Pacient();
		model.addAttribute("obj", p);
		
		return new ModelAndView("Pacient/createPacient.jsp", "model", model);
	}
	
	@PostMapping("/createPacient")
	public ModelAndView createPacient(@ModelAttribute Pacient p) throws ClassNotFoundException, SQLException {
		
		PacientDAO.create(p);
		
		return new ModelAndView("redirect:/listaPacienti");
	}
	
	@GetMapping("/editPacient")
	public ModelAndView editPacient(Model model, int pacient_id) throws ClassNotFoundException, SQLException {
		Pacient p = PacientDAO.getPacientById(pacient_id);
		model.addAttribute("pac", p);
		
		return new ModelAndView("Pacient/editPacient.jsp", "model", model);
	}
	
	@PostMapping("/editPacient")
	public ModelAndView editPacient(@ModelAttribute Pacient p) throws ClassNotFoundException, SQLException {
		PacientDAO.update(p);
		
		return new ModelAndView("redirect:/listaPacienti");
	}
	
	@GetMapping("/deletePacient")
	public ModelAndView deletePacient(int pacient_id) throws ClassNotFoundException, SQLException {
		PacientDAO.deletePacient(pacient_id);
		
		return new ModelAndView("redirect:/listaPacienti");
	}

}
