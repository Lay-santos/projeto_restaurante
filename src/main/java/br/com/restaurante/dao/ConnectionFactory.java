package br.com.restaurante.dao;

import java.sql.Connection;
import java.sql.DriverManager;

public class ConnectionFactory {
	private static final String USER ="root";
	private static final String SENHA ="root";
	
	public static Connection conectar() {
		
		try {
			// invocar a biblioteca de conexao ao banco de dados
			Class.forName("com.mysql.jdbc.Driver");
			//CREATE DATABASE restaurante;
			Connection conexao = DriverManager.
					getConnection("jdbc:mysql://localhost:3306/restaurant", USER, SENHA);
		return conexao;
		}catch(Exception e) {
			// throw -> jogar para cima 
			// RuntimeException -> Erro que aconteceu enquanto o codigo rodava
			throw new RuntimeException();
		}
	}
}
