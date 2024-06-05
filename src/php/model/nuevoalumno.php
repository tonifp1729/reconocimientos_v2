<?php

    require_once 'db.php';

    class NuevoAlumno {
        private $conexion;

        public function __construct() {
            //Creamos un objeto e inicializamos la conexión a la base de datos
            $db = new Conexiondb();
            $this->conexion = $db->conexion;
        }

        public function insertarAlumno($nombre, $correo, $contrasena, $web, $tipo) {
            //Cifrar la contraseña antes de almacenarla
            $hashed_password = password_hash($contrasena, PASSWORD_DEFAULT);

            //Consulta SQL para insertar al nuevo alumno en la bd
            $SQL = "INSERT INTO alumno (nombre, correo, contrasenia, webReconocimiento, tipoAlumno) VALUES (?, ?, ?, ?, ?);";
            
            //Preparamos la consulta
            $consulta = $this->conexion->prepare($SQL);
            
            //Vinculamos los parámetros a la consulta
            $consulta->bind_param("sssss", $nombre, $correo, $hashed_password, $web, $tipo);
            
            //Ejecutamos la consulta
            $consulta->execute();
            
            //Cerramos la consulta
            $consulta->close();
        }

        /*
         *  Devuelve el listado de tipos de alumno 
         **/
        public function listarTipos() {
            $SQL = "SELECT idTipoAlumno, descripcionTipo FROM tiposalumno";
            $resultado = $this->conexion->query($SQL);

            $tipos = [];
            while ($tipo = $resultado->fetch_assoc()) {
                $tipos[] = $tipo;
            }
            return $tipos;
        }
    }

?>
