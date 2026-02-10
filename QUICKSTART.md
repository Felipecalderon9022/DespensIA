# 🚀 Inicio Rápido - DespensIA

## ✅ Tu aplicación está lista!

Todos los archivos han sido creados en:
```
C:\Users\Andres Calderon\.gemini\antigravity\scratch\despensIA\
```

## 📁 Archivos Creados

- **index.html** - Aplicación completa (abre este archivo en tu navegador)
- **database-schema.sql** - Script SQL para Supabase
- **DEPLOYMENT.md** - Guía completa de despliegue en GitHub Pages
- **README.md** - Documentación del proyecto

## 🎯 Próximos Pasos

### 1️⃣ Prueba Local (AHORA)

Simplemente abre el archivo en tu navegador:
1. Ve a la carpeta: `C:\Users\Andres Calderon\.gemini\antigravity\scratch\despensIA\`
2. Haz doble clic en **index.html**
3. La app se abrirá en tu navegador predeterminado

⚠️ **Nota**: Sin configurar las API keys, verás advertencias en la consola, pero puedes probar la interfaz.

### 2️⃣ Configurar API Keys (REQUERIDO para funcionalidad completa)

#### Obtener Gemini API Key (Gratis)
1. Ve a: https://aistudio.google.com/app/apikey
2. Crea una API Key
3. Cópiala

#### Configurar Supabase (Gratis)
1. Ve a: https://supabase.com
2. Crea un proyecto nuevo
3. Ejecuta el contenido de `database-schema.sql` en el SQL Editor
4. Copia la URL y la anon key

#### Agregar las Keys al Código
1. Abre `index.html` en un editor de texto (Notepad, VS Code, etc.)
2. Busca la línea ~230 que dice `const CONFIG = {`
3. Reemplaza:
   ```javascript
   const CONFIG = {
       GEMINI_API_KEY: 'TU_KEY_AQUI',
       SUPABASE_URL: 'https://xxx.supabase.co',
       SUPABASE_KEY: 'TU_ANON_KEY_AQUI'
   };
   ```
4. Guarda el archivo

### 3️⃣ Publicar en Internet (GitHub Pages)

Sigue la guía completa en **DEPLOYMENT.md** para:
- Crear un repositorio en GitHub
- Subir los archivos
- Activar GitHub Pages
- Obtener tu URL pública

## ✨ Características para Probar

Una vez configurado:

1. **📸 Escanear Producto**
   - Haz clic en el botón de cámara flotante
   - Toma foto de un producto
   - La IA extraerá la información automáticamente

2. **📦 Gestionar Inventario**
   - Ver productos organizados por fecha de vencimiento
   - Sistema de colores: 🔴 Urgente, 🟡 Próximo, 🟢 Seguro
   - Ajustar cantidades con +/-

3. **🛒 Lista de Compras**
   - Agregar items manualmente
   - Copiar lista formateada para WhatsApp
   - Marcar como comprado

4. **👨‍🍳 Recetas Sugeridas**
   - Ver recetas basadas en tu inventario
   - Prioridad a ingredientes próximos a vencer

## 📱 Usar como App en el Móvil

Una vez publicada en GitHub Pages:

**Android:**
1. Abre la URL en Chrome
2. Menú (⋮) > "Agregar a pantalla de inicio"

**iOS:**
1. Abre la URL en Safari
2. Botón Compartir > "Agregar a pantalla de inicio"

## 🆘 Problemas Comunes

### ❌ "API Key no configurada"
- Edita `index.html` y agrega las keys correctamente
- Asegúrate de guardar el archivo

### ❌ La cámara no funciona
- En iPhone/iPad, DEBES usar HTTPS (GitHub Pages lo provee)
- En local, algunos navegadores bloquean la cámara

### ❌ Los datos no se guardan
- Si no configuraste Supabase, los datos se guardan en localStorage
- Los datos se borran si limpias el cache del navegador

## 📚 Más Información

- **DEPLOYMENT.md** - Guía paso a paso para GitHub Pages
- **README.md** - Documentación completa del proyecto
- **database-schema.sql** - Esquema de base de datos

## 🎉 ¡Listo!

Tu aplicación DespensIA está completamente funcional y lista para usar.

**Recomendación**: Configura este directorio como tu workspace activo en la interfaz de usuario para facilitar ediciones futuras.
