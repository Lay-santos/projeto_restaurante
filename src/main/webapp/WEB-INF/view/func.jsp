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
    <title>Funcionário- Restaurante</title>
    <link rel="stylesheet" href="css/func.css">

  </head>
  <body>
      <header>

      <div class="nav">
        <img class="img" src="images/logotipo-do-restaurante-retro_23-2148474404.avif" alt="">
        <input type="text" placeholder="Busque aqui" required>
        <button class="button1" type="button"><a href="func2"> Novo Funcionário </a></button>
  	  </div>
    </header>
    
    <div class="container-titulo">
      <h1><a href="home">Voltar</a></h1>
    </div>

    <section class="content-one">
      <div class="container-content">
        <div class="content-item">
          <h2>Funcionário do Restaurante</h2>        
        </div>
      </div>
    </section>

    <section class="conteudo-restaurantes">
        

      <div class="titulo-restaurante">
        <h1>Funcionário</h1>
      </div>
      <div class="items-restaurantes">
        
         <c:forEach items="${funcionario}" var="funcionario">
        
        <a href="func1?idFuncionario=${funcionario.id}">
          <div class="restaurante">
            <h2>${funcionario.nome}</h2>
            <p>${funcionario.cargo}</p>
            <h1>${funcionario.idade}</h1>
          </div>
          </a>
		  </c:forEach>
		 
    </section>

    <footer class="rodape">
      <div class="item-rodape">
        <p>© 2024 - Todos os direitos reservados.</p>
      </div>
    </footer>
  </body>
</html>
