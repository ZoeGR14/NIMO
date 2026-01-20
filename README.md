# NIMO 🐾

**NIMO** es una aplicación web integral diseñada para el cuidado y gestión de mascotas, facilitando la conexión entre dueños y veterinarios. Desarrollada por **EMN Corp**, la plataforma ofrece herramientas para el seguimiento de la salud animal, gestión de citas, adopciones y comunidad.

## 📋 Tabla de Contenidos

* [Características](https://www.google.com/search?q=%23caracter%C3%ADsticas)
* [Tecnologías Utilizadas](https://www.google.com/search?q=%23tecnolog%C3%ADas-utilizadas)
* [Requisitos Previos](https://www.google.com/search?q=%23requisitos-previos)
* [Instalación y Configuración](https://www.google.com/search?q=%23instalaci%C3%B3n-y-configuraci%C3%B3n)
* [Base de Datos](https://www.google.com/search?q=%23base-de-datos)
* [Roles de Usuario](https://www.google.com/search?q=%23roles-de-usuario)
* [Autores](https://www.google.com/search?q=%23autores)

## ✨ Características

El sistema cuenta con diversos módulos interconectados:

* **Gestión de Mascotas:** Registro detallado de mascotas (nombre, raza, peso, fotos, historial médico).
* **Sistema de Citas:** Agendamiento de citas entre usuarios y veterinarios validados.
* **Adopciones:** Plataforma para poner mascotas en adopción y gestionar solicitudes.
* **Salud y Bienestar:** Registro de recordatorios médicos, vacunas y notas de salud.
* **Comunidad y Foros:** Espacios de discusión para usuarios sobre temas de interés animal.
* **Calendario:** Visualización de eventos y recordatorios personalizados.
* **Notas Rápidas:** Sistema de notas tipo "post-it" para el usuario.
* **Directorio Veterinario:** Búsqueda y validación de profesionales.

## 🛠 Tecnologías Utilizadas

### Backend

* **Java EE 8 (Jakarta EE):** Lógica de negocio y control de sesiones.
* **Maven:** Gestión de dependencias y construcción del proyecto (`pom.xml`).
* **JavaMail (1.6.2):** Envío de correos electrónicos y notificaciones.
* **JSTL (1.2):** Biblioteca de etiquetas estándar para JSP.

### Frontend

* **JSP (JavaServer Pages):** Renderizado dinámico de vistas.
* **HTML5 / CSS3:** Estilos personalizados y diseño responsivo.
* **JavaScript / jQuery:** Interactividad del lado del cliente.
* **SweetAlert2:** Alertas y pop-ups modales elegantes.
* **Google Fonts:** Tipografías (Poppins, Archivo Black, Nunito Sans).

### Base de Datos

* **MySQL (8.0.23):** Sistema de gestión de bases de datos relacional.

## ⚙️ Requisitos Previos

* **Java JDK 8** (El proyecto apunta a la versión 1.8).
* **Servidor de Aplicaciones:** GlassFish, Payara Server o Apache Tomcat (compatible con WAR).
* **MySQL Server**.
* **Maven** instalado en el entorno de desarrollo.

## 🚀 Instalación y Configuración

1. **Clonar el repositorio:**
```bash
git clone https://github.com/tu-usuario/nimo.git

```


2. **Configurar la Base de Datos:**
* Asegúrate de tener un servicio MySQL corriendo.
* Ejecuta el script proporcionado en `/BASE DE DATOS/NimoBase.sql` para crear la estructura.
* *Nota: El script creará la base de datos `NimoBase`.*


3. **Configuración de Conexión:**
* Verifica los archivos de configuración de conexión (usualmente en `src/main/java/Modelo/Conexion.java` o `META-INF/persistence.xml`) y actualiza las credenciales de tu base de datos local (usuario y contraseña).


4. **Construir el proyecto con Maven:**
```bash
mvn clean install

```


5. **Despliegue:**
* Genera el archivo `.war` y despliégalo en tu servidor de aplicaciones preferido.
* Accede a la aplicación (generalmente en `http://localhost:8080/NIMO`).



## 🗄 Base de Datos

El esquema relacional (`NimoBase`) incluye las siguientes tablas principales:

* `usuario`: Tabla central con discriminador `tipo_us` para roles.
* `mascota` & `masc_usu`: Información de animales y su relación con dueños.
* `veterinario`: Información profesional vinculada a un usuario.
* `citas`: Relación entre usuario, mascota y veterinario.
* `adopcion` / `adoptar`: Gestión del flujo de adopciones.
* `foro` / `comunidad`: Tablas para la interacción social.

## 👥 Roles de Usuario

El sistema maneja distintos niveles de acceso definidos en la base de datos:

1. **Cliente:** Dueño de mascota estándar.
2. **Veterinario Validado:** Profesional con permisos para gestionar citas.
3. **Veterinario No Validado:** Registro inicial pendiente de aprobación.
4. **Administrador:** Acceso total y gestión de gestores.
5. **Gestores:** (Veterinarios, Comentarios, Usuarios).
6. **Invitado.**

## ✒️ Autores

* **EMN Corp.**
* Desarrollado como parte de un proyecto académico/profesional utilizando estándares Java Web.

---

*© 2022-2026 EMN Corp. Todos los derechos reservados.*
