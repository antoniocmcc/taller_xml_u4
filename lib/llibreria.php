<?php 
function connectar()
{

 mysql_connect("mysql11.000webhost.com","a2785298_xml","ac1702"); // Connexió servidor Mysql
 mysql_select_db("a2785298_xml"); // Escollim Base de Dades

//mysql_connect("mysql1.000webhost.com","a5500181_xml","12345"); // Connexió servidor Mysql
// mysql_select_db("a5500181_xml"); // Escollim Base de Dades
}


function loginar($usuari,$password)
    {
        $sql = "SELECT * FROM usuaris WHERE usuari='$usuari' and contrasenya= MD5('$password') ";
		echo $sql ; 
        $result = mysql_query($sql);
        if (mysql_num_rows($result) >0)  return 1; 
		else return 0 ; 
        
    }
function logout()
{
    session_start();
	unset($_SESSION["usuari"]); 
    session_unset(); 
    header('location: index.php?accio=');
}

?>

 