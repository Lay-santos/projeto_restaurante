package br.com.restaurante.controller;
import java.sql.PreparedStatement;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import br.com.restaurante.dao.ComidaDao;
import br.com.restaurante.dao.ConnectionFactory;
import br.com.restaurante.model.Comida;


// Anotação
@Controller
public class IndexController {

	@RequestMapping
	String inicio() {
		// conecta ao banco de dados
		ConnectionFactory.conectar();
		// Redirecionar para rota/home
		return "redirect:home";
	}

	// String -> Retorno de uma pagina
	@RequestMapping("/home") // http://localhost:8080/
	public String index(Model model) {
		ComidaDao dao = new ComidaDao();
		
		model.addAttribute("comidas", dao.listar());
		
		return "home"; // home.html
	}

	@RequestMapping("/form")
	public String form(Long idComida, Model model) {
		ComidaDao dao = new ComidaDao();
		
		Comida c = new Comida();
		
		if (idComida != null) {
			c = dao.buscar(idComida);
		}
		model.addAttribute("comida", c);
		return "form"; // form.html
	}

	@RequestMapping("/comida")
	public String pedido(Long idComida, Model model) {
		ComidaDao dao = new ComidaDao();
		
		model.addAttribute("comida", dao.buscar(idComida));
		
		return "comida";
	}

	@RequestMapping(value = "adicionarComida", method = RequestMethod.POST)
	public String adicionarComida(Comida comida) {
		ComidaDao dao = new ComidaDao();
		dao.inserir(comida);
		return "redirect:home";

	}
	
	@RequestMapping(value = "atualizarComida", method = RequestMethod.POST)
	public String atualizarComida(Long idComida, Comida c) {
		ComidaDao dao = new ComidaDao();
		
		dao.atualizar(c, idComida);
		return "redirect:home";
	}
	
	@RequestMapping("deletarComida")
	public String deletarComida(Long idComida) {
		ComidaDao dao = new ComidaDao();
		
		dao.excluir(idComida);
		
		return "redirect:home";
	}
}
