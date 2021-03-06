<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <title>Añadir emprendimiento</title>
    </head>
    <body>
        <div class="container-fluid">
            <g:if test="${flash.errorEmprendimiento == true}">
                <div class="alert alert-danger alert-dismissible" role="alert">
                    <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                            Error de carga, intente nuevamente, error: ${mensajeError}
                </div>
            </g:if>
            <div class="row">
                <div class="col-sm-4"></div>
                <div class="col-sm-4">    
                    <h1>Añadir emprendimiento</h1>
                    <g:form action="save" enctype="multipart/form-data">
                        <div class="form-group">
                            <label for="nombre">Nombre</label>
                            <g:textField name="nombre" class="form-control" id="nombre" placeholder="nombre" value="${emprendimiento.nombre}"/>
                        </div>
                        <div class="form-group">
                            <label for="direccion">Dirección</label>
                            <g:textField name="direccion" class="form-control" id="direccion" placeholder="direccion" value="${emprendimiento.direccion}"/>
                        </div>
                        <div class="form-row form-group">
                            <div class="col">
                                <label for="latitud">Latitud</label>
                                <g:textField name="latitud" class="form-control" id="latitud" placeholder="latitud" value="${emprendimiento.latitud}"/>
                            </div>
                            <div class="col">
                                <label for="longitud">Longitud</label>
                                <g:textField name="longitud" class="form-control" id="longitud" placeholder="longitud" value="${emprendimiento.longitud}"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="foto">Imagen</label>
                            <input type="file" name="foto" id="foto" value="${emprendimiento.foto}"/>
                        </div>
                        <div class="form-row form-group">
                            <div class="col">
                                <label for="rubro">Rubro</label>
                                <g:if test="${emprendimiento.rubro==null}">
                                    <g:select name="rubro" required="true" from="${rubros}" optionKey="id" noSelection="${['null':'Rubro...']}" class="form-control custom-select" id="rubro" placeholder="rubro"/>
                                </g:if>
                                <g:else>
                                    <g:select name="rubro" required="true" from="${rubros}" optionKey="id"  value="${emprendimiento.rubro.id}" noSelection="${['null':'Rubro...']}" class="form-control custom-select" id="rubro" placeholder="rubro"/>
                                </g:else>
                            </div>
                            <div class="col">
                                <label for="ambito">Ambito</label>
                                <g:if test="${emprendimiento.ambito==null}">
                                    <g:select name="ambito" required="true" from="${ambitos}" optionKey="id" noSelection="${['null':'Ámbito...']}" class="form-control custom-select" id="ambito" placeholder="ambito"/>
                                </g:if>
                                <g:else>
                                    <g:select name="ambito" required="true" from="${ambitos}" optionKey="id"  value="${emprendimiento.ambito.id}"noSelection="${['null':'Ámbito...']}" class="form-control custom-select" id="ambito" placeholder="ambito"/>
                                </g:else>
                            </div>
                        </div>
                        <div class="form-group">
                            <g:checkBox name="habilitado" value="${false}" />
                            <label for="habilitado" value="${emprendimiento.habilitado}">Habilitado</label>
                        </div>
                        <g:actionSubmit class="btn btn-primary" value="Añadir" action="save"/>
                    </g:form>
                </div>
                <div class="col-sm-4"></div>
            </div>
        </div>
    </body>
</html>

