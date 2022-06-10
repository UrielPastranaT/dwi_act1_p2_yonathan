<%-- 
    Document   : index
    Created on : 10/06/2022, 10:46:00 AM
    Author     : Yonathan Uriel Pastrana Tepectzin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        
        <title>Calificaciones</title>
    </head>
    <body>
        <%
            String matricula[] = new String[10];
            matricula[0] = "57211000101";
            matricula[1] = "57211000102";
            matricula[2] = "57211000103";
            matricula[3] = "57211000104";
            matricula[4] = "57211000105";
            matricula[5] = "57211000106";
            matricula[6] = "57211000107";
            matricula[7] = "57211000108";
            matricula[8] = "57211000109";
            matricula[9] = "57211000110";
            
            String nombre[] = new String[10];
            nombre[0] = "Victor Manuel";
            nombre[1] = "Yonathan Uriel";
            nombre[2] = "Daniel";
            nombre[3] = "Yosef Cecil";
            nombre[4] = "Kevin Ulises";
            nombre[5] = "Verónica";
            nombre[6] = "Amado";
            nombre[7] = "Roberto Leonel";
            nombre[8] = "Luis Gustavo";
            nombre[9] = "Susano Eduardo";
            
            String apellidoPaterno[] = new String[10];
            apellidoPaterno[0] = "Bautista";
            apellidoPaterno[1] = "Pastrana";
            apellidoPaterno[2] = "Chino";
            apellidoPaterno[3] = "Flores";
            apellidoPaterno[4] = "Garcia";
            apellidoPaterno[5] = "Marín";
            apellidoPaterno[6] = "Perez";
            apellidoPaterno[7] = "Salgado";
            apellidoPaterno[8] = "Tacuba";
            apellidoPaterno[9] = "Moras";
            
            String apellidoMaterno[] = new String[10];
            apellidoMaterno[0] = "Nievez";
            apellidoMaterno[1] = "Tepectzin";
            apellidoMaterno[2] = "Bello";
            apellidoMaterno[3] = "Martinez";
            apellidoMaterno[4] = "Camacho";
            apellidoMaterno[5] = "Jorge";
            apellidoMaterno[6] = "Cochine";
            apellidoMaterno[7] = "De La Sancha";
            apellidoMaterno[8] = "Bonifacio";
            apellidoMaterno[9] = "Gatica";
            
            double ddi[] = new double[10];
            ddi[0] = 9.0;
            ddi[1] = 10.0;
            ddi[2] = 8.0;
            ddi[3] = 7.0;
            ddi[4] = 10.0;
            ddi[5] = 10.0;
            ddi[6] = 8.0;
            ddi[7] = 9.0;
            ddi[8] = 10.0;
            ddi[9] = 7.0;
            
            double dwi[] = new double[10];
            dwi[0] = 8.0;
            dwi[1] = 10.0;
            dwi[2] = 7.0;
            dwi[3] = 9.0;
            dwi[4] = 8.0;
            dwi[5] = 7.0;
            dwi[6] = 10;
            dwi[7] = 10;
            dwi[8] = 8.0;
            dwi[9] = 7.0;
            
            double ecbd[] = new double[10];
            ecbd[0] = 10.0;
            ecbd[1] = 10.0;
            ecbd[2] = 9.0;
            ecbd[3] = 8.0;
            ecbd[4] = 9.0;
            ecbd[5] = 10.0;
            ecbd[6] = 9.0;
            ecbd[7] = 8.0;
            ecbd[8] = 9.0;
            ecbd[9] = 10.0;
            
            double promedio[] = new double[10];
            
            //Ciclo for para calcular los 10 promedios
            for(int i = 0; i < matricula.length; i++)
            {
                promedio[i] = (ddi[i] + dwi[i] +ecbd[i])/3;
            }
            
        %>
        
        <table class="table" border="3">
            <thead class="thead-dark text-center">
                <tr>
                    <th scope="col">MATRICULA</th>
                    <th scope="col">ALUMNO</th>
                    <th scope="col">DDI</th>
                    <th scope="col">DWI</th>
                    <th scope="col">ECBD</th>
                    <th scope="col">PROM</th>
                </tr>
            </thead>
        <%
            //Ciclo for para imprimir los 10 registros
            for(int i = 0; i < matricula.length; i++)
            {
                out.println(""
                + "<tbody>"
                +   "<tr>"
                +       "<td class= 'text-center'>" + matricula[i] + "</td>"
                +       "<td>"+ nombre[i] + " " + apellidoPaterno[i] + " " + apellidoMaterno[i] + "</td>"
                +       "<td class= 'text-center'>" + ddi[i] + "</td>"
                +       "<td class= 'text-center'>" + dwi[i] + "</td>"
                +       "<td class= 'text-center'>" + ecbd[i] + "</td>"
                +       "<td class= 'text-center'>" + promedio[i] + "</td>"
                +   "</tr>"
                + "</tbody>"
                );
            }
        %>
        </table>
        
        
        <!-- Imprime los 10 registros pero es más código -->
        
        <!--<table class="table" border="2">
            <thead class="thead-dark">
                <tr>
                    <th scope="col">MATRICULA</th>
                    <th scope="col">NOMBRE</th>
                    <th scope="col">APELLIDO PATERNO</th>
                    <th scope="col">APELLIDO MATERNO</th>
                    <th scope="col">DDI</th>
                    <th scope="col">DWI</th>
                    <th scope="col">ECBD</th>
                    <th scope="col">PROM</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td><%=matricula[0]%></td>
                    <td><%=nombre[0]%></td>
                    <td><%=apellidoPaterno[0]%></td>
                    <td><%=apellidoMaterno[0]%></td>
                    <td><%=ddi[0]%></td>
                    <td><%=dwi[0]%></td>
                    <td><%=ecbd[0]%></td>
                    <td><%=promedio[0]%></td>
                </tr>
                <tr>
                    <td><%=matricula[1]%></td>
                    <td><%=nombre[1]%></td>
                    <td><%=apellidoPaterno[1]%></td>
                    <td><%=apellidoMaterno[1]%></td>
                    <td><%=ddi[1]%></td>
                    <td><%=dwi[1]%></td>
                    <td><%=ecbd[1]%></td>
                    <td><%=promedio[1]%></td>
                </tr>
                <tr>
                    <td><%=matricula[2]%></td>
                    <td><%=nombre[2]%></td>
                    <td><%=apellidoPaterno[2]%></td>
                    <td><%=apellidoMaterno[2]%></td>
                    <td><%=ddi[2]%></td>
                    <td><%=dwi[2]%></td>
                    <td><%=ecbd[2]%></td>
                    <td><%=promedio[2]%></td>
                </tr>
                <tr>
                    <td><%=matricula[3]%></td>
                    <td><%=nombre[3]%></td>
                    <td><%=apellidoPaterno[3]%></td>
                    <td><%=apellidoMaterno[3]%></td>
                    <td><%=ddi[3]%></td>
                    <td><%=dwi[3]%></td>
                    <td><%=ecbd[3]%></td>
                    <td><%=promedio[3]%></td>
                </tr>
                <tr>
                    <td><%=matricula[4]%></td>
                    <td><%=nombre[4]%></td>
                    <td><%=apellidoPaterno[4]%></td>
                    <td><%=apellidoMaterno[4]%></td>
                    <td><%=ddi[4]%></td>
                    <td><%=dwi[4]%></td>
                    <td><%=ecbd[4]%></td>
                    <td><%=promedio[4]%></td>
                </tr>
                <tr>
                    <td><%=matricula[5]%></td>
                    <td><%=nombre[5]%></td>
                    <td><%=apellidoPaterno[5]%></td>
                    <td><%=apellidoMaterno[5]%></td>
                    <td><%=ddi[5]%></td>
                    <td><%=dwi[5]%></td>
                    <td><%=ecbd[5]%></td>
                    <td><%=promedio[5]%></td>
                </tr>
                <tr>
                    <td><%=matricula[6]%></td>
                    <td><%=nombre[6]%></td>
                    <td><%=apellidoPaterno[6]%></td>
                    <td><%=apellidoMaterno[6]%></td>
                    <td><%=ddi[6]%></td>
                    <td><%=dwi[6]%></td>
                    <td><%=ecbd[6]%></td>
                    <td><%=promedio[6]%></td>
                </tr>
                <tr>
                    <td><%=matricula[7]%></td>
                    <td><%=nombre[7]%></td>
                    <td><%=apellidoPaterno[7]%></td>
                    <td><%=apellidoMaterno[7]%></td>
                    <td><%=ddi[7]%></td>
                    <td><%=dwi[7]%></td>
                    <td><%=ecbd[7]%></td>
                    <td><%=promedio[7]%></td>
                </tr>
                <tr>
                    <td><%=matricula[8]%></td>
                    <td><%=nombre[8]%></td>
                    <td><%=apellidoPaterno[8]%></td>
                    <td><%=apellidoMaterno[8]%></td>
                    <td><%=ddi[8]%></td>
                    <td><%=dwi[8]%></td>
                    <td><%=ecbd[8]%></td>
                    <td><%=promedio[8]%></td>
                </tr>
                <tr>
                    <td><%=matricula[9]%></td>
                    <td><%=nombre[9]%></td>
                    <td><%=apellidoPaterno[9]%></td>
                    <td><%=apellidoMaterno[9]%></td>
                    <td><%=ddi[9]%></td>
                    <td><%=dwi[9]%></td>
                    <td><%=ecbd[9]%></td>
                    <td><%=promedio[9]%></td>
                </tr>
            </tbody>
        </table>-->
        
    </body>
</html>
