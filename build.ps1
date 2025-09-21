Remove-Item -Force -Recurse client -ErrorAction SilentlyContinue

git clone "https://github.com/ahqstore/client.git"

# Go to types
Set-Location .\client\src-tauri\plugin-script\

npm install
npm run build:types

Set-Location .\types

npm install
npm run build:docs