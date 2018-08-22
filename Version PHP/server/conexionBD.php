<?php

    $host = "localhost";
    $user = 'root';
    $password = '';
    $Base = 'nextu_agenda_db';
    $Conexion;
    function IniciarConexion(){
       try{
       $GLOBALS['Conexion']=mysqli_connect($GLOBALS['host'],$GLOBALS['user'],$GLOBALS['password'],$GLOBALS['Base']);
       }catch(PDOException $e){
       }

    }

    function  DesactivarConexion(){
        $GLOBALS['Conexion']->close();
    }
?>
