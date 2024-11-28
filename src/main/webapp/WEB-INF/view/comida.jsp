<%@ page language="java" contentType="text/html; charset= ISO-8859-1" 
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html lang="pt-br">

<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Visualizar Comida</title>

  <link rel="stylesheet" href="css/comida.css" />

</head>

<body>
  <header>
    <div class="nav">
      <img class="img" src="images/logotipo-do-restaurante-retro_23-2148474404.avif" alt="">
      <input type="text" placeholder="Busque aqui" required>
      <button type="button">Novo prato</button>
      <link rel="stylesheet" href="css/home.css">
    </div>
  </header>

  <div class="container-titulo">
    <h1><a href="home"> Voltar</a></h1>
  </div>

  <section class="conteudo-restaurantes">

    <!-- <div class="container-conteudo-restaurantes"> -->
      <div class="item-conteudo-restaurantes">
        <img alt="Imagem Sushi" src="images/images_sushi.jpg" />
        
         <div class="item-conteudo-restaurantes">
        <div class="titulo-conteudo">
          <h1>${comida.nome}</h1>
        </div>

        <div class="item-descricao-restaurantes">
          <p>
            ${comida.descricao}
          </p>
        </div>

        <div class="item-restaurantes-preco">
          <h1>${comida.preco}</h1>
        </div>

        <div class="item-editar-restaurantes">
        	<a href ="form?idComida=${comida.id}">
          <button type="button">Editar prato</button>
         	 </a>
         	 <a href ="deletarComida?idComida=${comida.id}">
          <button type="button">Deletar prato</button>
          	</a>
        </div>

      </div>
      </div>

     
  </section>

  <footer class="rodape">
    <p>© 2024 - Todos os direitos reservados.</p>
  </footer>
</body>

</html>