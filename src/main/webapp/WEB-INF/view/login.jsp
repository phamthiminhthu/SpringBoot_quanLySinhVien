<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page pageEncoding="UTF-8" %>
<!doctype html>
<html lang="en">

<head>
    <title>Title</title>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <script defer src="https://use.fontawesome.com/releases/v5.1.1/js/all.js"
            integrity="sha384-BtvRZcyfv4r0x/phJt9Y9HhnN5ur1Z+kZbKVgzVBAlQZX4jvAuImlIz+bG7TS00a"
            crossorigin="anonymous"></script>
    <link rel="stylesheet" href="/css/login.css">

</head>

<body>
<div class="login text-center shadow-sm bg-body rounded">
    <div class="container">
        <div class="row">
            <div class="col-6">
                <img src="data:image/jpeg;base64,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"
                     alt="">
            </div>
            <div class="col-6 mb-3">
                <h3>ĐĂNG NHẬP</h3>
                <form action="/api/v1/login-success" method="post">
                    <div class="input-group mb-3">
                        <span class="input-group-text"><i class="fas fa-user"></i></span>
                        <input type="email" class="form-control" placeholder="Email" name="email">
                    </div>
                    <div class="input-group mb-3">
                        <span class="input-group-text"><i class="fas fa-lock"></i></span>
                        <input type="password" class="form-control" placeholder="Password" name="password">
                    </div>
                    <button type="submit" class="btn btn-success">LOG IN</button>
                    <p class="mt-2">
                        <a href="#">Forgot password?</a>
                    </p>
                </form>
            </div>
        </div>
    </div>
</div>


<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
        integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
        crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
        integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
        crossorigin="anonymous"></script>
</body>

</html>