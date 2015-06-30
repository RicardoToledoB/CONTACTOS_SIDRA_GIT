<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html lang="es">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../favicon.ico">
    <title>Contactos 2015</title>
    <link href="bootstrap/css/bootstrap-theme.css" rel="stylesheet" type="text/css"/>
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
    <link href="bootstrap/css/micss.css" rel="stylesheet" type="text/css"/>
    <link href="bootstrap/dist/css/formValidation.min.css" rel="stylesheet" type="text/css"/>
    <link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
    
  </head>
  <body>
      
  <nav class="navbar-inverse navbar-fixed-top">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="#"><span class="glyphicon glyphicon-phone-alt" aria-hidden="true"></span> Contactos Telefonicos 2015</a>
        </div>
        <div id="navbar" class="collapse navbar-collapse">
            <ul class="nav navbar-nav">
        
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">Menu <span class="caret"></span></a>
          <ul class="dropdown-menu" role="menu">
             <li><a href="usuarios.jsp"><span class="glyphicon glyphicon-user" aria-hidden="true"></span> Usuarios</a></li>
            <li><a href="departamentos.jsp"><span class="glyphicon glyphicon-briefcase" aria-hidden="true"></span> Departamentos</a></li>
            <li><a href="establecimientos.jsp"><span class="glyphicon glyphicon-home" aria-hidden="true"> Establecimientos</a></li>
            <li class="divider"></li>
            <li><a href="#">Reportes</a></li>
           
          </ul>
        </li>
      </ul>  
            
          <ul class="nav navbar-nav navbar-right">
            <li><a href="#">Creditos</a></li>
            <li><a href="#">Cerrar Sesion <span class="glyphicon glyphicon-log-out" aria-hidden="true"></span></a></li>
           <!-- <li><a href="#about">About</a></li>
            <li><a href="#contact">Contact</a></li>-->
          </ul>
        </div>
      </div>
    </nav>
       <!-- VENTANA AGREGAR USUARIO -->
   
        <!-- CIERRE VENTANA AGREGAR USUARIO -->
    <div class="container">
        <!-- Modal Bootstrap -->
        <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
          <div class="modal-dialog">
            <div class="modal-content">
              <!--<div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="myModalLabel">Modal title</h4>
              </div>-->
              <div class="modal-body">
                    <div class="panel panel-primary">
                <div class="panel-heading"><span class="glyphicon glyphicon-user" aria-hidden="true"></span> Crear Nuevo Usuario</div>
                 <form id="usuariosForm" method="post" action="#">
          
                <div class="panel-body">
                    <div class="row">
                        <div class="col-xs-6">
                            
                           <div class="form-group">
                                <label class="control-label" for="nombres">Nombres</label>
                                <input type="text" class="form-control" id="nombres" name="nombres" placeholder="Nombres">
                           </div>
                            <div class="form-group">
                                <label for="apepat">Apellido Paterno</label>
                                <input type="text" class="form-control" id="apepat" placeholder="Apellido Paterno">
                           </div>
                            <div class="form-group">
                                <label for="apemat">Apellido Materno</label>
                                <input type="text" class="form-control" id="apemat" placeholder="Apellido Materno">
                           </div>
                             <div class="form-group">
                                <label for="profesion">Profesion</label>
                                <input type="text" class="form-control" id="profesion" placeholder="Profesion">
                             </div>
                             <div class="form-group">
                                <label for="cargo">Cargo</label>
                                <input type="text" class="form-control" id="cargo" placeholder="Cargo">
                             </div>
                        
                        </div>
                       
                        <div class="col-xs-6">
                           <div class="form-group">
                                <label for="telefono">Telefono</label>
                                <input type="text" class="form-control" id="telefono" placeholder="Telefono">
                             </div>
                             <div class="form-group">
                                <label for="celular">Celular</label>
                                <input type="text" class="form-control" id="celular" placeholder="Celular">
                             </div>
                             <div class="form-group">
                                <label for="correo">Correo</label>
                                <input type="text" class="form-control" id="correo" placeholder="Correo">
                             </div>
                            <div class="form-group">
                                <label for="establecimiento">Establecimiento</label>
                                <select class="form-control">
                                    <option>1</option>
                                    <option>2</option>
                                    <option>3</option>
                                    <option>4</option>
                                    <option>5</option>
                                  </select>
                             </div>
                             <div class="form-group">
                                <label for="departamento">Departamento</label>
                                <select class="form-control">
                                    <option>1</option>
                                    <option>2</option>
                                    <option>3</option>
                                    <option>4</option>
                                    <option>5</option>
                                  </select>
                             </div>
                        </div>
                      </div>
                    <button type="submit" id="Agregar" class="btn btn-primary"><span class="glyphicon glyphicon-floppy-save" ></span> Guardar</button>
                    </form>
                     
                </div>
                
            </div>
              </div>
              <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>
                
              </div>
            </div>
          </div>
        </div>
        <!-- FIN MODAL Bootstrap -->
        
       
        <br>
        <div class="row">
             <div class="row">
                
                        
                   <div class="col-md-12"> 
                       <ol class="breadcrumb">
                        <li><a href="#">Contactos</a></li>

                        <li class="active">Usuario</li>
                       </ol>
                       
                   </div> 
                    
             </div>
            <div class="row">
                        <div class="col-md-12">
                          <div class="panel panel-default">
                            <div class="panel-heading"><span class="glyphicon glyphicon-user" aria-hidden="true"></span> Usuarios <span class="label label-danger">Total 20</span></div>
                            <div class="panel-body">
                                <div class="row">
                                    <div class="col-md-9">
                                        <button id="add" class="btn btn-primary" type="submit" data-toggle="modal" data-target="#myModal"><span  class="glyphicon glyphicon-plus" aria-hidden="true" ></span> Nuevo Usuario</button>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="input-group">
                                             <span class="glyphicon glyphicon-search input-group-addon" aria-hidden="true"></span>
                                             <input type="text" class="form-control" placeholder="Buscar...">
                                        </div>
                                    </div>
                                </div><br>
                                <div class="panel panel-primary">
                                    <div class="panel-heading">Listado Usuarios</div>
                            
                                <div class="table-responsive">
                                <table class="table table-striped table-hover table-bordered table-condensed" >
                                     <thead>
                                        <tr class="info">
                                          <th class="col-md-1">#</th>
                                          <th class="col-md-3">Nombres</th>
                                          <th class="col-md-1">1er Apellido</th>
                                          <th class="col-md-1">Telefono</th>
                                          <th class="col-md-1">Departamento</th>
                                          <th class="col-md-1">Establecimiento</th>
                                          <th class="col-md-4"></th>
                                        </tr>
                                      </thead>
                                      <tbody>
                                        <tr>
                                          <th scope="row" class="col-md-1">1</th>
                                          <td class="col-md-3">Ricardo Ignacio</td>
                                          <td class="col-md-1">Toledo</td>
                                          <td class="col-md-1">Barria</td>
                                          <td class="col-md-1">Barria</td>
                                          <td class="col-md-1">Barria</td>
                                          <td class="col-md-4">
                                              <div class="btn-group" role="group">
                                                <button type="button" class="btn btn-primary"><span class="glyphicon glyphicon-search" aria-hidden="true"></span></button>
                                                <button type="button" class="btn btn-primary"><span class="glyphicon glyphicon-edit" aria-hidden="true"></span></button>
                                                <button type="button" class="btn btn-primary"><span class="glyphicon glyphicon-trash" aria-hidden="true"></span></button>
                                              </div>
                                          </td>
                                         </tr>
                                         <tr>
                                          <th scope="row" class="col-md-1">1</th>
                                          <td class="col-md-3">Ricardo Ignacio</td>
                                          <td class="col-md-1">Toledo</td>
                                          <td class="col-md-1">Barria</td>
                                          <td class="col-md-1">Barria</td>
                                          <td class="col-md-1">Barria</td>
                                          <td class="col-md-4">
                                              <div class="btn-group" role="group">
                                                <button type="button" class="btn btn-primary"><span class="glyphicon glyphicon-search" aria-hidden="true"></span></button>
                                                <button type="button" class="btn btn-primary"><span class="glyphicon glyphicon-edit" aria-hidden="true"></span></button>
                                                <button type="button" class="btn btn-primary"><span class="glyphicon glyphicon-trash" aria-hidden="true"></span></button>
                                              </div>
                                          </td>
                                         </tr>
                                         <tr>
                                          <th scope="row" class="col-md-1">1</th>
                                          <td class="col-md-3">Ricardo Ignacio</td>
                                          <td class="col-md-1">Toledo</td>
                                          <td class="col-md-1">Barria</td>
                                          <td class="col-md-1">Barria</td>
                                          <td class="col-md-1">Barria</td>
                                          <td class="col-md-4">
                                              <div class="btn-group" role="group">
                                                <button type="button" class="btn btn-primary"><span class="glyphicon glyphicon-search" aria-hidden="true"></span></button>
                                                <button type="button" class="btn btn-primary"><span class="glyphicon glyphicon-edit" aria-hidden="true"></span></button>
                                                <button type="button" class="btn btn-primary"><span class="glyphicon glyphicon-trash" aria-hidden="true"></span></button>
                                              </div>
                                          </td>
                                         </tr>
                                         <tr>
                                          <th scope="row" class="col-md-1">1</th>
                                          <td class="col-md-3">Ricardo Ignacio</td>
                                          <td class="col-md-1">Toledo</td>
                                          <td class="col-md-1">Barria</td>
                                          <td class="col-md-1">Barria</td>
                                          <td class="col-md-1">Barria</td>
                                          <td class="col-md-4">
                                              <div class="btn-group" role="group">
                                                <button type="button" class="btn btn-primary"><span class="glyphicon glyphicon-search" aria-hidden="true"></span></button>
                                                <button type="button" class="btn btn-primary"><span class="glyphicon glyphicon-edit" aria-hidden="true"></span></button>
                                                <button type="button" class="btn btn-primary"><span class="glyphicon glyphicon-trash" aria-hidden="true"></span></button>
                                              </div>
                                          </td>
                                         </tr>
                                         <tr>
                                          <th scope="row" class="col-md-1">1</th>
                                          <td class="col-md-3">Ricardo Ignacio</td>
                                          <td class="col-md-1">Toledo</td>
                                          <td class="col-md-1">Barria</td>
                                          <td class="col-md-1">Barria</td>
                                          <td class="col-md-1">Barria</td>
                                          <td class="col-md-4">
                                              <div class="btn-group" role="group">
                                                <button type="button" class="btn btn-primary"><span class="glyphicon glyphicon-search" aria-hidden="true"></span></button>
                                                <button type="button" class="btn btn-primary"><span class="glyphicon glyphicon-edit" aria-hidden="true"></span></button>
                                                <button type="button" class="btn btn-primary"><span class="glyphicon glyphicon-trash" aria-hidden="true"></span></button>
                                              </div>
                                          </td>
                                         </tr>
                                       </tbody>
                                    </table>
                            </div>
                                </div>    
                            </div>
                             <div class="panel-footer">Detalle listado usuarios</div>
                           
                        </div>
                    </div> 
            </div>
        </div>
    </div>
    <script src="bootstrap/js/jquery.min.js" type="text/javascript"></script>
    <script src="bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
    <script src="http://code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
    <script src="bootstrap/dist/js/formValidation.min.js" type="text/javascript"></script>
    <script src="bootstrap/dist/js/framework/bootstrap.min.js" type="text/javascript"></script>
    <script src="bootstrap/dist/js/language/es_CL.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(function() {
             
               function add(){
                    var nombres=$nombres.val();
                    //Console.log("Nombre:"+nombres);
                    
                }
                function edit(){
                    
                    
                }
                function update(){
                    
                    
                }
                function show(){
                    
                    
                }
                //VALIDACION DE FORMULARIOS
                var validator=$('#usuariosForm').formValidation({
                        framework: 'bootstrap',
                        icon: {
                         valid: 'glyphicon glyphicon-ok',
                         invalid: 'glyphicon glyphicon-remove',
                         validating: 'glyphicon glyphicon-refresh'
                        },
                        fields: {
                        nombres: {
                            validators: {
                                notEmpty: {
                                    message: 'El nombre es Obligatorio'
                                },
                                stringLength: {
                                    min: 6,
                                    max: 30,
                                    message: 'Debe contener entre 6 y menor que 30 caracteres'
                                },
                                regexp: {
                                    regexp: /^[a-zA-Z0-9_]+$/,
                                    message: 'Caracter invalido!'
                                }
                             }
                            }
                        }
                    }).on('success.form.fv', function(e) { //$("#myModal").modal('hide');
                            e.preventDefault();
                            var $form = $(e.target),
                            fv    = $form.data('fusuarioForm');
                            // Use Ajax to submit form data
                            var $valor="ALGO";
                            $.ajax("SrvEstablecimientos?variable="+$valor,{
                                type: "post",   
                                dataType: 'json',
                                data: $form.serialize(),
                                contentType: 'application/json',
                                mimeType: 'application/json',
                                success: function(result) {
                                  console.log("El valor enviado es:", result);
                                  //$("#myModal").modal('hide');

                                },
                                error: function(result) {
                                  console.error("Errores:", result);
                                }
                            });
                     });
         });
        
    </script>
  </body>
</html>
