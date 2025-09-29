Remove-Item -Force -Recurse client -ErrorAction SilentlyContinue

git clone "https://github.com/ahqstore/client.git"

# @ahqstore/plugin-api
Set-Location .\client\pkg-ahqstore

npm install
npm run build
npm run build:docs
npm run build:docs:legacy

Set-Location ..\..

# Go to types
Set-Location .\client\src-tauri\plugin-script\

npm install
npm run build:types

Set-Location .\types

npm install
npm run build:docs
npm run build:docs:legacy