# Utiliser l'image Nginx officielle
FROM nginx:alpine

# Copier les fichiers HTML et CSS dans le répertoire de Nginx
COPY index.html /usr/share/nginx/html/
COPY style.css /usr/share/nginx/html/

# Exposer le port 80
EXPOSE 80

# Démarrer Nginx
CMD ["nginx", "-g", "daemon off;"]