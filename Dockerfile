# Utiliza una imagen base de Node.js mínima
FROM node:18-alpine

# Establece el directorio de trabajo dentro del contenedor
WORKDIR /usr/src/app

# Copia el package.json e instala las dependencias
COPY package*.json ./
RUN npm install

# Copia el resto de los archivos de la aplicación   

COPY . .

# Exponer el puerto de escucha
EXPOSE 3000

# Comando para iniciar la aplicación
CMD ["npm", "start"]