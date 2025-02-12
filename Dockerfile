# Usar la imagen oficial de Node.js
FROM node:22.12.0

# Establecer el directorio de trabajo en el contenedor
WORKDIR /app


# Copiar los archivos package.json y package-lock.json antes de instalar dependencias
COPY package*.json ./

# Instalar las dependencias
RUN npm install

# Copiar el resto del código de la aplicación
COPY . .

# Exponer los puertos que usa el microservicio
EXPOSE 4001 5001

# Definir la variable de entorno para producción
ENV NODE_ENV=production

# Comando para iniciar el servicio
CMD ["node", "src/server.js"]
