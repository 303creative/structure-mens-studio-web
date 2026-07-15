# DEPLOY — Structure Men's Studio (a Vercel)

## Estado (lo que ya está hecho)
- `index.html` creado (Vercel lo sirve en la raíz).
- Imágenes pesadas comprimidas (barber-alex 12MB→419KB, barber-bri 9.5MB→253KB).
- `.gitignore` listo.

## ⚠️ ANTES de considerarla "lanzada" (crítico)
El export de Claude Design dejó valores por defecto — hay que poner los reales o el botón principal no sirve:
1. **Booksy real** — hoy el botón "Reservar" apunta a `https://booksy.com` genérico. Poner el link de reservas de Structure.
2. **WhatsApp real** — hoy es un número falso (`13050000000`).
3. **Reseñas** — están como `[Pega aquí una reseña real de Google Business]`.

> Se cambian en Claude Design (props "booksyUrl" y "whatsapp") y se re-exporta, **o** Maikel me pasa el link de Booksy y el WhatsApp y yo los dejo fijos en `index.html` en 2 minutos.

## ⚠️ Nota de git
Esta carpeta trae un `.git` heredado con el historial de *maikphotographer-web-site* y sin remoto. Para Structure hay que arrancar **repo limpio** (los pasos ya lo hacen).

---

## RUTA A — La más rápida (sin GitHub, ideal para la urgencia)
En PowerShell, dentro de la carpeta del sitio:
```powershell
npm i -g vercel
vercel login            # inicia sesión con tu cuenta (una vez)
vercel                  # deploy de preview -> te da una URL
vercel --prod           # publica en producción
```
Vercel detecta que es estático (sin build) y lo sube tal cual. Listo, online.

## RUTA B — Con GitHub (recomendada para mantenerla)
```powershell
# 1) repo limpio (quita el .git heredado de maikphotographer)
Remove-Item -Recurse -Force .git
git init
git add .
git commit -m "Structure Men's Studio - sitio inicial"

# 2) crea el repo en GitHub y sube (requiere GitHub CLI 'gh' logueado)
gh repo create structure-mens-studio-web --private --source=. --push
#   (o crea el repo a mano en github.com y luego:)
#   git remote add origin https://github.com/TU_USUARIO/structure-mens-studio-web.git
#   git branch -M main
#   git push -u origin main

# 3) en vercel.com -> Add New -> Project -> Import el repo -> Deploy
```

## Después del deploy
- Abre la **URL de Vercel** y revisa en el teléfono: que cargue, que el botón "Reservar" vaya a la Booksy real, y el WhatsApp al número real.
- Cuando tengas el dominio: en Vercel -> Project -> Settings -> Domains -> agrega el dominio a nombre de Structure y apunta el DNS.

> Nota: el sitio necesita servirse por http/https para renderizar (usa `fetch` de su propia página). Abrirlo con doble-clic como archivo local NO se ve bien; pruébalo en la URL de Vercel.
