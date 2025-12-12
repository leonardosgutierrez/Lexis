# Lexis - Página Web Profesional

Página web moderna y profesional para Lexis, optimizada para ventas y conversión.

## 🚀 Características

- **Diseño Moderno**: Interfaz limpia y profesional con gradientes y animaciones suaves
- **Totalmente Responsive**: Se adapta perfectamente a todos los dispositivos (móvil, tablet, desktop)
- **Optimizado para SEO**: Meta tags y estructura semántica para mejor posicionamiento
- **Rápido y Ligero**: Código optimizado para carga rápida
- **Interactivo**: Animaciones al hacer scroll, menú móvil, formulario de contacto funcional

## 📁 Estructura del Proyecto

```
lexis/
├── index.html      # Página principal
├── styles.css      # Estilos CSS
├── script.js       # JavaScript para interactividad
└── README.md       # Este archivo
```

## 🎨 Secciones Incluidas

1. **Hero Section**: Sección principal con llamada a la acción
2. **Sobre Lexis**: Información sobre la empresa con estadísticas
3. **Cursos**: Grid de cursos con precios y botones de inscripción
4. **Servicios**: Tarjetas de servicios ofrecidos
5. **Contacto**: Formulario de contacto e información de contacto
6. **Footer**: Enlaces y redes sociales

## 🛠️ Personalización

### Cambiar Colores

Edita las variables CSS en `styles.css`:

```css
:root {
    --primary-color: #6366f1;
    --secondary-color: #8b5cf6;
    --accent-color: #ec4899;
}
```

### Actualizar Contenido

1. **Información de contacto**: Edita la sección de contacto en `index.html`
2. **Cursos**: Modifica las tarjetas de cursos con tu información real
3. **Servicios**: Actualiza los servicios ofrecidos
4. **Estadísticas**: Cambia los números en la sección "Sobre Lexis"

### Agregar Imágenes

Reemplaza los placeholders `.image-placeholder` con imágenes reales:

```html
<div class="course-image">
    <img src="ruta/a/tu/imagen.jpg" alt="Descripción">
</div>
```

## 📧 Configurar Formulario de Contacto

Actualmente el formulario muestra una notificación. Para conectarlo a un servicio real:

1. **EmailJS**: Servicio gratuito para enviar emails desde formularios
2. **Backend propio**: Crea un endpoint en tu servidor
3. **Servicios de terceros**: Formspree, Netlify Forms, etc.

Ejemplo con EmailJS en `script.js`:

```javascript
emailjs.send('service_id', 'template_id', formData)
    .then(() => showNotification('¡Mensaje enviado!', 'success'))
    .catch(() => showNotification('Error al enviar', 'error'));
```

## 🚀 Despliegue

### Opciones de Hosting Gratuito

1. **Netlify**: Arrastra y suelta la carpeta
2. **Vercel**: Conecta tu repositorio Git
3. **GitHub Pages**: Sube los archivos a un repositorio
4. **Firebase Hosting**: Servicio de Google

### Pasos para Netlify

1. Ve a [netlify.com](https://netlify.com)
2. Arrastra la carpeta del proyecto
3. ¡Listo! Tu sitio estará en línea

## 📱 Pruebas

Abre `index.html` en tu navegador o usa un servidor local:

```bash
# Con Python
python -m http.server 8000

# Con Node.js (http-server)
npx http-server
```

Luego visita: `http://localhost:8000`

## ✨ Mejoras Futuras

- [ ] Integración con pasarela de pagos para cursos
- [ ] Sistema de blog
- [ ] Galería de testimonios
- [ ] Chat en vivo
- [ ] Integración con redes sociales
- [ ] Analytics (Google Analytics)

## 📝 Licencia

Este proyecto está disponible para uso personal y comercial.

## 🤝 Soporte

Para preguntas o sugerencias, contacta a través del formulario en la página web.

---

**Hecho con ❤️ para Lexis**

