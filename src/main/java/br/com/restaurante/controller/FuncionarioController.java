package br.com.restaurante.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import br.com.restaurante.dao.ConnectionFactory;
import br.com.restaurante.dao.FuncionarioDao;
import br.com.restaurante.model.Funcionario;

@Controller
public class FuncionarioController {

	@RequestMapping("/func")
	public String index(Model model) {
		FuncionarioDao dao = new FuncionarioDao();

		model.addAttribute("funcionario", dao.listar());

		return "func";
	}

	@RequestMapping("/func2")
	public String func(Long idFuncionario, Model model) {
		FuncionarioDao dao = new FuncionarioDao();

		Funcionario f = new Funcionario();

		if (idFuncionario != null) {
			f = dao.buscar(idFuncionario);
		}
		model.addAttribute("funcionario", f);
		return "func2";
	}

	@RequestMapping("/func1")
	public String funcionario(Long idFuncionario, Model model) {
		FuncionarioDao dao = new FuncionarioDao();

		model.addAttribute("funcionario", dao.buscar(idFuncionario));

		return "func1";
	}

	@RequestMapping(value = "adicionarFuncionario", method = RequestMethod.POST)
	public String adicionarFuncionario(Funcionario funcionario) {
		FuncionarioDao dao = new FuncionarioDao();
		dao.inserir(funcionario);
		return "redirect:func";

	}

	@RequestMapping(value = "atualizarFuncionario", method = RequestMethod.POST)
	public String atualizarFuncionario(Long idFuncionario, Funcionario f) {
		FuncionarioDao dao = new FuncionarioDao();

		dao.atualizar(f, idFuncionario);
		return "redirect:func";
	}

	@RequestMapping("deletarFuncionario")
	public String deletarFuncionario(Long idFuncionario) {
		FuncionarioDao dao = new FuncionarioDao();

		dao.excluir(idFuncionario);

		return "redirect:func";
	}
}
