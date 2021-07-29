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
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script defer src="https://use.fontawesome.com/releases/v5.1.1/js/all.js"
            integrity="sha384-BtvRZcyfv4r0x/phJt9Y9HhnN5ur1Z+kZbKVgzVBAlQZX4jvAuImlIz+bG7TS00a"
            crossorigin="anonymous"></script>
    <link rel="stylesheet" href="/css/common.css">
    <link rel="stylesheet" href="/css/style.css">
</head>

<body>
<header>
    <div class="container">
        <div class="row">
            <div class="col-8">
                <a href="" class="image-category">
                    <img src="data:image/jpeg;base64,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"
                         alt="">
                </a>
            </div>
            <div class="col-4">
                <ul class="nav justify-content-end">
                    <li class="nav-item">
                        <a href="" class="image-profile">
                            <img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAOEAAADhCAMAAAAJbSJIAAAAflBMVEX8/PxZWlr///9WV1ff399cXV1VVlZQUVFFRkZKS0s9Pj5CQ0NOT09ERUX5+fn19fXs7Ow5OjouLy8zNDTW1tays7PLy8tyc3Orq6tpampkZWXd3d15eXm/v7+YmZmmpqaQkZGEhYUoKirn5+eMjY25urrHx8eWl5ceHx+AgYGCq/ltAAAHC0lEQVR4nO2daXeiShBApdqm6WZfBME1aszk///BB5rFROMCDRS+up8yTjzHO4XdVb3UjEYEQRAEQRAEQRAEQRAEQRAEQRAEQRAEQRAEQRBEHeCbvj+Kfg5aXhBsZ+PZNgi8J9OsbIJ0up7nhWEy0yjy+Xq6D55F8mD3xuw4tKUjTMaYKRxph7Ey39JgNHxJ8JIVV67DDM6Nb8o/MMdVfJV6w3YESDPLFj/tTiyFbWXpgBXBWxgb55LciaYTsVdvmI4AyXsojeuCVSRl+J4MMY4AS3nb7+BoSGs5PEVIeHSX39Ex4snAFOFVWPf6HRylMxmSIsAkFo8IlooingznSQX/ZXNxfrjuuHnxB6IIsAsf9qsUw5eBRBGWcR3BUjF+G4QhLKOilqBhFNHbAKIIk7CmX0U4RW8I441Z7xmt4OZmjFwRAvPBaeK3otgiV1yrJoKlor3rW+EqkIaskWBJmCIOIoBq9IwegihCxOMpTGvOhD8U4xVaQ9gys7GgYTC8gw2sGg4zR7haIjWEwNARQsMwTaRBhInSImgYCmmtCEJqMpQOyuEUxlHjufADFs1QGq5qVYWX4CHGsQb8vPFs/2UocoTlPiRSl2C1MIVw6Q0WrkZDd4HP0FvrGkkr5M7rW+gMP3M0GjqZ37fQbyDgQqOh4AG2xxTGUk/KdsR00c2IkCpd830FU+jqYFhoNTTUKzpDbWn3hyG6ZUWYPr3h0tZqaKPLTLUbolus+R88pc8/0jz/bPH8M/5Wb9ZmoduDgqB48sx75M+fvHoaeW9aK+A1vgoY9rbGVQwb4SoGJDdOIT5kiHIlysuefDVRz+bhh2GILiutgG2ka0ZkEbrZ8AAY2nZmTJSCZWqqq4DCl5QegYBr2iFFmNAcgamW3Sek40yFplVhYWANYXX2OdJx2gTpHncFgGyc2HDHRbnF/QHMVNPBxlQIE7ZTlk1P7qll3wrXAb9otBXMHY4xIz0FgrjBeMpFjHcc/aTZohvWbOYHsKo9ZfAI7Vz/A5hGNQ0HIlgqvtU7rh8O47rFgeXjt4I43yzxrT79CSzCB5Mb7sQIF5+uAHtuPxLG8rf3gxKs1jTm918t4WyTIT00ewWAiXDvnBktMcWcbZ/x+Vlh/Ba6t286G264/lp4GoAoAHwlljBKsui6IzesKE++/1F89J0kSikW7eE7JOMXoRzjomX5mqPEy+zkt/eRSFBfzgeYrV3pxNPv+qB8aZJZthSsmvKOorz6gQnpWtnk268M4CR2pL1DfDm/HFwst4qNmm9PPjj440ku4zi0LUdUOJat4ljm07F/+mvBXFVxtdzJCKciQFJE7BAlbm0mJ2XeoU3LeLHazfO8KIo8n+9Wi9noR/eWMoCb4xHc4+V8hI7lRwy/il9uhNn+x6c8ttzxgxLfP2vAU34Ds5B9vVuePudYAH+uGD8ZRaTajc8Gxos9lMoXtjt12mGifM6zAFcYAdLodw8F7kb5zL/5OauvaRb93l3lVrTHpAgwtc83DzmzrPnr9kqzpOqvtq/vlsXO3yzUCo8iwO6vlQtH8d3iYt+r42uLNVd/nXBQaBoQQJD9vTfKhR27+SoJfO9HNzPPD5JVbsUXYv/11jjHsSwF2/zqGinnprQVy9ar132aJkmSpvvX1S5jypbm1QqL2zmGnVIYsZuHMA4ZjFUhHcf5+KnMcm6+zzb7z+FgLO5fAuaf3P0G6fR9Zh+2hcbLQBcUraLfBxU89lAroTqKos8HFfzrg4wWRbvoL4OD0a51wUrxpbcowrJJo5b7FXtbKYbFv/YjeFD818++N8xkg040Dxkabh/7wuBnGq/F3lCUfYw28KLt6vYdiuq9c0NIN535VWy6PrtfHQ7qLoRVidL5MaK1xjPPdym63XZXglTvHaB7UF1uTgG0nY6ew6XosOSHiYbzaw8rdrjLr+0g6YN015gHph0k3Odw1VUQYWz1EkKDuR1Vw7DseKb4hNvrTgzBa3zCsi5m2El6WrsBa3O66T2kucXHY3Ryih8WvQykR3gXZxf9rL8QGkYHV74gsbTe2X4QZrde7cOy+5z7FNX2hAHw52ZYJ7Tf3RSSuqdjdSlGLRf70PS2QWND1e7iKQRFX/nMF0WrUyKknVe+v+FWq48pTHpKuk8M7Va7nvjvVs+ChiHnLbZb6DUn/US0WepDorcJTS1Ym5fbYNr719Bot4UUzHsfSqtlxaw1QwCusfdFbUOHtZa4ge/2Pt+XmHZrcz4knexq3yRubaiBfdy33IH27g/BFEcM2/vPaHovLI5wu7XyAnb952wV1ntbgn6ms9lVfWTW0nIU+DmC6bBayWirRCzLX4dhwOEt5d6w5aJvuQOiLcORN8ZCaxeGAQttCRIEQRAEQRAEQRAEQRAEQRAEQRAEQRAEQRAEQWDnP/OgeA2PqqweAAAAAElFTkSuQmCC"
                                 alt="">
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="#">Minh Thu</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#"><i class="fas fa-angle-down"></i></a>
                        <ul class="nav flex-column d-none">
                            <li class="nav-item">
                                <a class="nav-link" href="#">Edit profile</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#">Logout</a>
                            </li>
                        </ul>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</header>
