Remove-Item ".\docs" -Recurse -Force -ErrorAction Continue

Remove-Item '.\documentation\@ahqstore\env-types\*' -Recurse -Force -ErrorAction SilentlyContinue
Remove-Item '.\documentation\@ahqstore\plugin-api\*' -Recurse -Force -ErrorAction SilentlyContinue

Copy-Item '.\client\src-tauri\plugin-script\types\docs\@ahqstore\env-types\*' -Destination '.\documentation\@ahqstore\env-types\' -Recurse -Force
Copy-Item '.\client\pkg-ahqstore\docs\@ahqstore\plugin-api\*' -Destination '.\documentation\@ahqstore\plugin-api\' -Recurse -Force

npm install
npm run docs:build

New-Item -Path '.\docs\legacy\@ahqstore\env-types' -ItemType Directory
New-Item -Path '.\docs\legacy\@ahqstore\plugin-api' -ItemType Directory

Copy-Item '.\client\src-tauri\plugin-script\types\legacy\*' -Destination '.\docs\legacy\@ahqstore\env-types\' -Recurse -Force
Copy-Item '.\client\pkg-ahqstore\legacy\*' -Destination '.\docs\legacy\@ahqstore\plugin-api\' -Recurse -Force