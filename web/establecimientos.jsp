<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<html lang="es">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../favicon.ico">
    <title>Contactos 2015</title>
    <link href="bootstrap/css/bootstrap-theme.css" rel="stylesheet" type="text/css"/>
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
    <link href="bootstrap/css/footable.core.css" rel="stylesheet" type="text/css"/>
    <link href="bootstrap/css/micss.css" rel="stylesheet" type="text/css"/>
    <link href="bootstrap/dist/css/formValidation.min.css" rel="stylesheet" type="text/css"/>
    <link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
     <link rel="shortcut icon" href="img/fh_java.ico" />
  </head>
  <body>
      
  <nav class="navbar-inverse navbar-fixed-top">
      <div class="container col-md-12">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="#"><span class="glyphicon glyphicon-phone-alt" aria-hidden="true"></span> Contactos Sidra 2015</a>
        </div>
        <div id="navbar" class="collapse navbar-collapse">
            <ul class="nav navbar-nav">
        
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">Menu <span class="caret"></span></a>
          <ul class="dropdown-menu" role="menu">
            <li><a href="usuarios.jsp"><span class="glyphicon glyphicon-user" aria-hidden="true"></span> Usuarios</a></li>
            <li><a href="departamentos.jsp"><span class="glyphicon glyphicon-briefcase" aria-hidden="true"></span> Departamentos</a></li>
            <li><a href="establecimientos.jsp"><span class="glyphicon glyphicon-home" aria-hidden="true"></span> Establecimientos</a></li>
            <li class="divider"></li>
            <li><a href="reporte.jsp"><span class="glyphicon glyphicon-print" aria-hidden="true"></span> Reportes</a></li>
           
          </ul>
        </li>
      </ul>  
            
          <ul class="nav navbar-nav navbar-right">
              
            <li><a href="#">Creditos <span class="glyphicon glyphicon-question-sign" aria-hidden="true"></span></a></li>
            <li><a href="#">Cerrar Sesion <span class="glyphicon glyphicon-log-out" aria-hidden="true"></span></a></li>
           <!-- <li><a href="#about">About</a></li>
            <li><a href="#contact">Contact</a></li>-->
          </ul>
        </div>
      </div>
    </nav>
       <!-- VENTANA AGREGAR USUARIO -->
   
        <!-- CIERRE VENTANA AGREGAR USUARIO -->
    <div class="container col-md-12">
        <!-- INICIO MODAL ELIMINAR -->
        <div class="modal fade bs-example-modal-sm"  id="modalEliminar" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-sm">
              <div class="modal-content">
                 <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title" id="myModalLabel">Eliminar</h4>
                  </div>
                  <div class="modal-body">
                     ¿ Desea Eliminar Establecimiento ?
                  </div> 
                  
               <div class="modal-footer">
                    <button type="button" class="btn btn-primary btn-Eliminar">Eliminar</button>
                    <button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>
               </div>
              </div>
            </div>
        </div>
        <!-- FIN MODAL ELIMINAR -->
        
           <!-- MODAL EDITAR-->
        <div class="modal  fade modalEditar" id="modalEditar" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
          <div class="modal-dialog">
            <div class="modal-content">
              <!--<div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="myModalLabel">Modal title</h4>
              </div>-->
              <div class="modal-body">
                    <div class="panel panel-primary">
                <div class="panel-heading"><span class="glyphicon  glyphicon-home" aria-hidden="true"></span> Editar Establecimiento</div>
                 <form id="editarEstablecimiento" method="post" action="#">
          
                <div class="panel-body">
                    <div class="row">
                        <div class="col-xs-12">
                            
                           <div class="form-group">
                                <label class="control-label" for="codigoestablecimiento">Codigo Establecimiento</label>
                                <input type="text" class="form-control" id="codigoestablecimiento" name="codigoestablecimiento" placeholder="Codigo Establecimiento" readonly>
                           </div>
                            <div class="form-group">
                                <label class="control-label" for="nombreesta1">Nombre Establecimiento</label>
                                <input type="text" class="form-control" id="nombreesta1" name="nombreesta1" placeholder="Nombre Establecimiento">
                           </div>
                           
                        
                        </div>
                       
                       
                      </div>
                    <button type="submit" id="Editar" class="btn btn-primary"><span class="glyphicon glyphicon-floppy-save" ></span> Editar</button>
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
        <!-- FIN MODAL EDITAR -->
        
        <!-- MODAL AGREGAR-->
        <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
          <div class="modal-dialog">
            <div class="modal-content">
              <!--<div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="myModalLabel">Modal title</h4>
              </div>-->
              <div class="modal-body">
                    <div class="panel panel-primary">
                <div class="panel-heading"><span class="glyphicon  glyphicon-home" aria-hidden="true"></span> Crear Nuevo Establecimiento</div>
                 <form id="establecimientosForm" method="post" action="#">
          
                <div class="panel-body">
                    <div class="row">
                        <div class="col-xs-12">
                            
                           <div class="form-group">
                                <label class="control-label" for="nombreesta">Nombre Establecimiento</label>
                                <input type="text" class="form-control" id="nombreesta" name="nombreesta" placeholder="Nombre Establecimiento">
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
        <!-- FIN MODAL AGREGAR-->
        
       
        <br>
        <div class="row">
             <div class="row">
                
                        
                   <div class="col-md-12"> 
                       <ol class="breadcrumb">
                        <li><a href="#">Contactos</a></li>

                        <li class="active">Establecimientos</li>
                       </ol>
                       
                   </div> 
                    
             </div>
            <div class="row">
                        <div class="col-md-12">
                          <div class="panel panel-default">
                            <div class="panel-heading"><span class="glyphicon glyphicon-home" aria-hidden="true"></span> Establecimientos <span class="label label-danger">SSM</span></div>
                            <div class="panel-body">
                                <div class="row">
                                    <div class="col-md-9">
                                        <button id="add" class="btn btn-primary" type="submit" data-toggle="modal" data-target="#myModal"><span  class="glyphicon glyphicon-plus" aria-hidden="true" ></span> Nuevo Establecimiento</button>
                                    </div>
                                    <!--<div class="col-md-3">
                                        <div class="input-group">
                                             <span class="glyphicon glyphicon-search input-group-addon" aria-hidden="true"></span>
                                             <input type="text" class="form-control" placeholder="Buscar...">
                                        </div>
                                    </div>-->
                                </div><br>
                                <div class="panel panel-primary">
                                    <div class="panel-heading"><span class="glyphicon glyphicon-th-list" ></span> Listado Establecimientos</div>
                            
                                <div class="table-responsive table-responsive toggle-circle-filled">
                                    
                                <table class="table table-striped table-hover footable table-bordered table-condensed" >
                                     <thead>
                                        <tr class="info">
                                            <!--<th class="col-md-1">#</th>-->
                                          <th data-toggle="true" class="col-md-3">Nombre Establecimiento</th>
                                          
                                          <th data-hide="tablet,phone" class="col-md-4"></th>
                                        </tr>
                                      </thead>
                                      <tbody id="miTabla">
                                       
                                                                        
                                         
                                       </tbody>
                                </table>
                            </div>
                                    
                                </div> 
                               <!-- <div class="row">
                                    <div class="col-md-12">
                                         <nav>
                                                    <ul class="pagination">
                                                      <li>
                                                        <a href="#" aria-label="Previous">
                                                          <span aria-hidden="true">&laquo;Anterior</span>
                                                        </a>
                                                      </li>
                                                      <li><a href="#">1</a></li>
                                                      <li><a href="#">2</a></li>
                                                      <li><a href="#">3</a></li>
                                                      <li><a href="#">4</a></li>
                                                      <li><a href="#">5</a></li>
                                                      <li>
                                                        <a href="#" aria-label="Next">
                                                          <span aria-hidden="true">Siguiente&raquo;</span>
                                                        </a>
                                                      </li>
                                                    </ul>
                                         </nav>
                                    </div>
                                </div>-->
                                
                                
                                
                                
                            </div>
                             <div class="panel-footer">Detalle listado establecimientos</div>
                           
                        </div>
                    </div> 
            </div>
        </div>
    </div>
    <script src="bootstrap/js/jquery.min.js" type="text/javascript"></script>
    <script src="bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
    <script src="http://code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
    <script src="bootstrap/js/footable.js" type="text/javascript"></script>
    <script src="//www.utc.edu/_resources/Kickstrap/apps/footable/js/footable.sort.js" type="text/javascript"></script>
    
    <script src="bootstrap/dist/js/formValidation.min.js" type="text/javascript"></script>
    <script src="bootstrap/dist/js/framework/bootstrap.min.js" type="text/javascript"></script>
    <script src="bootstrap/dist/js/language/es_CL.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(function() {
            //CRUD RICARDO IGNACIO TOLEDO BARRIA //
                //EJECUTAMOS EL METODO MOSTRAR POR DEFECTO
                show();
                function search(){
                                
                }
                //LIMPIAR FORMULARIOS Y VALIDACIONES
                function resetall(){
                    //Reseteamos el formulario  
                    $('#establecimientosForm').formValidation();
                    $('#establecimientosForm').data('formValidation').resetForm();
                    $('#establecimientosForm')[0].reset();
                    //FIN RESETEO FORMULARIO
                }
                //MOSTRAR ESTABLECIMIENTOS
                function show(){
                    //SE CREAR VARIABLE PARAMETRO SHOW PARA DIFERENCIAR EN EL SERVLET
                    $.ajax("SrvEstablecimientos?show="+"true",{
                            type: "post",   
                            dataType: 'json',
                            contentType: 'application/json',
                            mimeType: 'application/json',
                            success: function(result) {
                              //SETEAMOS VARIABLE GLOBAL DE FUNCION SUCCESS
                              var idEliminar;
                              var idActualizar;
                              console.log("El valor enviado es:", result);
                                $("#miTabla").empty();
                                $.each(result, function( index, value ) {
                                    console.log(value.nombre);
                                    //<td scope="row" class="col-md-1">'+value.id_establecimiento+'</td>
                                    $("#miTabla").append('<tr><tr>'+'\n\
                                                                       '+'<td class="col-md-7">'+value.nombre+'</td>'+'\n\
                                                                       '+'<td class="col-md-4"><div class="btn-group" role="group"> <button type="button" class="btn btn-primary view" title="'+value.id_establecimiento+'" disabled><span class="glyphicon glyphicon-search" aria-hidden="true"></span></button>  <button type="button" class="btn btn-success edit" title="'+value.id_establecimiento+'" data-toggle="modal" data-target=".modalEditar"><span class="glyphicon glyphicon-edit" aria-hidden="true"></span></button><button type="button" class="btn btn-danger  dell" disabled title="'+value.id_establecimiento+'" data-toggle="modal" data-target=".bs-example-modal-sm"><span class="glyphicon glyphicon-trash"  aria-hidden="true"></span></button></div></td>\n\
                                                                       '+'</tr></tr>');
                                });
                                $('.footable').footable().trigger('footable_initialize');
                                //CAPTURAMOS EL ID
                                $('.dell').click(function(){
                                    idEliminar=$(this).attr('title');
                                });
                                //AL PRESIONAR ELIMINAR DEL DIALOG ELIMINAMOS
                                $('.btn-Eliminar').click(function(){
                                    console.log(idEliminar);
                                     $.ajax("SrvEstablecimientos?eliminar="+idEliminar,{
                                        type: "post",   
                                        dataType: 'json',
                                        //data: $form.serialize(),
                                        contentType: 'application/json',
                                        mimeType: 'application/json',
                                        success: function(result) {
                                            console.log("Success"+result);
                                            $("#modalEliminar").modal('hide');
                                            show();

                                        },
                                        error: function(result) {
                                          console.error("Errores:"+ result);
                                        }
                                    });
                                });
                                //FIN DE ELIMINAR
                                
                                // LLENADO DE CAJAS DE TEXTO ACTUALIZAR
                                $('.edit').click(function(){
                                    idActualizar=$(this).attr('title');
                                    $("#codigoestablecimiento").val(idActualizar);
                                    $.ajax("SrvEstablecimientos?editar="+idActualizar,{
                                        type: "post",   
                                        dataType: 'json',
                                        //data: $form.serialize(),
                                        contentType: 'application/json',
                                        mimeType: 'application/json',
                                        success: function(result) {
                                            console.log("Success"+result);
                                             $.each(result, function( index, value ) {
                                                $("#nombreesta1").val(""+value.nombre);
                                             });
                                        },
                                        error: function(result) {
                                          console.error("Errores:"+ result);
                                        }
                                    });
                                    console.log(idActualizar);
                                });
                                //FIN LLENADO CAJAS DE TEXTO ACTUALIZAR 
                                $('.view').click(function(){
                                    var id=$(this).attr('title');
                                    console.log(id);
                                });
                              $('.footable').footable().trigger('footable_initialize');
                            },
                            error: function(result) {
                              console.error("Errores:", result);
                            }
                        });
                    
                }
                //VALIDACION DE FORMULARIO AGREGAR 
                var validator=$('#establecimientosForm').formValidation({
                        framework: 'bootstrap',
                        icon: {
                         valid: 'glyphicon glyphicon-ok',
                         invalid: 'glyphicon glyphicon-remove',
                         validating: 'glyphicon glyphicon-refresh'
                        },
                        fields: {
                        nombreesta: {
                            validators: {
                                notEmpty: {
                                    message: 'El nombre es Obligatorio'
                                }
                             }
                            }
                        }
                    }).on('success.form.fv', function(e) { //$("#myModal").modal('hide');
                            e.preventDefault();
                            var $form = $(e.target),
                            fv    = $form.data('usuarioForm');
                    
                            // Use Ajax to submit form data
                            var $nombres=$("#nombreesta").val();
                            $.ajax("SrvEstablecimientos?nombres="+$nombres,{
                                type: "post",   
                                dataType: 'json',
                                data: $form.serialize(),
                                contentType: 'application/json',
                                mimeType: 'application/json',
                                success: function(result) {
                                 // console.log("El valor enviado es:", result);
                                  $("#myModal").modal('hide');
                                  //LLAMAMOS AL METODO RESET ALL
                                  resetall();
                                  //LLAMAMOS AL METODO MOSTRAR
                                  show();

                                },
                                error: function(result) {
                                  //console.error("Errores:", result);
                                }
                            });
                     });
                     //FIN FORMULARIO VALIDA AGREGAR 
                     
                     //VALIDACION DE FORMULARIO EDITAR 
                var validator=$('#editarEstablecimiento').formValidation({
                        framework: 'bootstrap',
                        icon: {
                         valid: 'glyphicon glyphicon-ok',
                         invalid: 'glyphicon glyphicon-remove',
                         validating: 'glyphicon glyphicon-refresh'
                        },
                        fields: {
                        nombreesta1: {
                            validators: {
                                notEmpty: {
                                    message: 'El nombre es Obligatorio'
                                }
                             }
                            }
                        }
                    }).on('success.form.fv', function(e) { //$("#myModal").modal('hide');
                            e.preventDefault();
                            var $form = $(e.target),
                            fv    = $form.data('usuarioForm');
                    
                            // Use Ajax to submit form data
                            var $id=$("#codigoestablecimiento").val();
                            var $nombres=$("#nombreesta1").val();
                            $.ajax("SrvEstablecimientos?edit="+$id+"&nombres="+$nombres,{
                                type: "post",   
                                dataType: 'json',
                                data: $form.serialize(),
                                contentType: 'application/json',
                                mimeType: 'application/json',
                                success: function(result) {
                                   console.log("El valor enviado es:", result);
                                   $("#modalEditar").modal('hide');
                                  //LLAMAMOS AL METODO RESET ALL
                                  //resetall();
                                  //LLAMAMOS AL METODO MOSTRAR
                                  show();

                                },
                                error: function(result) {
                                  console.error("Errores:"+ result);
                                }
                            });
                     });
                     //FIN FORMULARIO VALIDA EDITAR
         });
        
    </script>
  </body>
</html>
