Remove-Item '.\documentation\@ahqstore\env-types\*' -Recurse -Force -ErrorAction SilentlyContinue
Remove-Item '.\documentation\@ahqstore\plugin-api\*' -Recurse -Force -ErrorAction SilentlyContinue

Copy-Item '.\client\src-tauri\plugin-script\types\docs\@ahqstore\env-types\*' -Destination '.\documentation\@ahqstore\env-types\' -Recurse -Force
Copy-Item '.\client\pkg-ahqstore\docs\@ahqstore\plugin-api\*' -Destination '.\documentation\@ahqstore\plugin-api\' -Recurse -Force

npm run docs:build

mkdir '.\docs\legacy\@ahqstore\env-types'
mkdir '.\docs\legacy\@ahqstore\plugin-api'

Copy-Item '.\client\src-tauri\plugin-script\types\legacy\*' -Destination '.\docs\legacy\@ahqstore\env-types\' -Recurse -Force
Copy-Item '.\client\pkg-ahqstore\legacy\*' -Destination '.\docs\legacy\@ahqstore\plugin-api\' -Recurse -Force