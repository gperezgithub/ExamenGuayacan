<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="css/estilos_formulario.css">
</head>
<body>
    <form method="post" autocomplete="off">
        <img src="images/logo.svg" alt="">
        
        
        <div class="input-group">
            Ingrese su codigo de asociado
            <div class="input-container">
                <input type="text" name="codigo_asociado" placeholder="Codigo de Asociado">
                <i class="fa-solid fa-user"></i>
            </div>

            <div class="input-container">
                <input type="text" name="primer_nombre" placeholder="Primer nombre">
                <i class="fa-solid fa-user"></i>
            </div>

            <div class="input-container">
                <input type="text" name="segundo_nombre" placeholder="Segundo nombre">
                <i class="fa-solid fa-user"></i>
            </div>

            <div class="input-container">
                <input type="text" name="primer_apelllido" placeholder="Primer apellido">
                <i class="fa-solid fa-user"></i>
            </div>

            <div class="input-container">
                <input type="text" name="segundo_apelllido" placeholder="Segundo apellido">
                <i class="fa-solid fa-user"></i>
            </div>

            <div class="input-container">
                <input type="date" name="fecha_nacimiento" placeholder="Fecha de Nacimiento">
                <i class="fa-solid fa-user"></i>
            </div>

            <div class="input-container">
                <input type="text" name="dpi" placeholder="Numero de DPI">
                <i class="fa-solid fa-user"></i>
            </div>

            <div class="input-container">
                <input type="text" name="rtu" placeholder="Numero de NIT">
                <i class="fa-solid fa-user"></i>
            </div>

            <div class="input-container">
                <input type="text" name="direccion" placeholder="Direccion">
                <i class="fa-solid fa-user"></i>
            </div>

            <div class="input-container">
                <input type="text" name="referencia_direccion" placeholder="Referencia de direccion">
                <i class="fa-solid fa-user"></i>
            </div>

            <div class="input-container">
                <input type="phone" name="telefono" placeholder="Telefono">
                <i class="fa-solid fa-phone"></i>
            </div>
           

            <div class="input-container">
                <input type="email" name="email" placeholder="Correo Electronico">
                <i class="fa-solid fa-envelope"></i>
            </div>

            


            <a href="#">Terminos y condiciones</a>


            <input name="send" type="submit" class="btn" value="Contactar a Asesor">
        </divZ>



    </form>


        <?php
            include ("send2.php")

        ?>



</body>
</html>