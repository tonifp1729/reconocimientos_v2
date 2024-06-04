<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <title>Reconociendo</title>
        <link rel="stylesheet" href="src\css\estilosFeedback.css">
    </head>
    <body>
        <div class="container">
            <div id="recs">
                <?php
                    if(isset($datosVista['data']['reconocimientos']) && !empty($datosVista['data']['reconocimientos'])) {
                        $contador=1;
                        foreach($datosVista['data']['reconocimientos'] as $reconocimiento) {
                            echo '<a href="index.php?controlador=creconocimientos&action=mostrarReconocimiento&idReconocimiento=' . $reconocimiento . '&num='. $contador .'">Reconocimiento #' . $contador++ . '</a><br>';
                        }
                    } else {
                        echo '<p>No tienes reconocimientos.</p>';
                    }
                ?>
            </div>
            <a href="index.php?controlador=cisesion&action=irindice">Volver</a>
        </div>
    </body>
</html>