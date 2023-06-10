# FLUTTER GENESIS

## INSTRUCCIONES DE LA INSTALACIÓN

---


### Clonamos el repositorio e ingresamos al directorio:

```sh
git clone https://github.com/Anarpego/flutter-prueba-genesis.git
cd cd flutter-prueba-genesis
```

### NOTA ADICIONAL:

> Al ser datos de los clientes el .json de assets/data/ no esta en el repositorio por favor crear el directorio data en assets y el json con nombre "customers.json" para que funcione la aplicación.

### Instalación de las dependencias

```sh
flutter pub get
```
---

### EJECUTAR LA APLICACIÓN
---

### Iniciar la aplicación web en el puerto 5000:

```sh
 flutter run -d chrome --web-hostname localhost --web-port 5000
```

## OPCIONAL

## Sign In con Google
---

### 1. Crear cuenta en Firebase.

### 2. Crear un proyecto en firebase (se enlazará a GCP).

### 3. Añadir un app al proyecto (en este caso web).

### 4. Añadir a tu archivo web/index.html la tag:

```sh
<meta name="google-signin-client_id" content="YOUR_GOOGLE_SIGN_IN_OAUTH_CLIENT_ID.apps.googleusercontent.com">
```

### 5. Reemplazar el content=  con tu ClientId en las ouath credentials de GCP, lo puedes copiar en esta ventana:

![copyclientidoauth](https://github.com/Anarpego/flutter-prueba-genesis/assets/57972305/9d3edf38-7e8a-479a-a35c-501b0e1492e1)


### 6. Asegurarse que esta habilitada la API " Google People API " en GCP:

![googlepeopleapi](https://github.com/Anarpego/flutter-prueba-genesis/assets/57972305/a753e57d-01b1-4c47-a31d-aa4094632f8d)


### 7. En la pestaña "OAuth consent screen" del mismo servicio de credenciales oauth (donde se copió el client ID), publicar la aplicación, primero seleccionando el tipo de usuario externo, así:

![usertypoauth](https://github.com/Anarpego/flutter-prueba-genesis/assets/57972305/64b735c8-2451-422a-8ebf-3c45b0c32b83)


### 8 Agregar correos en la siguiente ventana despues de cambiar el tipo de usuario, guardar y continuar ignorando las siguientes dos ventanas hasta llegar a la ventana donde se cambia el estado de la aplicación:

![publishingapp](https://github.com/Anarpego/flutter-prueba-genesis/assets/57972305/1a6bdc52-302d-45cb-9476-8d2773ce143b)


### Listo, ahora ya debería funcionar el paquete de Google Sign In junto a toda la aplicación.



