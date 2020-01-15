<%--
  Created by IntelliJ IDEA.
  User: Pavel
  Date: 18.01.2019
  Time: 9:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Добавить контакт</title><link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js" integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js" integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k" crossorigin="anonymous"></script>
</head>
<body>
<header>
    <div class="container">
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
    </div>
</header>
<section>
    <div class="container">
        <form method="post">
            <div class="form-group row">
                <label class="col-sm-2 col-form-label">Имя</label>
                <div class="col-sm-10">
                    <input name="name" type="text" class="form-control" required>
                </div>
            </div>
            <div class="form-group row">
                <label class="col-sm-2 col-form-label">Фамилия</label>
                <div class="col-sm-10">
                    <input name="surname" type="text" class="form-control" required>
                </div>
            </div>
            <div class="form-group row">
                <label class="col-sm-2 col-form-label">Отчество</label>
                <div class="col-sm-10">
                    <input name="lastname" type="text" class="form-control" required>
                </div>
            </div>
            <div class="form-group row">
                <label class="col-sm-2 col-form-label">Дата рождения</label>
                <div class="col-sm-10">
                    <input name="birthday" type="text" class="form-control" required>
                </div>
            </div>
            <div class="form-group row">
                <label class="col-sm-2 col-form-label">Пол</label>
                <div class="col-sm-10">
                    <select name="gender" required class="form-control">
                        <option value="Муж.">Мужской</option>
                        <option value="Жен.">Женский</option>
                    </select>
                </div>
            </div>
            <div class="form-group row">
                <label class="col-sm-2 col-form-label">Номер телефона</label>
                <div class="col-sm-10">
                    <input name="phone" type="text" class="form-control" required>
                </div>
            </div>
            <div class="form-group row">
                <label class="col-sm-2 col-form-label">E-mail</label>
                <div class="col-sm-10">
                    <input name="email" type="email" class="form-control" required>
                </div>
            </div>
            <div class="form-group row">
                <label class="col-sm-2 col-form-label">информация о месте работы</label>
                <div class="col-sm-10">
                    <input name="job" type="text" class="form-control" required>
                </div>
            </div>
            <div class="form-group row">
                <label class="col-sm-2 col-form-label">Должность</label>
                <div class="col-sm-10">
                    <input name="position" type="text" class="form-control" required>
                </div>
            </div>

            <div class="form-group row">
                <label class="col-sm-2 col-form-label">Добавить в избранюю</label>
                <div class="col-sm-10">
                    <input name="is_favorite" type="radio" value="true" class="form-control" required>
                </div>
            </div>

            <div class="form-group row">
                <input type="submit" class="btn btn-primary" value="Добавить">
            </div>
        </form>
    </div>
</section>
</body>
</html>
