<?php

    include 'conexionBD.php';
    CrearUsuarios("jesus arizmendi","2000/01/12","chuy@gmail.com","123456");
    CrearUsuarios("jose armendariz","1990/01/15","pepe@gmail.com","123456");
    CrearUsuarios("juan armendarini","1980/01/06","juan@gmail.com","123456");

    function CrearUsuarios($Nombre,$FechaNacimiento,$UserName,$Password){
    IniciarConexion();
    $Consulta="Select * from usuario where Username='".$UserName."'";
    $Resultado= mysqli_num_rows($GLOBALS['Conexion']->query($Consulta));
    if($Resultado==0){
        $Consulta = "INSERT INTO usuario (Nombre, FechaNacimiento, Username, Password)
        VALUES ('".$Nombre."', '".$FechaNacimiento."', '".$UserName."', '".password_hash($Password, PASSWORD_BCRYPT)."')";

        if ($GLOBALS['Conexion']->query($Consulta) === TRUE) {
            echo "New record created successfully";
        } else {
            echo "Error: " . $sql . "<br>" . $GLOBALS['Conexion']->error;
        }
    }
    DesactivarConexion();
    }
 ?>
