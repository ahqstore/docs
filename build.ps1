Remove-Item -Force -Recurse client -ErrorAction SilentlyContinue

git clone "https://github.com/ahqstore/client.git"

npm i -g pnpm

# Go to types
Set-Location .\client\src-tauri\plugin-script\

pnpm install
pnpm build:types

Set-Location .\types

pnpm install
pnpm build:docs