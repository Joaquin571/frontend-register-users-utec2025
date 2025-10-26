FROM nginx:1.27-alpine

# Copiamos la config de nginx
COPY nginx.conf /etc/nginx/nginx.conf

# Copiamos el sitio estático
COPY public/ /usr/share/nginx/html/

EXPOSE 80

# Nginx ya trae el entrypoint/cmd por defecto
