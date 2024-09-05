# Gunakan Node.js versi terbaru sebagai base image
FROM node:14

# Tentukan direktori kerja di dalam container
WORKDIR /usr/src/app

# Copy package.json dan package-lock.json ke dalam container
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy semua file kode aplikasi ke dalam container
COPY . .

# Tentukan port yang akan digunakan
EXPOSE 3000

# Perintah untuk menjalankan aplikasi
CMD [ "npm", "start" ]
