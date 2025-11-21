FROM nginx:1.27-alpine


COPY nginx.conf /etc/nginx/nginx.conf

COPY public/ /usr/share/nginx/html/

EXPOSE 80


##  Configuración API (config.js)

```javascript
window.APP_CONFIG = {
  API_BASE: "/api"
};

En local

API_BASE: "http://127.0.0.1:8000/api"

NGINX sirve:
    Archivos estáticos
    Enruta /api/* hacia backend:8000/api/ dentro de Docker