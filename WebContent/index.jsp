<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.util.LinkedList,uninorte.Persona, uninorte.Conexion"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Usuarios</title>
</head>
<body>
<%

Conexion conexion = new Conexion();
if(conexion.abrirConexion()){
	out.println("Conectado");
	out.println(conexion.consultar("select * from users"));
	conexion.cerrarConexion();
}else{
	out.println("No conectado");
}

Persona persona1 = new Persona("Victor", "Peralta");
Persona persona2 = new Persona("Manuel", "Martinez");
Persona persona3 = new Persona("Juan", "Perez");

LinkedList<Persona> listaPersonas = new LinkedList<Persona>();

listaPersonas.add(persona1);
listaPersonas.add(persona2);
listaPersonas.add(persona3);

for (Persona persona : listaPersonas) {
	out.println(persona.getNombreCompleto());
}

%>
</body>
</html>