<main>
    <div class="container">
        <!-- Modal -->
        <form method="post" action="/api/v1/student/add-student">
            <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel"
                 aria-hidden="true">
                <div class="modal-dialog modal-lg">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="exampleModalLabel"> Thêm sản phẩm</h5>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>
                        <div class="modal-body">

                            <div class="row">
                                <div class="col-12">
                                    <label class="form-label">Name</label>
                                    <input type="text" class="form-control" name="name" required>
                                    <c:out value="${error}">
                                    </c:out>
                                </div>
                                <div class="col-12">
                                    <label class="form-label">Email</label>
                                    <input type="text" class="form-control" name="email" required>
                                    <div class="valid-feedback">
                                        Looks good!
                                    </div>
                                </div>
                                <div class="col-12">
                                    <label class="form-label">Password</label>
                                    <input type="password" class="form-control" name="password" required>
                                    <div class="valid-feedback">
                                        Looks good!
                                    </div>
                                </div>
                                <div class="col-12">
                                    <label class="form-label">Address</label>
                                    <input type="text" class="form-control " name="address" required>
                                    <div class="valid-feedback">
                                        Looks good!
                                    </div>
                                </div>

                                <div class="col-12">
                                    <label class="form-label">Date of Birth</label>
                                    <input type="date" class="form-control" name="dateOfBirth" required>
                                    <div class="valid-feedback">
                                        Looks good!
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                            <button type="submit" class="btn btn-primary">Save changes</button>
                        </div>
                    </div>
                </div>
            </div>
        </form>

        <div class="row">
            <div class="col-12 mb-2 mt-2">
                <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal">THÊM
                    SINH VIÊN MỚI
                </button>
            </div>
            <div class="col-12">
                <table class="table table-bordered text-center">
                    <thead class="text-center">
                    <tr>
                        <th scope="col">STT</th>
                        <th scope="col">MSSV</th>
                        <th scope="col">Tên SV</th>
                        <th scope="col">Ngày sinh</th>
                        <th scope="col">Email</th>
                        <th scope="col">Address</th>
                        <th scope="col">Hoạt động</th>
                    </tr>
                    </thead>
                    <tbody class="text-center">
                    <tr>
                        <th scope="row"></th>
                        <form action="/api/v1/search" method="get">
                            <td>
                                <input type="text" class="form-control" placeholder="" aria-label="" >
                            </td>
                            <td>
                                <input type="text" class="form-control" placeholder="" aria-label="" name="name">
                            </td>
                            <td>
                                <input type="date" class="form-control" placeholder="" aria-label="">
                            </td>
                            <td>
                            </td>
                            <td>
                                <input type="text" class="form-control" placeholder="" aria-label="Username">
                            </td>
                            <td>
                                <button type="submit" class="btn btn-warning">Search</button>
                            </td>
                        </form>
                    </tr>
                    <c:forEach items="${students}" var="student" varStatus="loop">
                        <tr>
                            <th scope="row ">${loop.index + 1} </th>
                            <td>${student.id}</td>
                            <td>${student.name}</td>
                            <td>${student.dateOfBirth}</td>
                            <td>${student.email}</td>
                            <td>${student.address}</td>
                            <td class="btn-active">
                                <button type="button" class="btn btn-warning"><a
                                        href="<c:url value="/api/v1/student/${student.id}/edit"/>"> Sửa</a></button>
                                <button type="submit" class="btn btn-danger"><a
                                        href="<c:url value="/api/v1/student/${student.id}/delete"/>">Xoá</a></button>
                            </td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</main>
<footer></footer>


<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script>
</body>

</html>