<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <title>Usuario</title>
    </head>
    <body>
        <div class="container-fluid">
        <div class="row">
            <div class="col-sm-4"></div>
            <div class="col-sm-4">
                <h1>${usuario.nick}</h1>
                <p><b>Nombre: </b>${usuario.nombre} ${usuario.apellido}</p>
                <p><b>Email: </b>${usuario.email}</p>
                <g:each in="${usuario.contactos}">
                    <p><b>${it.tipoContacto}: </b>${it.valor}</p>
                </g:each>
            </div>
            <div class="col-sm-4"></div>
        </div>
        <!-- nick apellido nombre contraseña -->
        </div>
    </body>
</html>

