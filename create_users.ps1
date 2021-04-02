#Variable para el id del user pool de cognito
$poolId = ""

# Se lee el archivo csv que contiene los datos
$users_list = Import-Csv ./usuarios.csv

# Se recorre las filas del csv y se almacenan los valores en las variables para usarlas en el comando de aws
foreach ($user in $users_list) {
    $idUsuario = $user.idUsuario
    $idRol = $user.idRol
    $nombre = $user.nombre
    $usuario = $user.usuario
    $password = $user.password
    $correo = $user.correo

    #Ejecuta el comando de aws para crear el usuario en cognito.
    aws cognito-idp admin-create-user --user-pool-id $poolId --username $usuario --temporary-password $password --user-attributes Name=name,Value=$nombre Name=email,Value=$correo Name=phone_number,Value="+521234567890" Name=email_verified,Value=True Name=phone_number_verified,Value=True Name=custom:idUsuario,Value=$idUsuario Name=custom:idRol,Value=$idRol --message-action SUPPRESS
}
