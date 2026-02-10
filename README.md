# 🧠 DespensIA - Tu Despensa Inteligente

![DespensIA Banner](https://img.shields.io/badge/DespensIA-AI%20Powered-purple?style=for-the-badge)
![GitHub Pages](https://img.shields.io/badge/GitHub%20Pages-Ready-success?style=for-the-badge)
![License](https://img.shields.io/badge/License-MIT-blue?style=for-the-badge)

Una aplicación web progresiva (PWA) para gestionar tu despensa de forma inteligente usando IA de visión para escanear productos y recibir sugerencias personalizadas.

## ✨ Características

### 🤖 Escáner Inteligente con IA
- Escanea productos con la cámara de tu teléfono
- Extracción automática de información usando **Gemini Vision AI**
- Reconocimiento de marcas colombianas (Diana, Zenú, Alpina, Colanta, etc.)
- Confirmación manual con campos editables

### 📦 Inventario en Tiempo Real
- Sistema de semáforo para fechas de vencimiento:
  - 🔴 **Rojo**: Vence en menos de 3 días
  - 🟡 **Amarillo**: Vence en menos de 7 días
  - 🟢 **Verde**: Seguro (más de 7 días)
- Ajuste rápido de cantidades con botones +/-
- Sincronización en la nube con **Supabase**

### 🛒 Lista de Compras Dinámica
- Agregar y eliminar items manualmente
- Marcar como comprado/pendiente
- **Copiar para WhatsApp** con formato automático
- Persistencia en base de datos

### 👨‍🍳 Sugerencias de Recetas
- Recetas basadas en tu inventario actual
- Prioridad para ingredientes próximos a vencer
- Indicador de disponibilidad de ingredientes
- Recetas tradicionales colombianas

## 🚀 Tecnologías

- **Frontend**: HTML5, JavaScript Vanilla, Tailwind CSS
- **IA de Visión**: Google Gemini Pro Vision
- **Base de Datos**: Supabase (PostgreSQL)
- **Hosting**: GitHub Pages (100% gratis)
- **Icons**: Lucide Icons

## 📱 Características Móviles

- ✅ Diseño Mobile-First (max-width: 448px)
- ✅ Navegación bottom-tab optimizada
- ✅ Captura de cámara nativa
- ✅ Instalable como PWA
- ✅ Funciona offline (localStorage como fallback)

## 🎯 Instalación Rápida

### 1. Clonar el Repositorio
```bash
git clone https://github.com/TU_USUARIO/despensIA.git
cd despensIA
```

### 2. Configurar API Keys

Edita `index.html` y reemplaza en la sección `CONFIG`:

```javascript
const CONFIG = {
    GEMINI_API_KEY: 'TU_API_KEY_AQUI',
    SUPABASE_URL: 'https://xxx.supabase.co',
    SUPABASE_KEY: 'TU_ANON_KEY_AQUI'
};
```

### 3. Configurar Supabase

1. Crea un proyecto en [Supabase](https://supabase.com)
2. Ejecuta el SQL del archivo `database-schema.sql`
3. Copia las credenciales (URL + anon key)

### 4. Desplegar en GitHub Pages

Ver guía completa en [DEPLOYMENT.md](DEPLOYMENT.md)

## 📖 Documentación

- **[DEPLOYMENT.md](DEPLOYMENT.md)** - Guía completa de despliegue
- **[database-schema.sql](database-schema.sql)** - Esquema de base de datos

## 🗂️ Estructura del Proyecto

```
despensIA/
├── index.html           # Aplicación completa (SPA)
├── database-schema.sql  # Esquema de Supabase
├── DEPLOYMENT.md        # Guía de despliegue
└── README.md           # Este archivo
```

## 🎨 Capturas de Pantalla

### Inventario con Sistema de Semáforo
![Inventario](https://via.placeholder.com/300x600?text=Inventario)

### Escáner de Productos con IA
![Scanner](https://via.placeholder.com/300x600?text=Scanner)

### Lista de Compras
![Shopping](https://via.placeholder.com/300x600?text=Lista)

## 🔒 Seguridad

⚠️ **Nota Importante**: Este proyecto usa autenticación anónima para simplificar el despliegue en GitHub Pages. Para uso en producción:

- Implementa autenticación de usuarios
- Configura Row Level Security (RLS) por usuario
- Usa variables de entorno para API keys
- Considera un backend serverless (Netlify Functions, Vercel)

## 🤝 Contribuir

Las contribuciones son bienvenidas:

1. Fork el proyecto
2. Crea una rama para tu feature (`git checkout -b feature/AmazingFeature`)
3. Commit tus cambios (`git commit -m 'Add some AmazingFeature'`)
4. Push a la rama (`git push origin feature/AmazingFeature`)
5. Abre un Pull Request

## 📝 Roadmap

- [ ] Autenticación de usuarios
- [ ] Modo oscuro
- [ ] Gráficos de estadísticas
- [ ] Notificaciones push para productos próximos a vencer
- [ ] Exportar/importar inventario
- [ ] Soporte multi-idioma
- [ ] Integración con más APIs de recetas

## 🐛 Reportar Problemas

Si encuentras un bug o tienes una sugerencia, por favor [abre un issue](https://github.com/TU_USUARIO/despensIA/issues).

## 📄 Licencia

Este proyecto está bajo la Licencia MIT. Ver el archivo `LICENSE` para más detalles.

## 🌟 Créditos

Desarrollado con ❤️ usando:
- [Google Gemini AI](https://ai.google.dev/)
- [Supabase](https://supabase.com/)
- [Tailwind CSS](https://tailwindcss.com/)
- [Lucide Icons](https://lucide.dev/)

## 📞 Contacto

**Tu Nombre** - [@tu_twitter](https://twitter.com/tu_twitter)

Proyecto Link: [https://github.com/TU_USUARIO/despensIA](https://github.com/TU_USUARIO/despensIA)

---

⭐ Si te gusta este proyecto, dale una estrella en GitHub!
