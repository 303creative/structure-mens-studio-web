#!/usr/bin/env bash
# Descarga las 7 imagenes generadas con Higgsfield y las guarda en assets/ (self-host).
# Correr UNA vez desde la raiz del sitio (donde esta index.html). Requiere curl.
#   bash descargar_imagenes_higgsfield.sh
# Luego: git add -A && git commit -m "self-host imagenes Higgsfield" && git push
set -e
mkdir -p assets
B="https://d8j0ntlcm91z4.cloudfront.net/user_2xer2BmVWuns6fBapceAXXZOrmH"
curl -fL "$B/hf_20260815_183917_3bdc60fd-4b45-437a-96a9-c164aa493f7f.png" -o assets/hf-1.png   # silla / suite
curl -fL "$B/hf_20260815_183917_a10920c6-5376-49dd-b64b-2e2425e3ce2b.png" -o assets/hf-2.png   # herramientas
curl -fL "$B/hf_20260815_183917_357f65c4-caea-451a-9141-54e0941f3d77.png" -o assets/hf-3.png   # tijeras
curl -fL "$B/hf_20260815_183917_31aa04ad-d486-498c-8c9f-36e4b3a33376.png" -o assets/hf-4.png   # fade
curl -fL "$B/hf_20260815_183917_0a34f98b-9cbb-4bf4-9c77-dc68908a442e.png" -o assets/hf-5.png   # toalla caliente
curl -fL "$B/hf_20260815_183917_c469e63e-2c2e-4f45-a780-4feb62e69307.png" -o assets/hf-6.png   # espejo
curl -fL "$B/hf_20260815_182914_cd0999c8-3882-4598-9534-d6736974ead1.png" -o assets/hf-7.png   # hero (hombre en la silla)
echo ""
echo "OK: 7 imagenes en assets/hf-1.png ... hf-7.png"
echo "Ahora: git add -A && git commit -m 'self-host imagenes Higgsfield' && git push"
