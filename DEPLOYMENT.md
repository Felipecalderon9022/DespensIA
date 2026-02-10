# 🚀 DespensIA - Guía de Despliegue en GitHub Pages

## 📋 Tabla de Contenidos
1. [Requisitos Previos](#requisitos-previos)
2. [Paso 1: Configurar Gemini AI](#paso-1-configurar-gemini-ai)
3. [Paso 2: Configurar Supabase](#paso-2-configurar-supabase)
4. [Paso 3: Configurar las API Keys](#paso-3-configurar-las-api-keys)
5. [Paso 4: Crear Repositorio en GitHub](#paso-4-crear-repositorio-en-github)
6. [Paso 5: Activar GitHub Pages](#paso-5-activar-github-pages)
7. [Solución de Problemas](#solución-de-problemas)

---

## 📦 Requisitos Previos

- Cuenta de GitHub (gratis)
- Cuenta de Google (para Gemini AI)
- Cuenta de Supabase (gratis)

---

## 🤖 Paso 1: Configurar Gemini AI

### 1.1 Obtener API Key de Gemini

1. Ve a **Google AI Studio**: https://aistudio.google.com/app/apikey
2. Inicia sesión con tu cuenta de Google
3. Haz clic en **"Create API Key"** o **"Obtener clave de API"**
4. Selecciona un proyecto de Google Cloud (o crea uno nuevo)
5. Copia la API Key generada (algo como `AIzaSy...`)
6. ⚠️ **GUARDA ESTA KEY EN UN LUGAR SEGURO**

### 1.2 Límites del Plan Gratuito

- ✅ 60 requests por minuto
- ✅ 1,500 requests por día
- ✅ Suficiente para uso personal

---

## 🗄️ Paso 2: Configurar Supabase

### 2.1 Crear Proyecto en Supabase

1. Ve a **Supabase**: https://supabase.com
2. Haz clic en **"Start your project"**
3. Inicia sesión (puedes usar GitHub)
4. Haz clic en **"New Project"**
5. Completa los datos:
   - **Name**: `despensIA` (o el nombre que prefieras)
   - **Database Password**: Genera una contraseña segura y guárdala
   - **Region**: Selecciona la más cercana (ej: `South America (São Paulo)`)
6. Haz clic en **"Create new project"**
7. ⏳ Espera 2-3 minutos mientras se crea el proyecto

### 2.2 Obtener las Credenciales

1. Una vez creado, ve a **Settings** (⚙️) > **API**
2. Copia y guarda:
   - **Project URL** (algo como `https://xxx.supabase.co`)
   - **anon / public** key (en la sección "Project API keys")

### 2.3 Crear las Tablas

1. Ve a **SQL Editor** (icono de hoja en el menú lateral)
2. Haz clic en **"New Query"**
3. Abre el archivo `database-schema.sql` de este proyecto
4. Copia todo el contenido y pégalo en el editor
5. Haz clic en **"Run"** (▶️) o presiona `Ctrl+Enter`
6. ✅ Deberías ver el mensaje: "Success. No rows returned"
7. Verifica en **Table Editor** que se crearon las tablas `inventario` y `lista_compras`

---

## 🔑 Paso 3: Configurar las API Keys

### 3.1 Editar el archivo index.html

1. Abre `index.html` en cualquier editor de texto (Notepad, VS Code, etc.)
2. Busca la sección **CONFIGURATION** (línea ~230):

```javascript
const CONFIG = {
    // Get from: https://aistudio.google.com/app/apikey
    GEMINI_API_KEY: 'YOUR_GEMINI_API_KEY_HERE',
    
    // Get from: https://supabase.com/dashboard (Project Settings > API)
    SUPABASE_URL: 'YOUR_SUPABASE_URL_HERE',
    SUPABASE_KEY: 'YOUR_SUPABASE_ANON_KEY_HERE'
};
```

3. Reemplaza los valores:

```javascript
const CONFIG = {
    GEMINI_API_KEY: 'AIzaSy...',  // ← Tu key de Gemini
    SUPABASE_URL: 'https://xxx.supabase.co',  // ← Tu URL de Supabase
    SUPABASE_KEY: 'eyJhb...'  // ← Tu anon key de Supabase
};
```

4. Guarda el archivo

---

## 📤 Paso 4: Crear Repositorio en GitHub

### Opción A: Usando la Web (Recomendado)

1. Ve a https://github.com/new
2. Completa:
   - **Repository name**: `despensIA` (o el nombre que prefieras)
   - **Description**: "Mi despensa inteligente con IA"
   - **Visibility**: Public ✅
   - ✅ **Add a README file**
3. Haz clic en **"Create repository"**
4. En la página del repositorio, haz clic en **"Add file"** > **"Upload files"**
5. Arrastra o selecciona `index.html`
6. Escribe un mensaje: "Initial commit"
7. Haz clic en **"Commit changes"**

### Opción B: Usando Git en Terminal

```bash
# 1. Inicializar repositorio
cd despensIA
git init

# 2. Agregar archivos
git add index.html
git commit -m "Initial commit - DespensIA app"

# 3. Conectar con GitHub (reemplaza con tu URL)
git remote add origin https://github.com/TU_USUARIO/despensIA.git
git branch -M main
git push -u origin main
```

---

## 🌐 Paso 5: Activar GitHub Pages

1. Ve a tu repositorio en GitHub
2. Haz clic en **Settings** (⚙️)
3. En el menú lateral izquierdo, busca **Pages**
4. En la sección **"Build and deployment"**:
   - **Source**: Deploy from a branch
   - **Branch**: `main` (o `master`)
   - **Folder**: `/ (root)`
5. Haz clic en **"Save"**
6. ⏳ Espera 1-2 minutos
7. 🎉 Verás un mensaje verde con tu URL:
   ```
   Your site is live at https://TU_USUARIO.github.io/despensIA/
   ```

---

## ✅ Verificación Final

1. Abre la URL de GitHub Pages en tu navegador
2. Deberías ver la aplicación funcionando
3. Prueba el botón de cámara para escanear productos
4. Verifica que los productos se guarden en el inventario

---

## 🔧 Solución de Problemas

### La página muestra error 404
- ✅ Asegúrate de que el archivo se llame exactamente `index.html`
- ✅ Verifica que GitHub Pages esté activado
- ✅ Espera 2-3 minutos después de activar Pages

### El escáner no funciona
- ✅ Verifica que la `GEMINI_API_KEY` esté correctamente configurada
- ✅ Revisa la consola del navegador (F12) para ver errores
- ✅ Asegúrate de que la API key no tenga espacios adicionales

### Los datos no se guardan
- ✅ Verifica las credenciales de Supabase
- ✅ Confirma que las tablas se crearon correctamente
- ✅ Revisa las políticas RLS en Supabase (deben permitir acceso anónimo)

### Error de CORS en Supabase
- Las políticas RLS están mal configuradas
- Ejecuta nuevamente el SQL del archivo `database-schema.sql`

### La cámara no se activa en iPhone
- Asegúrate de estar usando **HTTPS** (GitHub Pages lo activa automáticamente)
- Verifica permisos de cámara en Settings > Safari

---

## 🔄 Actualizar la Aplicación

Si haces cambios al código:

1. Edita `index.html` localmente
2. Sube el archivo actualizado a GitHub:
   - **Web**: Drag & drop en GitHub
   - **Git**: `git add index.html` → `git commit -m "Update"` → `git push`
3. ⏳ Espera 1-2 minutos para que se actualice

---

## 🎨 Personalización

### Cambiar Colores
Edita las clases de Tailwind CSS en el HTML:
- `from-purple-600 to-blue-600` → Degradado principal
- `bg-purple-600` → Color de acentos

### Agregar Más Recetas
Edita el array `recipes` en la función `renderRecipes()` (línea ~750)

---

## 📱 Instalación como PWA (Progressive Web App)

Para instalar en tu teléfono:

**Android:**
1. Abre la app en Chrome
2. Menú (⋮) > "Add to Home screen"

**iOS:**
1. Abre la app en Safari
2. Tap en Share (↑)
3. "Add to Home Screen"

---

## 🔒 Seguridad

⚠️ **IMPORTANTE**: Este proyecto usa credenciales públicas (anon key). Para producción:

1. Implementa autenticación de usuarios en Supabase
2. Configura RLS policies por usuario
3. Considera usar variables de entorno (no aplicable en GitHub Pages)
4. Para mayor seguridad, usa un backend como Netlify Functions o Vercel

---

## 📞 Soporte

Si tienes problemas:
1. Revisa la consola del navegador (F12)
2. Verifica los logs en Supabase (Database > Logs)
3. Confirma que las API keys sean correctas

---

## 🎉 ¡Listo!

Tu aplicación **DespensIA** está ahora en línea y lista para usar. 

**URL de tu app**: `https://TU_USUARIO.github.io/despensIA/`

¡Disfruta gestionando tu despensa de forma inteligente! 🥫🧠
