FROM node:alpine

#set working directory first
WORKDIR /app

#copy package files 
COPY package*.json ./

#install dependencies
RUN npm install 

# copy everything else (server.js)
COPY . . 

#exposing the port used in server
EXPOSE 1212

CMD ["node", "server.js"]