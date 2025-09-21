Remove-Item -Force -Recurse client -ErrorAction SilentlyContinue

git clone "https://github.com/ahqstore/client.git"

npm i -g pnpm

# Go to types
Set-Location .\client\src-tauri\plugin-script\

npm install
npm run build:types

Set-Location .\types

npm install
npm run build:docs