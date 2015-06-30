<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html lang="es">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../favicon.ico">
    <link href="bootstrap/css/footable.core.css" rel="stylesheet" type="text/css"/>
    <title>Contactos 2015</title>
    <link href="bootstrap/css/bootstrap-theme.css" rel="stylesheet" type="text/css"/>
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
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
    <div class="container col-md-12 ">
        <!-- INICIO MODAL ELIMINAR -->
        <div class="modal fade bs-example-modal-sm"  id="modalEliminar" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-sm">
              <div class="modal-content">
                 <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title" id="myModalLabel">Eliminar</h4>
                  </div>
                  <div class="modal-body">
                     ¿ Desea Eliminar Usuario ?
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
            <div class="modal-content ">
              <!--<div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="myModalLabel">Modal title</h4>
              </div>-->
              <div class="modal-body">
                    <div class="panel panel-primary">
                <div class="panel-heading"><span class="glyphicon  glyphicon-home" aria-hidden="true"></span> Editar Usuario</div>
                 <form id="editarEstablecimiento" method="post" action="#">
          
                <div class="panel-body">
                    <div class="row">
                        <div class="col-xs-12">
                            
                           <div class="form-group">
                                <label class="control-label" for="codigofuncionarioedit">Codigo Funcionario</label>
                                <input type="text" class="form-control" id="codigofuncionarioedit" name="codigofuncionarioedit" placeholder="Codigo Funcionario" readonly>
                           </div>
                            <div class="form-group">
                                <label class="control-label" for="nombrefuncionarioedit">Nombre Funcionario</label>
                                <input type="text" class="form-control" id="nombrefuncionarioedit" name="nombrefuncionarioedit" placeholder="Nombre Funcionario">
                           </div>
                            <div class="form-group">
                                <label class="control-label" for="apellidopaternoedit">Apellido Paterno</label>
                                <input type="text" class="form-control" id="apellidopaternoedit" name="apellidopaternoedit" placeholder="Apellido Paterno">
                           </div>
                            <div class="form-group">
                                <label class="control-label" for="apellidomaternoedit">Apellido Materno</label>
                                <input type="text" class="form-control" id="apellidomaternoedit" name="apellidomaternoedit" placeholder="Apellido Materno">
                           </div>
                            <div class="form-group">
                                <label class="control-label" for="cargoedit">Cargo</label>
                                <input type="text" class="form-control" id="cargoedit" name="cargoedit" placeholder="Cargo">
                           </div>
                             <div class="form-group">
                                <label class="control-label" for="profesionedit">Profesion</label>
                                <input type="text" class="form-control" id="profesionedit" name="profesionedit" placeholder="Profesion">
                           </div>
                           
                        
                        </div>
                        <!--///////////////////////////////-->
                        <div class="col-xs-12">
                       
                           <div class="form-group">
                                <label class="control-label" for="correoedit">Correo</label>
                                <input type="text" class="form-control" id="correoedit" name="correoedit" placeholder="Correo Electronico">
                           </div>
                           <div class="form-group">
                                <label class="control-label" for="telefonoedit">Telefono</label>
                                <input type="text" class="form-control" id="telefonoedit" name="telefonoedit" placeholder="Telefono Minsal">
                           </div> 
                            <div class="form-group">
                                <label class="control-label" for="celularedit">Celular</label>
                                <input type="text" class="form-control" id="celularedit" name="celularedit" placeholder="celular">
                           </div> 
                           <div class="form-group">
                                <label class="control-label" for="establecimientoedit">Seleccion Establecimiento</label>
                                
                                <div class="input-group">
                                 <select class="form-control" id="establecimientoedit" aria-describedby="basic-addon2">
                                  
                                </select>
                                    <span class="input-group-addon" id="basic-addon2">Editar</span>
                                </div>
                                
                                
                           </div>
                           <div class="form-group">
                                <label class="control-label" for="departamentoedit">Seleccion Departamento</label>
                                <select class="form-control" id="departamentoedit">
                                  
                                </select>
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
                <div class="panel-heading"><span class="glyphicon  glyphicon-home" aria-hidden="true"></span> Crear Nuevo Usuario</div>
                 <form id="establecimientosForm" method="post" action="#">
          
                <div class="panel-body">
                    <div class="row">
                        <div class="col-xs-12">
                            
                           <div class="form-group" >
                                <label class="control-label " for="nombrefuncionario">Nombre Funcionario</label>
                                <input type="text" class="form-control " id="nombrefuncionario" name="nombrefuncionario" placeholder="Nombre Funcionario">
                           </div>
                            <div class="form-group ">
                                <label class="control-label " for="apellidopaterno">Apellido Paterno</label>
                                <input type="text" class="form-control " id="apellidopaterno" name="apellidopaterno" placeholder="Apellido Paterno">
                           </div>
                            <div class="form-group ">
                                <label class="control-label " for="apellidomaterno">Apellido Materno</label>
                                <input type="text" class="form-control " id="apellidomaterno" name="apellidomaterno" placeholder="Apellido Materno">
                           </div>
                            <div class="form-group ">
                                <label class="control-label" for="cargo">Cargo</label>
                                <input type="text" class="form-control c" id="cargo" name="cargo" placeholder="Cargo">
                           </div>
                             <div class="form-group ">
                                <label class="control-label " for="profesion">Profesion</label>
                                <input type="text" class="form-control " id="profesion" name="profesion" placeholder="Profesion">
                           </div>
                        </div>
                        <!--/////////////////////////-->
                        <div class="col-xs-12">
                       
                           <div class="form-group ">
                                <label class="control-label " for="correo">Correo</label>
                                <input type="text" class="form-control " id="correo" name="correo" placeholder="Correo Electronico">
                           </div>
                           <div class="form-group">
                                <label class="control-label " for="telefono">Telefono</label>
                                <input type="text" class="form-control " id="telefono" name="telefono" placeholder="Telefono Minsal">
                           </div> 
                            <div class="form-group ">
                                <label class="control-label " for="celular">Celular</label>
                                <input type="text" class="form-control " id="celular" name="celular" placeholder="celular">
                           </div> 
                           <div class="form-group">
                                <label class="control-label " for="establecimiento">Seleccion Establecimiento</label>
                                <select class="form-control " id="nombreestablecimiento">
                                  
                                </select>
                           </div>
                           <div class="form-group ">
                                <label class="control-label " for="departamento">Seleccion Departamento</label>
                                <select class="form-control " id="departamento">
                                  
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
        <!-- FIN MODAL AGREGAR-->
        
       
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
                            <div class="panel-heading"><span class="glyphicon glyphicon-home" aria-hidden="true"></span> Usuario <span class="label label-danger">SSM</span></div>
                            <div class="panel-body">
                                <div class="row">
                                    <div class="col-md-6">
                                        <button id="add" class="btn btn-primary" type="submit" data-toggle="modal" data-target="#myModal"><span  class="glyphicon glyphicon-plus" aria-hidden="true" ></span> Nuevo Usuario</button>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="input-group">
                                             <span class="glyphicon glyphicon-search input-group-addon" aria-hidden="true"></span>
                                             <input type="text" class="form-control" id="txtBuscar" placeholder="Buscar Por: (nombre,apellido,telefono,departamentos,establecimientos)">
                                        </div>
                                    </div>
                                </div><br>
                                <div class="panel panel-primary">
                                    <div class="panel-heading"><span class="glyphicon glyphicon-th-list" ></span>  Listado Usuarios</div>
                            
                                <div class="table-responsive toggle-circle-filled ">
                                    
                                <table class="table table-striped table-hover footable table-bordered table-condensed">
                                     <thead>
                                          <tr class="info">
                                         <!--  <th  class="col-md-1">#</th>-->
                                          <th  data-toggle="true" class="col-md-1">Nombres</th>
                                          <th class="col-md-1">1er Apellido</th>
                                          <th data-hide="phone" class="col-md-1">Telefono</th>
                                          <th  data-hide="phone"  class="col-md-2">Departamento</th>
                                          <th data-hide="tablet,phone"   class="col-md-3">Establecimiento</th>
                                          <th data-hide="tablet,phone"  class="col-md-3">Acciones</th>
                                        </tr>
                                         <!--<tr class="info">
                                            <th class="col-md-1"><input type="text"  class="form-control col-md-1" id="txtBuscar_id"></th>
                                          <th class="col-md-2"><input type="text" class="form-control col-md-2" id="txtBuscar_nombres"></th>
                                          <th class="col-md-1"><input type="text" class="form-control col-md-1" id="txtBuscar_apepat"></th>
                                          <th class="col-md-1"><input type="text" class="form-control col-md-2" id="txtBuscar_telefono"></th>
                                          <th class="col-md-2"><input type="text" class="form-control col-md-2" id="txtBuscar_departamento"></th>
                                          <th class="col-md-2"><input type="text" class="form-control col-md-2" id="txtBuscar_establecimiento"></th>
                                          <th class="col-md-3"></th>
                                        </tr>-->
                                       
                                      </thead>
                                      <tbody id="miTabla">
                                       
                                                                        
                                         
                                       </tbody>
                                </table>
                            </div>
                                
                                </div> 
                                <!--<div class="row">
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
                                </div>
                            
                                
                                
                                
                            </div>-->
                             <div class="panel-footer">Detalle listado Usuarios</div>
                           
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
             //$("table").footable();
                //CRUD RICARDO IGNACIO TOLEDO BARRIA //
                //EJECUTAMOS EL METODO MOSTRAR POR DEFECTO
                show();
               
                llenarComboEstablecimiento();
                $("#departamento").prop( "disabled", true );
               
                //EDITAR USUARIOS ESTABLECIMIENTO LLENADO 
                $("#basic-addon2").click(function(){
                    $("#establecimientoedit").empty();
                    $("#departamentoedit").empty();
                    $.ajax("SrvDepartamentos?llenarComboEstablecimiento="+"true",{
                                        type: "post",   
                                        dataType: 'json',
                                        //data: $form.serialize(),
                                        contentType: 'application/json',
                                        mimeType: 'application/json',
                                        success: function(result) {
                                            $("#establecimientoedit").append('<option>Seleccionar</option>');
                                            //$("#nombreestablecimiento").append('<option>Seleccionar</option>');
                                            console.log("Success"+result);
                                             $.each(result, function( index, value ) {
                                                $("#establecimientoedit").append('<option value='+value.id_establecimiento+'>'+value.nombre+'</option>');
                                             });
                                        },
                                        error: function(result) {
                                          console.error("Errores:"+ result);
                                        }
                        });
                });
                
                //LLENAMOS LA LISTA DE ESTABLECIMIENTOS SEGUN ESTABLECIMIENTO CARGADO
                $("#establecimientoedit").change(function(){
                    $("#departamentoedit").empty();
                      
                    //ESTABLECIMIENTO CAMBIADO.
                    var $id_establecimiento=$(this).val();
                    //LLENAMOS DEPARTAMENTO
                     $.ajax("SrvUsuarios?llenarComboDepartamento="+"true"+"&id_establecimiento="+$id_establecimiento,{
                                        type: "post",   
                                        dataType: 'json',
                                        //data: $form.serialize(),
                                        contentType: 'application/json',
                                        mimeType: 'application/json',
                                        success: function(result) {
                                            if(result==""){
                                                $("#departamentoedit").prop( "disabled", true ); 
                                            }else{
                                                $("#departamentoedit").prop( "disabled", false ); 
                                            console.log("Success"+result);
                                             $.each(result, function( index, value ) {
                                                $("#departamentoedit").append('<option value='+value.id_departamento+'>'+value.nombre+'</option>');
                                             });
                                            }
                                        },
                                        
                                        error: function(result) {
                                          $("#departamentoedit").prop( "disabled", true );  
                                          console.error("Errores:"+ result);
                                        }
                        });
                });
                
                // FIN EDITAR ESTABLECIMIENTO + DEPARTAMENTO EDIT //
                
                
                
                
                
                
                
                
                
                
                
                
                //BUSQUEDA
            
                $("#txtBuscar").keyup(function(){
                  // $("table").footable();
                   
                   var txtBusqueda=$(this).val(); 
                   $.ajax("SrvUsuarios?buscar="+txtBusqueda,{
                                        type: "post",   
                                        dataType: 'json',
                                        //data: $form.serialize(),
                                        contentType: 'application/json',
                                        mimeType: 'application/json',
                                        success: function(result) {
                                             $("#miTabla").empty();
                                            
                                             
                                             console.log("Success"+result);
                                             
                                             $.each(result, function( index, value ) {
                                                //'<td  scope="row" class="col-md-1">'+value.id_funcionario+'</td>
                                                 $("#miTabla").append('<tr><tr>'+'\n\
                                                                       '+'<td class="col-md-1">'+value.nombres+'</td>'+'\n\
                                                                       '+'<td class="col-md-1">'+value.apepat+'</td>'+'\n\
                                                                       '+'<td class="col-md-1">'+value.telefono+'</td>'+'\n\
                                                                       '+'<td class="col-md-2">'+value.departamentoNombre+'</td>'+'\n\
                                                                       '+'<td  class="col-md-3">'+value.establecimientoNombre+'</td>'+'\n\
                                                                       '+'<td  class="col-md-3"><div class="btn-group" role="group"> <button type="button" class="btn btn-primary view"  disabled title="'+value.id_funcionario+'"><span class="glyphicon glyphicon-search" aria-hidden="true"></span></button>  <button type="button" class="btn btn-success edit" title="'+value.id_funcionario+'" data-toggle="modal" data-target=".modalEditar"><span class="glyphicon glyphicon-edit" aria-hidden="true"></span></button><button type="button" class="btn btn-danger disabled dell" title="'+value.id_funcionario+'" data-toggle="modal" data-target=".bs-example-modal-sm"><span class="glyphicon glyphicon-trash"  aria-hidden="true"></span></button></div></td>\n\
                                                                       '+'</tr></tr>');
        
                                                                       
                                             });
                                            
                                             
                                             
                                             //CAPTURAMOS EL ID
                                            $('.dell').click(function(){
                                                idEliminar=$(this).attr('title');
                                            });
                                             //AL PRESIONAR ELIMINAR DEL DIALOG ELIMINAMOS
                                            $('.btn-Eliminar').click(function(){
                                                console.log(idEliminar);
                                                 $.ajax("SrvUsuarios?eliminar="+idEliminar,{
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
                                            //LLENADO DE CAJAS DE TEXTO ACTUALIZAR
                                            $('.edit').click(function(){
                                                idActualizar=$(this).attr('title');
                                                $("#codigofuncionarioedit").val(idActualizar);
                                                $.ajax("SrvUsuarios?editar="+idActualizar,{
                                                    type: "post",   
                                                    dataType: 'json',
                                                    //data: $form.serialize(),
                                                    contentType: 'application/json',
                                                    mimeType: 'application/json',
                                                    success: function(result) {
                                                        $("#departamentoedit").empty();
                                                        $("#establecimientoedit").empty();
                                                        console.log("Success"+result);
                                                         $.each(result, function( index, value ) {


                                                            $("#nombrefuncionarioedit").val(""+value.nombres);
                                                            $("#apellidopaternoedit").val(""+value.apepat);
                                                            $("#apellidomaternoedit").val(""+value.apemat);
                                                            $("#cargoedit").val(""+value.cargo);
                                                            $("#profesionedit").val(""+value.profesion);
                                                            $("#correoedit").val(""+value.correo);
                                                            $("#telefonoedit").val(""+value.telefono);
                                                            $("#celularedit").val(""+value.celular);
                                                            $("#establecimientoedit").append('<option value='+value.idestablecimiento+'>'+value.establecimientoNombre+'</option>');
                                                            $("#departamentoedit").append('<option value='+value.iddepartamento+'>'+value.departamentoNombre+'</option>');
                                                         });
                                                    },
                                                    error: function(result) {
                                                      console.error("Errores:"+ result);
                                                    }
                                                });
                                                console.log(idActualizar);
                                            });
                                            //FIN LLENADO CAJAS DE TEXTO ACTUALIZAR
                                            $('.footable').footable().trigger('footable_initialize');
                                        },
                                        error: function(result) {
                                          console.error("Errores:"+ result);
                                        }
                                    });
                    
                });
                //LIMPIAR FORMULARIOS Y VALIDACIONES
                function resetall(){
                    //Reseteamos el formulario  
                    $('#establecimientosForm').formValidation();
                    $('#establecimientosForm').data('formValidation').resetForm();
                    $('#establecimientosForm')[0].reset();
                    $("#departamento").empty();
                    $("#departamento").prop( "disabled", true ); 
                    // FIN RESETEO FORMULARIO //
                }
                $("#nombreestablecimientoedit").click(function(){
                     $("#nombreestablecimientoedit").empty();
                     $.ajax("SrvDepartamentos?llenarNombreEstablecimiento="+"true",{
                                        type: "post",   
                                        dataType: 'json',
                                        //data: $form.serialize(),
                                        contentType: 'application/json',
                                        mimeType: 'application/json',
                                        success: function(result) {
                                            console.log("Success"+result);
                                             $.each(result, function( index, value ) {
                                                $("#nombreestablecimientoedit").append('<option value='+value.id_establecimiento+'>'+value.nombre+'</option>');
                                             });
                                        },
                                        error: function(result) {
                                          console.error("Errores:"+ result);
                                        }
                        });
                });
                
                
                //LLENAMOS LA LISTA DE LOS ESTABLECIMIENTO EN EL FORMULARIO AGREGAR
                function llenarComboEstablecimiento(){
                      $.ajax("SrvDepartamentos?llenarComboEstablecimiento="+"true",{
                                        type: "post",   
                                        dataType: 'json',
                                        //data: $form.serialize(),
                                        contentType: 'application/json',
                                        mimeType: 'application/json',
                                        success: function(result) {
                                            $("#nombreestablecimiento").append('<option>Seleccionar</option>');
                                            console.log("Success"+result);
                                             $.each(result, function( index, value ) {
                                                $("#nombreestablecimiento").append('<option value='+value.id_establecimiento+'>'+value.nombre+'</option>');
                                             });
                                        },
                                        error: function(result) {
                                          console.error("Errores:"+ result);
                                        }
                        });
                    
                }
                //LLENAMOS LA LISTA DE ESTABLECIMIENTOS SEGUN ESTABLECIMIENTO CARGADO
                $("#nombreestablecimiento").change(function(){
                    $("#departamento").empty();
                      
                    //ESTABLECIMIENTO CAMBIADO.
                    var $id_establecimiento=$(this).val();
                    //LLENAMOS DEPARTAMENTO
                     $.ajax("SrvUsuarios?llenarComboDepartamento="+"true"+"&id_establecimiento="+$id_establecimiento,{
                                        type: "post",   
                                        dataType: 'json',
                                        //data: $form.serialize(),
                                        contentType: 'application/json',
                                        mimeType: 'application/json',
                                        success: function(result) {
                                            if(result==""){
                                                $("#departamento").prop( "disabled", true ); 
                                            }else{
                                                $("#departamento").prop( "disabled", false ); 
                                            console.log("Success"+result);
                                             $.each(result, function( index, value ) {
                                                $("#departamento").append('<option value='+value.id_departamento+'>'+value.nombre+'</option>');
                                             });
                                            }
                                        },
                                        
                                        error: function(result) {
                                          $("#departamento").prop( "disabled", true );  
                                          console.error("Errores:"+ result);
                                        }
                        });
                });
                
                
                //MOSTRAR USUARIOS
                function show(){
                    //SE CREAR VARIABLE PARAMETRO SHOW PARA DIFERENCIAR EN EL SERVLET
                    $.ajax("SrvUsuarios?show="+"true",{
                            type: "post",   
                            dataType: 'json',
                            contentType: 'application/json',
                            mimeType: 'application/json',
                            success: function(result) {
                              //SETEAMOS VARIABLE GLOBAL DE FUNCION SUCCESS
                              var idEliminar;
                              var idActualizar;
                              //console.log("El valor enviado es:", result);
                              
                                $("#miTabla").empty();
                                $.each(result, function( index, value ) {
                                    console.log(value.nombre);
                                  
                                       //'<td  scope="row" class="col-md-1">'+value.id_funcionario+'</td>
                                    $("#miTabla").append('<tr><tr>'+'\n\
                                                                       '+'<td class="col-md-1">'+value.nombres+'</td>'+'\n\
                                                                       '+'<td class="col-md-1">'+value.apepat+'</td>'+'\n\
                                                                       '+'<td class="col-md-1">'+value.telefono+'</td>'+'\n\
                                                                       '+'<td class="col-md-2">'+value.departamentoNombre+'</td>'+'\n\
                                                                       '+'<td  class="col-md-3">'+value.establecimientoNombre+'</td>'+'\n\
                                                                       '+'<td  class="col-md-3"><div class="btn-group" role="group"> <button type="button" class="btn btn-primary disabled view" title="'+value.id_funcionario+'"><span class="glyphicon glyphicon-search" aria-hidden="true"></span></button>  <button type="button" class="btn btn-success edit" title="'+value.id_funcionario+'" data-toggle="modal" data-target=".modalEditar"><span class="glyphicon glyphicon-edit" aria-hidden="true"></span></button><button type="button" class="btn btn-danger disabled  dell" title="'+value.id_funcionario+'" data-toggle="modal" data-target=".bs-example-modal-sm"><span class="glyphicon glyphicon-trash"  aria-hidden="true"></span></button></div></td>\n\
                                                                       '+'</tr></tr>');
                                });
                                
                                //CAPTURAMOS EL ID
                                $('.dell').click(function(){
                                    idEliminar=$(this).attr('title');
                                });
                                //AL PRESIONAR ELIMINAR DEL DIALOG ELIMINAMOS
                                $('.btn-Eliminar').click(function(){
                                    console.log(idEliminar);
                                     $.ajax("SrvUsuarios?eliminar="+idEliminar,{
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
                                //LLENADO DE CAJAS DE TEXTO ACTUALIZAR
                                $('.edit').click(function(){
                                    idActualizar=$(this).attr('title');
                                    $("#codigofuncionarioedit").val(idActualizar);
                                    $.ajax("SrvUsuarios?editar="+idActualizar,{
                                        type: "post",   
                                        dataType: 'json',
                                        //data: $form.serialize(),
                                        contentType: 'application/json',
                                        mimeType: 'application/json',
                                        success: function(result) {
                                            $("#departamentoedit").empty();
                                            $("#establecimientoedit").empty();
                                            console.log("Success"+result);
                                             $.each(result, function( index, value ) {
                                                 
                
                                                $("#nombrefuncionarioedit").val(""+value.nombres);
                                                $("#apellidopaternoedit").val(""+value.apepat);
                                                $("#apellidomaternoedit").val(""+value.apemat);
                                                $("#cargoedit").val(""+value.cargo);
                                                $("#profesionedit").val(""+value.profesion);
                                                $("#correoedit").val(""+value.correo);
                                                $("#telefonoedit").val(""+value.telefono);
                                                $("#celularedit").val(""+value.celular);
                                                $("#establecimientoedit").append('<option value='+value.idestablecimiento+'>'+value.establecimientoNombre+'</option>');
                                                $("#departamentoedit").append('<option value='+value.iddepartamento+'>'+value.departamentoNombre+'</option>');
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
                        nombrefuncionario: {
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
                            var $nombrefuncionario=$("#nombrefuncionario").val();
                            var $apellidopaterno=$("#apellidopaterno").val();
                            var $apellidomaterno=$("#apellidomaterno").val();
                            var $cargo=$("#cargo").val();
                            var $profesion=$("#profesion").val();
                            var $correo=$("#correo").val();
                            var $telefono=$("#telefono").val();
                            var $celular=$("#celular").val();
                            var $departamento=$("#departamento").val();
                            $.ajax("SrvUsuarios?nombrefuncionario="+$nombrefuncionario+"&apellidopaterno="+$apellidopaterno+"&apellidomaterno="+$apellidomaterno+"&cargo="+$cargo+"&profesion="+$profesion+"&correo="+$correo+"&telefono="+$telefono+"&celular="+$celular+"&departamento="+$departamento+"&add=true",{
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
                        nombrefuncionarioedit: {
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
                             var $id=$("#codigofuncionarioedit").val();
                             var $nombrefuncionario=$("#nombrefuncionarioedit").val();
                             var $apellidopaterno=$("#apellidopaternoedit").val();
                             var $apellidomaterno=$("#apellidomaternoedit").val();
                             var $cargo=$("#cargoedit").val();
                             var $profesion=$("#profesionedit").val();
                             var $correo=$("#correoedit").val();
                             var $telefono=$("#telefonoedit").val();
                             var $celular=$("#celularedit").val();
                             var $establecimiento=$("#establecimientoedit").val();
                             var $departamento=$("#departamentoedit").val();
                                         
                            $.ajax("SrvUsuarios?edit="+$id+"&nombrefuncionario="+$nombrefuncionario+"&apellidopaterno="+$apellidopaterno+"&apellidomaterno="+$apellidomaterno+"&cargo="+$cargo+"&profesion="+$profesion+"&correo="+$correo+"&telefono="+$telefono+"&celular="+$celular+"&departamento="+$departamento,{
                                type: "post",   
                                dataType: 'json',
                                data: $form.serialize(),
                                contentType: 'application/json',
                                mimeType: 'application/json',
                                success: function(result) {
                                  // console.log("El valor enviado es:", result);
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
