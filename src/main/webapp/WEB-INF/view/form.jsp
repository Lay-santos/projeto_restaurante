<%@ page language="java" contentType="text/html; charset= ISO-8859-1" 
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Form - Restaurante</title>
    <link rel="stylesheet" href="css/form.css">
</head>

<body>
    <header>
        <div class="nav">
            <img class="img" src="images/logotipo-do-restaurante-retro_23-2148474404.avif" alt="">
            <input type="text" placeholder="Busque aqui" required>
            <button class="button1" type="button">Prato</button> 
        </div>
    </header>

        <div class="container-titulo">
          <h1><a href="home"> Voltar</a></h1>
        </div>

    <div class="cont">
        <h1>Adicionar </h1>

        <form method="POST" action="${comida.id != null ? 'atualizarComida' : 'adicionarComida' }?idComida=${comida.id}">
            <div class="label">
                <label>Foto do Cardápio</label>
                <input type="file"> <br>
            </div>

            <div class="label">
                <label>Nome </label>
                <input value="${comida.nome}"name="nome" type="text">
            </div>

            <div class="label">
                <label>Tamanho</label>
                <select name="tamanho" id="">
                    <option value="pequeno">Pequeno</option>
                    <option value="medio">Médio</option>
                    <option value="grande">Grande</option>
                </select>
            </div>

            <div class="descrição">
                <label>Descrição</label>
                <input value="${comida.descricao}" name="descricao" type="message" name="Descrição" id="">
            </div>
           
            <div class = "preco">
            	<p>	Preço</p>
            	<input value="${comida.preco}" name="preco" type="text" placeholder="R$ 00.00">       
            </div>
            
            <button type="submit">Enviar</button>
        </form>

    </div>

    <footer class="rodape">
        <p>© 2024 - Todos os direitos reservados.</p>
    </footer>

</body>

</html>