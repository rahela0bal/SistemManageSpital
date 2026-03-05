package ro.emanuel.controller;

import java.sql.SQLException;
import java.util.ArrayList;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import ro.emanuel.dao.ProgramareDAO;
import ro.emanuel.pojo.Programare;

@Controller
public class ProgramareController {

	@GetMapping("/detaliiProgramare")
	public ModelAndView detaliiProgramare(int programare_id) throws ClassNotFoundException, SQLException {

		ModelMap map = new ModelMap();
		Programare db = ProgramareDAO.getProgramareById(programare_id);

		if (db != null) {
			map.put("c", db);
			return new ModelAndView("Programare/detaliiProgramare.jsp", map);
		}

		map.put("errMsg", "Programarea cu id " + programare_id + " nu a fost gasita!");
		return new ModelAndView("error.jsp", map);
	}

	@GetMapping("/listaProgramari")
	public ModelAndView allProgramare() throws ClassNotFoundException, SQLException {

		ModelMap map = new ModelMap();
		ArrayList<Programare> list = ProgramareDAO.getAll();

		map.put("programare", list);

		return new ModelAndView("Programare/listaProgramari.jsp", map);
	}

	@GetMapping("/createProgramare")
	public ModelAndView createProgramare(Model model) {

		Programare p = new Programare();
		model.addAttribute("obj", p);

		return new ModelAndView("Programare/createProgramare.jsp", "model", model);
	}

	@PostMapping("/createProgramare")
	public ModelAndView createProgramare(@ModelAttribute Programare p) throws ClassNotFoundException, SQLException {

		ProgramareDAO.create(p);

		return new ModelAndView("redirect:/listaProgramari");
	}

	@GetMapping("/editProgramare")
	public ModelAndView editProgramare(Model model, int programare_id) throws ClassNotFoundException, SQLException {

		Programare p = ProgramareDAO.getProgramareById(programare_id);
		model.addAttribute("prog", p);

		return new ModelAndView("Programare/editProgramare.jsp", "model", model);
	}

	@PostMapping("/editProgramare")
	public ModelAndView editProgramare(@ModelAttribute Programare p) throws ClassNotFoundException, SQLException {

		ProgramareDAO.update(p);

		return new ModelAndView("redirect:/listaProgramari");
	}

	@GetMapping("/deleteProgramare")
	public ModelAndView deleteProgramare(int programare_id) throws ClassNotFoundException, SQLException {

		ProgramareDAO.deleteProgramare(programare_id);

		return new ModelAndView("redirect:/listaProgramari");
	}

}