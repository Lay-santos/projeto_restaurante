package br.com.restaurante.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import br.com.restaurante.model.Comida;

public class ComidaDao {
	private Connection conexao;

	public ComidaDao() {
		conexao = ConnectionFactory.conectar();

	}

	public void inserir(Comida comida) {
		String sql = "INSERT INTO comida (nome, preco, descricao, tamanho) VALUES (?, ?, ?, ?)";

		// java.sql
		PreparedStatement smtp;
		try {
			smtp = conexao.prepareStatement(sql);

			smtp.setString(1, comida.getNome());
			smtp.setDouble(2, comida.getPreco());
			smtp.setString(3, comida.getDescricao());
			smtp.setString(4, comida.getTamanho());

			smtp.execute();
			smtp.close();
			conexao.close();

		} catch (Exception e) {
			System.out.println("Deu erro: " + e.getMessage());
		}
	}

	public List<Comida> listar() {
		String sql = "SELECT * FROM comida";

		PreparedStatement smtp;
		List<Comida> comida = new ArrayList<Comida>();
		try {
			smtp = conexao.prepareStatement(sql);
			ResultSet resultado = smtp.executeQuery();

			while (resultado.next()) {
				Comida cmd = new Comida();

				cmd.setId(resultado.getLong("id_comida"));
				cmd.setNome(resultado.getString("nome"));
				cmd.setTamanho(resultado.getString("tamanho"));
				cmd.setDescricao(resultado.getString("descricao"));
				cmd.setPreco(resultado.getDouble("preco"));
			
				comida.add(cmd);

			}
			resultado.close();
			smtp.close();
			conexao.close();
			return comida;

		} catch (Exception e) {
			System.out.println(e);
			throw new RuntimeException();
		}
	}

	public Comida buscar(Long id) {
		String sql = "SELECT * FROM comida WHERE id_comida = ?";

		PreparedStatement smtp;
		System.out.println("esse e o id: " + id);

		try {
			smtp = conexao.prepareStatement(sql);
			smtp.setLong(1, id);
			ResultSet resultado = smtp.executeQuery();
			Comida c = null;

			while (resultado.next()) {
				c = new Comida();
				c.setId(resultado.getLong("id_comida"));
				c.setNome(resultado.getString("nome"));
				c.setTamanho(resultado.getString("tamanho"));
				c.setDescricao(resultado.getString("descricao"));
				c.setPreco(resultado.getDouble("preco"));
				
				
			}
			resultado.close();
			smtp.close();
			conexao.close();
			return c;
			
		} catch (Exception e) {
			System.out.println("Erro " + e.getMessage());
			throw new RuntimeException();
		}
		
		
	}
	public void excluir(Long id) {
		
		String sql = "DELETE FROM comida WHERE id_comida = ?";
		
		PreparedStatement smtp;
		
		try {
			smtp = conexao.prepareStatement(sql);
			smtp.setLong(1, id);
			
			smtp.execute();
			smtp.close();
			
			conexao.close();
		}catch (Exception e) {
			throw new RuntimeException();
		}
	}
	
	
	public void atualizar(Comida comida, Long id) {
		String sql = "UPDATE comida SET nome= ?,  tamanho = ?, descricao = ?, preco = ? WHERE id_comida = ? ";
		
		
		PreparedStatement smtp;
		try {
		
			smtp = conexao.prepareStatement(sql);
			
			
			smtp.setString(1, comida.getNome());
			smtp.setString(2, comida.getTamanho());
			smtp.setString(3, comida.getDescricao());
			smtp.setDouble(4, comida.getPreco());
			smtp.setLong(5, id);
			
			smtp.execute();
			smtp.close();
			conexao.close();
			
		}catch (Exception e) {
			throw new RuntimeException();
		}
		
	}
	
}
