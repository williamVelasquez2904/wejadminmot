<?php 
class conectar
  {
      //VARIABLES PARA CONECTARME AL SERVIDOR 
    var $link;

  function conectar()
  {
      $this->conex(); 
  }
     function conex()
    {
      $servidor ="localhost";
      $bd ="wejsolut_wejadminmot";
      $usuario  ="wejsolut_wejadmin";
      $password ="Wejs2505";  
      $this->link = mysql_connect($servidor,$usuario,$password);
          if (!$this->link)
              die("Error al conectarse con MySQL");
       mysql_select_db($bd, $this->link) or die("error DB: ".mysql_error());
    }
    
function sentencia($sql)
         {
return mysql_query($sql,$this->link);
         }
} // DE LA CLASE
?>
