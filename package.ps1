Remove-Item docs -Recurse -Force -ErrorAction SilentlyContinue

New-Item docs -ItemType Directory

New-Item docs/@ahqstore/env-types -ItemType Directory
New-Item docs/@ahqstore/plugin-api -ItemType Directory

Copy-Item .\client\src-tauri\plugin-script\types\docs\* -Destination .\docs\@ahqstore\env-types -Recurse -Force
Copy-Item .\client\pkg-ahqstore\docs\* -Destination .\docs\@ahqstore\plugin-api -Recurse -Force

Copy-Item .\overrides\index.html -Destination .\docs\index.html
Copy-Item .\overrides\404.html -Destination .\docs\404.html