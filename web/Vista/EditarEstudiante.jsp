
<%@page import="Modelo.Estudiante"%>
<%@page import="ModeloDAO.EstudianteDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Editar Estudiante</title>
    </head>
    <body>
        <div>
            <%
                EstudianteDAO estudianteDAO = new EstudianteDAO();
                int s_idestudiante = Integer.valueOf(request.getParameter("f_idestudiante"));
                Estudiante estudiante = (Estudiante)estudianteDAO.buscarestudiante(s_idestudiante);
            %>
            <form name="EditarEstudianteForm" action="Controlador" method="get">
                <table border="1">
                    <thead>
                        <tr>
                            <th colspan="2">Editar Estudiante</th>                            
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>Nombre</td>
                            <td><input type="text" name="f_nombre" value="<% out.println(estudiante.getNombre()); %>" maxlength="30" size="20" /></td>
                        </tr>
                        <tr>
                            <td>Apellido</td>
                            <td><input type="text" name="f_apellidos" value="<% out.println(estudiante.getApellidos()); %>" maxlength="40" size="20" /></td>
                        </tr>
                        <tr>
                            <td>DNI</td>
                            <td><input type="text" name="f_dni" value="<% out.println(estudiante.getDni()); %>" maxlength="8" size="8" /></td>
                        </tr>
                        <tr>
                            <td>Codigo</td>
                            <td><input type="text" name="f_codigo" value="<% out.println(estudiante.getCodigo()); %>" maxlength="12" size="12" /></td>
                        </tr>
                        <tr>
                            <td>Estado</td>
                            <td><input type="text" name="f_estado" value="<% out.println(estudiante.getEstado()); %>" maxlength="1" size="2" /></td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <input type="submit" value="Editar Estudiante" name="editar" />
                                <input type="hidden" value="editarestudiante02" name="f_accion"/>
                                <input type="hidden" value="<% out.print(estudiante.getIdestudiante()); %>" name="f_idestudiante">

                            </td>
                        </tr>

                    </tbody>
                </table>


            </form>
        </div>
    </body>
</html>
