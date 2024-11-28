<%@ page language="java" contentType="text/html; charset= ISO-8859-1" 
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html lang="pt-br">
  <head>
    <meta charset="ISO-8859-1">
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Home - Restaurante</title>
    <link rel="stylesheet" href="css/home.css">

  </head>
  <body>
    <header>
        <div class="nav">
        <img class="img" src="images/logotipo-do-restaurante-retro_23-2148474404.avif" alt="">
        <input type="text" placeholder="Busque aqui" required>
            <button type="button"> <a href="form"> Novo prato </a></button>
            <button type="button1"> <a href="func">Funcionário</a></button>
        </div>
    </header>

    <section class="content-one">
      <div class="container-content">
       
          <img class="foto" alt="Comida" src="images//7c6105d5f231afa2af99fe6ab6cd7dd1.png" />
       
        <div class="content-item">
          <h2>Melhores sabores</h2>
          <p>Experimente a melhor comida da região</p>
        </div>
      </div>
    </section>

    <section class="conteudo-restaurantes">
      <div class="titulo-restaurante">
        <h1>Refeição</h1>
      </div>
      <div class="items-restaurantes">
      
        <c:forEach items="${comidas}" var="comida">
        <a href="comida?idComida=${comida.id}">
          <div class = "restaurante">
            <img src="images/images_sushi.jpg" alt="Comida" />
            <h2>${comida.nome}</h2>
            <p>${comida.descricao}</p>
            <h1>R$ ${comida.preco}</h1>
          </div>
          </a>
		</c:forEach>
        
        
      </div>
    </section>

    <footer class="rodape">
      <div class="item-rodape">
        <p>Â© 2024 - Todos os direitos reservados.</p>
      </div>
    </footer>
  </body>
</html>
