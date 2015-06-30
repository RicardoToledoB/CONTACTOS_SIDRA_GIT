<%@page import="javax.persistence.EntityManager"%>
<%@page import="javax.persistence.Persistence"%>
<%@page import="javax.persistence.EntityManagerFactory"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ page import="net.sf.jasperreports.engine.*" %>
<%@ page import="java.io.File" %>
<%@ page import="java.io.FileInputStream" %>
<%@ page import="java.io.FileNotFoundException" %>
<%@ page import="java.io.InputStream" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.SQLException" %>
<%@ page contentType="text/pdf" pageEncoding="UTF-8" %>

<html>
    <head>
        <title>Listado Funcionarios Magallanes</title>
    </head>
    <body>
       <%
            try{
             EntityManagerFactory emf1 = Persistence.createEntityManagerFactory("jpaCRUD");
             EntityManager em1 = emf1.createEntityManager();
             em1.getTransaction().begin();
             java.sql.Connection conexion = em1.unwrap(java.sql.Connection.class);
             File reportFile = new File(application.getRealPath("//reportes//report3.jasper"));
             byte[] bytes = JasperRunManager.runReportToPdf(reportFile.getPath (),null,conexion);
              response.setContentType("application/pdf");
             response.setContentLength(bytes.length);
             ServletOutputStream ouputStream = response.getOutputStream(); 
             ouputStream.write(bytes, 0, bytes.length);
             ouputStream.flush();
             ouputStream.close();
             /*response.setContentType("application/pdf");
             response.setHeader("Content-Disposition", "inline;filename='"+"Listado"+".pdf");
             response.setContentLength(bytes.length);
             ServletOutputStream ouputStream = response.getOutputStream(); 
             ouputStream.write(bytes, 0, bytes.length);
             ouputStream.flush();
             ouputStream.close();
             emf1.close();
             em1.close();*/
             
             }catch(Exception ex){
                out.println(""+ex.getMessage());
              }
        %>
           
       
    </body>
</html>
