# Use a imagem oficial do Ruby como base
FROM node:latest

# Configure a pasta de trabalho dentro do contêiner
WORKDIR /app

# Copie o código-fonte do aplicativo para o contêiner
COPY . .

# Expõe a porta 3000 para que possa ser acessada fora do contêiner
EXPOSE 5173

RUN npm i

CMD ["npm", "run", "dev", "--", "--host"]
