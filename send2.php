<?php
    include("conexion.php");

    if(isset($_POST['send'])){
        if(
            strlen($_POST['codigo_asociado'])>=1 &&
            strlen($_POST['primer_nombre'])>=1 &&
            strlen($_POST['segundo_nombre'])>=1 &&
            strlen($_POST['primer_apelllido'])>=1 &&
            strlen($_POST['segundo_apelllido'])>=1 &&
            strlen($_POST['fecha_nacimiento'])>=1 &&
            strlen($_POST['dpi'])>=1 &&
            strlen($_POST['rtu'])>=1 &&
            strlen($_POST['direccion'])>=1 &&
            strlen($_POST['referencia_direccion'])>=1 &&
            strlen($_POST['telefono'])>=1 &&
            strlen($_POST['email'])>=1 
        ){
            $codigo_asociado = trim($_POST['codigo_asociado']);
            $primer_nombre = trim($_POST['primer_nombre']);
            $segundo_nombre = trim($_POST['segundo_nombre']);
            $primer_apelllido = trim($_POST['primer_apelllido']);
            $segundo_apelllido = trim($_POST['segundo_apelllido']);
            $fecha_nacimiento = trim($_POST['fecha_nacimiento']);
            $dpi = trim($_POST['dpi']);
            $rtu = trim($_POST['rtu']);
            $direccion = trim($_POST['direccion']);
            $referencia_direccion = trim($_POST['referencia_direccion']);
            $telefono = trim($_POST['telefono']);
            $email = trim($_POST['email']);
           
            $consulta= "INSERT INTO tb_clientes(Numero_Asociado,Nombre1,Nombre2,Nombre3,Apellido1,Apellido2,Fecha_Nacimiento,DPI,Rtu,Numero_Cuenta,Direccion,Referencia_Direccion,Telefono1,Telefono2,Correo_Electronico)
                        values ('$codigo_asociado','$primer_nombre','$segundo_nombre','','$primer_apelllido','$segundo_apelllido','$fecha_nacimiento','$dpi','$rtu','','$direccion','$referencia_direccion','$telefono','','$email')";
            
            
            $resultado=mysqli_query($conex,$consulta);

            if($consulta){
                ?>
                    <h3 class="succes" > Tu informacion se ha enviado</h3>
                <?php
                
            } else{
                ?>
                    <h3 class="error" >Ocurrio un error</h3>
                <?php
            }
        }

         else {
            ?> 
                <h3 class="error">Llena todos los campos</h3> 
            <?php
         

    }

    
}

        


    
?>