# 📧 Configurar el Envío de Emails del Formulario

Para que el formulario de contacto envíe emails automáticamente a **lexisconsulting.edu@gmail.com**, necesitas configurar EmailJS (servicio gratuito).

## Pasos para Configurar EmailJS

### 1. Crear cuenta en EmailJS
1. Ve a [https://www.emailjs.com](https://www.emailjs.com)
2. Crea una cuenta gratuita (permite 200 emails/mes gratis)
3. Confirma tu email

### 2. Configurar un Servicio de Email
1. En el dashboard, ve a **"Email Services"**
2. Haz clic en **"Add New Service"**
3. Selecciona **"Gmail"** (o el servicio que uses)
4. Conecta tu cuenta de Gmail (lexisconsulting.edu@gmail.com)
5. Copia el **Service ID** (ejemplo: `service_abc123`)

### 3. Crear una Plantilla de Email
1. Ve a **"Email Templates"**
2. Haz clic en **"Create New Template"**
3. Configura la plantilla así:

**Subject (Asunto):**
```
Nuevo mensaje de contacto: {{subject}}
```

**Content (Contenido):**
```
Has recibido un nuevo mensaje del formulario de contacto de Lexis:

Nombre: {{from_name}}
Email: {{from_email}}
Asunto: {{subject}}

Mensaje:
{{message}}

---
Este mensaje fue enviado desde el formulario de contacto de Lexis.
```

4. Guarda y copia el **Template ID** (ejemplo: `template_xyz789`)

### 4. Obtener tu Public Key
1. Ve a **"Account"** → **"General"**
2. Copia tu **Public Key** (ejemplo: `abcdefghijklmnop`)

### 5. Actualizar el Código
Abre el archivo `script.js` y busca estas líneas (alrededor de la línea 10):

```javascript
const EMAILJS_SERVICE_ID = 'tu_service_id';
const EMAILJS_TEMPLATE_ID = 'tu_template_id';
const EMAILJS_PUBLIC_KEY = 'tu_public_key';
```

Reemplaza con tus valores reales:

```javascript
const EMAILJS_SERVICE_ID = 'service_abc123'; // Tu Service ID
const EMAILJS_TEMPLATE_ID = 'template_xyz789'; // Tu Template ID
const EMAILJS_PUBLIC_KEY = 'abcdefghijklmnop'; // Tu Public Key
```

### 6. ¡Listo!
Ahora cuando alguien complete el formulario, recibirás el email en **lexisconsulting.edu@gmail.com** con toda la información del contacto.

## Alternativa: Formspree (Más Simple)

Si prefieres algo más simple, puedes usar Formspree:

1. Ve a [https://formspree.io](https://formspree.io)
2. Crea una cuenta gratuita
3. Crea un nuevo formulario
4. Configura el email destino: `lexisconsulting.edu@gmail.com`
5. Copia el endpoint que te dan
6. Actualiza el formulario en `index.html` para usar el endpoint de Formspree

## Prueba el Formulario

Una vez configurado:
1. Abre tu página web
2. Completa el formulario de contacto
3. Envía el mensaje
4. Verifica que recibas el email en `lexisconsulting.edu@gmail.com`

---

**Nota:** El código ya está preparado para usar EmailJS. Solo necesitas seguir estos pasos para activarlo.

