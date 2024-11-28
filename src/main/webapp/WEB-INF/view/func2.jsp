<%@ page language="java" contentType="text/html; charset= ISO-8859-1" 
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Adicionar - Funcionário</title>
    <link rel="stylesheet" href="css/func2.css">
</head>

<body>
    <header>
        <div class="nav">
            <img class="img" src="images/logotipo-do-restaurante-retro_23-2148474404.avif" alt="">
            <input type="text" placeholder="Busque aqui" required>
            <button class="button1" type="button">Funcionário</button>
            
        </div>
    </header>

        <div class="container-titulo">
          <h1><a href="home"> Voltar</a></h1>
        </div>

    <div class="cont">
        <h1>Adicionar </h1>

       <form method="POST" action="${funcionario.id != null ? 'atualizarFuncionario' : 'adicionarFuncionario' }?idFuncionario=${funcionario.id}">
            <div class="label">
                <label>Foto do Funcionário</label>
                <input type="file"> <br>
            </div>

            <div class="label">
                <label>Nome </label>
                 <input value="${funcionario.nome}"name="nome" type="text">
            </div>

            <div class="label">
                <label>Cargo </label>
                 <input value="${funcionario.cargo}" name="cargo" type="message" name="Cargo" id="">
            </div>

            <div class="label">
                <label>Idade </label>
               <input value="${funcionario.idade}" name="idade" type="number" placeholder="_ _"> 
            </div>
            <button type="submit">Enviar</button>
        </form>

    </div>

    <footer class="rodape">
        <p>Â© 2024 - Todos os direitos reservados.</p>
    </footer>

</body>

</html>