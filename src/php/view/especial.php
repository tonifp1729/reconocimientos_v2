<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Página secreta</title>
        <link rel="stylesheet" href="src/css/estilosFeedback.css">
    </head>
    <body>
        <div class="container">
            <?php
                echo ' <h1>¡¡Hola, '.$_SESSION['nombre'].'!!</h1>';
            ?>
            <p>Eres alguien muy guay. Aquí solo entra la gente guay.</p>
            <a href="index.php?controlador=cisesion&action=irindice">Volver</a>
        </div>
    </body>
</html>