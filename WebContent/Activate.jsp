<%@page import="com.Pickof"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Activating pick off algorithm</title>
</head>
<body>


<%
out.println("Executing Anagram");
long StartTime=0; 
long EndTime=0;
 com.Pickof p=new Pickof();
 		System.out.println("Executing Java Anagram Detection Sequence 1");
 		
        StartTime=System.nanoTime();
        for(int i=0;i<1000000;i++) {
            System.out.println(p.anagramSolution("heart", "earth"));
            System.out.println(p.anagramSolution("printer", "reprint"));
            System.out.println(p.anagramSolution("painter", "repaint"));
            System.out.println(p.anagramSolution("reserve", "reverse"));
            System.out.println(p.anagramSolution("section", "notices"));
            System.out.println(p.anagramSolution("shotgun", "gunshot"));
            System.out.println(p.anagramSolution("drawback", "backward"));
            System.out.println(p.anagramSolution("marching", "charming"));
            System.out.println(p.anagramSolution("oriental", "relation"));
            System.out.println(p.anagramSolution("sunlight", "hustling"));
        }
        EndTime=System.nanoTime();
        %>
        
        <%=(((EndTime-StartTime)/100000000)/60.0)%>
        </body>
</html>