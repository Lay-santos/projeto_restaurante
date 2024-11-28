<%@ page language="java" contentType="text/html; charset= ISO-8859-1" 
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html lang="pt-br">

<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Visualizar Funcionário</title>

  <link rel="stylesheet" href="css/func1.css" />

</head>

<body>
  <header>
    <div class="nav">
      <img class="img" src="images/logotipo-do-restaurante-retro_23-2148474404.avif" alt="">
      <input type="text" placeholder="Busque aqui" required>
      <button class="button1">Funcionário</button>
      
    </div>
  </header>

  <div class="container-titulo">
    <h1><a href="func"> Voltar</a></h1>
  </div>

  <section class="conteudo-restaurantes">

    <div class="container-conteudo-restaurantes">
      <div class="item-conteudo-restaurantes">
        <img alt="Imagem Funcionário" src="images/images_sushi.jpg" />
      </div>

      <div class="item-conteudo-restaurantes">
        <div class="titulo-conteudo">
          <h1>${funcionario.nome}</h1>
        </div>

        <div class="item-descricao-restaurantes">
          <p>
            ${funcionario.cargo}
          </p>
        </div>

        <div class="item-restaurantes">
          <h1>${funcionario.idade}</h1>
        </div>

        <div class="item-editar-restaurantes">
        <a href ="func?idFuncionario=${funcionario.id}">
        </a>
        
         <a href ="func2?idFuncionario=${funcionario.id}">
          <button type="button">Editar funcionario</button>
          </a>
          
          <a href ="deletarFuncionario?idFuncionario=${funcionario.id}">
          <button type="button">Deletar prato</button>
          	</a>
        </div>

      </div>
  </section>

  <footer class="rodape">
    <p>Â© 2024 - Todos os direitos reservados.</p>
  </footer>
</body>

</html>