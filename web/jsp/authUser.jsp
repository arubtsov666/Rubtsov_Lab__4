<%--
  Created by IntelliJ IDEA.
  User: Pavel
  Date: 18.01.2019
  Time: 10:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Войдите в систему</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js" integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js" integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k" crossorigin="anonymous"></script>
</head>
<body>
<header>
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <a class="navbar-brand" href="/">Главная</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav">
                <% Model.User user = Model.User.getInstance();
                    if(user.authStatus){
                        out.println("<li class='nav-item'><a class='nav-link' href='/listContact'>Список контактов</a></li>");
                        out.println("<li class='nav-item'><a class='nav-link' href='/likedContacts'>Избранное</a></li>");
                        out.println("<li class='nav-item'><a class='nav-link' href='/aboutApp'>О приложении</a></li>");
                        out.println("<li class='nav-item'><a class='nav-link' href='/addContact'>Добавить контакт</a></li>");
                    }else{
                        out.println("<li class='nav-item'><a class='nav-link' href='/authUser'>Войти</a></li>");
                    }
                %>
            </ul>
        </div>
    </nav>
</header>
<section class="container">
    <div class="row">
<div class="col-md-12 p-5">
    <form method="post" class="form-group p-5">
        <label>Пароль: </label><input name="password" type="text"  class="form-control">
        <input class="btn btn-primary" value="Вход" type="submit">
    </form>
</div>
    </div>

</section>
</body>
</html>
