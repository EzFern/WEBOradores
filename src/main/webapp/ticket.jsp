<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Ticket</title>
    <link rel="stylesheet" href="./CSS/style.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
</head>
<body onload="">
    <header>
        <nav class="navbar navbar-expand-lg bg-secondary fixed-top navbar-dark">
            <div class="container">
                <a class="navbar-brand" href="#">
                    <img src="./IMG/codoacodo.png" alt="logo" width="100px">
                    Conf Bs As</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
                    aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse flex-row-reverse" id="navbarNav">
                    <ul class="navbar-nav">
                        <li class="nav-item">
                            <a class="nav-link" href="#">La Conferencia</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">Los Oradores</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">El Lugar y La Fecha</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">Convertite en Orador</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="ticket.html">Comprar Ticket</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="#">Registrar</a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
    </header>
    
    <main> 
        <div class="container px-4 py-5" id="feature-3">
            <div class="row g-4 py-5 row-cols-1 row-cols-lg-3" id="cartas">
                <div class="col">
                    <div class="card border-primary mb-3" style="width: 18rem; text-align: center;">
                        <div class="card-body">
                            <h5 class="card-title">Estudiante</h5>
                            <h6 class="card-title">Tiene un descuento</h6>
                            <h5 class="card-title">80%</h5>
                            <p class="card-text">*Presentar documentación</p>
                        </div>
                    </div>
                </div>
                <div class="col">
                    <div class="card border-success mb-3" style="width: 18rem;text-align: center;">
                        <div class="card-body">
                            <h5 class="card-title">Trainee</h5>
                            <h6 class="card-title">Tiene un descuento</h6>
                            <h5 class="card-title">50%</h5>
                            <p class="card-text">*Presentar documentación</p>
                        </div>
                    </div>
                </div>
                <div class="col">
                    <div class="card border-warning mb-3" style="width: 18rem;text-align: center;">
                        <div class="card-body">
                            <h5 class="card-title">Junior</h5>
                            <h6 class="card-title">Tiene un descuento</h6>
                            <h5 class="card-title">15%</h5>
                            <p class="card-text">*Presentar documentación</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>   
    </main>

    <!-- inicio del formulario -->
    <section>
        <h6 style="text-align: center;">Venta</h6>
        <h1 style="text-align: center;">VALOR DE TICKET $200</h1>
        <form class="container-fluid" style="width: 63%" action="Update.jsp">
            <div class="row">
            <div class="col">
                <input type="text" name="nombre" value="<%= request.getParameter("nombre") %>" class="form-control" placeholder="First name" aria-label="First name" id="nombre">
            </div>
            <div class="col">
                <input type="text" name="apellido" value="<%= request.getParameter("apellido") %>" class="form-control" placeholder="Last name" aria-label="Last name" id="apellido">
            </div>
            </div>
            <br>
            <div class="mb-3">
            <input type="email" name="mail" value="<%= request.getParameter("mail") %>" class="form-control" id="mail" placeholder="name@example.com">
            </div>
            <br>
            <div class="row">
                <div class="col">
                <label for="cantidad">Cantidad de entradas</label>
                <input id="cantidad" name="cantidad" value="<%= request.getParameter("cantidad") %>" type="number" min="1" max="10" class="form-control" placeholder="">
                </div>
                <div class="col">
               		<label for="categoria">Categoría</label>
                	<select class="form-select"  name="categoria" aria-label="Default select example" id="categoria">
	                    <option selected=""><%= request.getParameter("categoria") %></option>
	                    <option value="Sin Categoria">Sin Categoria</option>
	                    <option value="Estudiante">Estudiante</option>
	                    <option value="Trainee">Trainee</option>
	                    <option value="Junior">Junior</option>
	                </select>
                </div>
            </div>
            <br>
            <span id="error" style="color:red"></span>
            <div class="alert alert-primary" role="alert">
                Total a pagar: <span id="total_a_pagar"></span>
            </div>
            <br>
            <div class="row">
                <div class="d-grid col-4 mx-auto;">
                <button class="btn btn-success" type="button" id="btnDelete" onclick="location.href='delete.jsp'">Borrar</button>
                </div>
                <div class="d-grid col-4 mx-auto">
                    <button class="btn btn-success" type="submit" id="btnUpdate" >Modificar</button>
                </div>
                <div class="d-grid col-4 mx-auto">
                    <button class="btn btn-success" type="button" id="btnConfirmar" onclick="location.href='ticket.html'">Confirmar</button>
                </div>
            </div>
            <br>
            <br>

        </form>
    </section>

    <footer>
        <nav class="navbar navbar-expand-lg bg-dark fixed-bottom bg-gradient">
            <div class="container-fluid d-flex ">
                <div class="collapse navbar-collapse justify-content-center" id="navbarNav">
                    <ul class="navbar-nav">
                        <li class="nav-item">
                            <a class="nav-link text-white text-sm-center" href="#">Preguntas frecuentes</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link text-white text-sm-center" href="#">Contáctanos</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link text-white text-sm-center" href="#">Prensa</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link text-white text-sm-center" href="#">Conferencias</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link text-white text-sm-center" href="#">Términos y condiciones</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link text-white text-sm-center" href="#">Privacidad</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link text-white text-sm-center" href="#">Estudiantes</a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
    </footer>
    <br>

<!-- JavaScript Libraries -->
<script src="./JS/script.js"></script>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>

<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js" integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3" crossorigin="anonymous">
</script>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.min.js" integrity="sha384-7VPbUDkoPSGFnVtYi0QogXtr74QeVeeIs99Qfg5YCF+TidwNdjvaKZX19NZ/e6oz" crossorigin="anonymous">
</script>
</body>

</html>