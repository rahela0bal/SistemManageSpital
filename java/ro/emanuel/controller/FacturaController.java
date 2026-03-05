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

import ro.emanuel.dao.FacturaDAO;
import ro.emanuel.pojo.Factura;

@Controller
public class FacturaController {

	@GetMapping("/detaliiFactura")
	public ModelAndView detaliiFactura(int factura_id) throws ClassNotFoundException, SQLException {

		ModelMap map = new ModelMap();
		Factura dbfactura = FacturaDAO.getFacturaById(factura_id);

		if (dbfactura != null) {
			map.put("c", dbfactura);
			return new ModelAndView("Factura/detaliiFactura.jsp", map);
		}

		map.put("errMsg", "Factura cu id " + factura_id + " nu a fost gasita!");
		return new ModelAndView("error.jsp", map);

	}

	@GetMapping("/listaFactura")
	public ModelAndView allFactura() throws ClassNotFoundException, SQLException {

		ModelMap map = new ModelMap();
		ArrayList<Factura> factura = FacturaDAO.getAll();

		map.put("factura", factura);

		return new ModelAndView("Factura/listaFactura.jsp", map);
	}

	@GetMapping("/createFactura")
	public ModelAndView createFactura(Model model) {

		Factura f = new Factura();
		model.addAttribute("obj", f);

		return new ModelAndView("Factura/createFactura.jsp", "model", model);
	}

	@PostMapping("/createFactura")
	public ModelAndView createFactura(@ModelAttribute Factura f) throws ClassNotFoundException, SQLException {

		FacturaDAO.create(f);

		return new ModelAndView("redirect:/listaFactura");
	}

	@GetMapping("/editFactura")
	public ModelAndView editFactura(Model model, int factura_id) throws ClassNotFoundException, SQLException {

		Factura f = FacturaDAO.getFacturaById(factura_id);
		model.addAttribute("fac", f);

		return new ModelAndView("Factura/editFactura.jsp", "model", model);
	}

	@PostMapping("/editFactura")
	public ModelAndView editFactura(@ModelAttribute Factura f) throws ClassNotFoundException, SQLException {

		FacturaDAO.update(f);

		return new ModelAndView("redirect:/listaFactura");
	}

	@GetMapping("/deleteFactura")
	public ModelAndView deleteFactura(int factura_id) throws ClassNotFoundException, SQLException {

		FacturaDAO.deleteFactura(factura_id);

		return new ModelAndView("redirect:/listaFactura");
	}

}
