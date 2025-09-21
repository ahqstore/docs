Remove-Item docs -Recurse -Force -ErrorAction SilentlyContinue

New-Item docs -ItemType Directory

New-Item docs/env/types -ItemType Directory
Copy-Item .\client\src-tauri\plugin-script\types\docs\* -Destination .\docs\env\types -Recurse -Force