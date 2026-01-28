#!/bin/sh
# Tareas previas personalizadas (ejemplo: copiar archivos, preparar entorno)
mkdir -p /app/run/plugins/Geyser
cp /data/config/floodgate/key.pem /app/run/plugins/Geyser/key.pem 2>/dev/null || true

# Ejecutar ViaProxy igual que la imagen oficial
exec java -jar /app/ViaProxy.jar config viaproxy.yml
