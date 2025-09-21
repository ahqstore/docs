Remove-Item docs -Recurse -Force -ErrorAction SilentlyContinue

New-Item docs -ItemType Directory

New-Item docs/env/types -ItemType Directory
Copy-Item .\client\src-tauri\plugin-script\types\docs\* -Destination .\docs\env\types -Recurse -Force

Copy-Item .\overrides\index.html -Destination .\docs\index.html
Copy-Item .\overrides\404.html -Destination .\docs\404.html