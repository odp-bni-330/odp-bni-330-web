# odp-bni-330-web

web page sederhana berbasis java springboot dengan template html + tailwind css

## Cara Menjalankan

**Langkah 1** : Setup tailwind CSS dengan NPM

```bash
# Inisialisasi proyek Node.js (di root folder proyek Spring Boot)
npm init -y

# Instal Tailwind CSS (versi 3) dan dependencies-nya
npm install -D tailwindcss@3 postcss autoprefixer
npx tailwindcss init

# script ada di package.json
# Jalankan Tailwind Build
npm run build:css

```

**Langkah 2** : Jalankan aplikasi springboot

```bash
./mvnw spring-boot:run
```

**Langkah 3** : akses via web

`localhost:8081`
