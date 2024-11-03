## Organizador de archivos con bash
Un script sencillo en Bash para organizar automáticamente los archivos en tu carpeta de Descargas, moviéndolos a carpetas específicas según su tipo. ¡Ideal para mantener tu espacio limpio y ordenado!

### Descripción
Este script en Bash clasifica los archivos en la carpeta de Descargas y los mueve a directorios específicos dentro de tu directorio principal (`$HOME`). Los tipos de archivo compatibles incluyen imágenes, documentos, música y videos, mientras que los archivos desconocidos se agrupan en una carpeta Otros.

### Características

- Organización automática: Mueve archivos de manera eficiente según su tipo.
- Compatible con múltiples tipos de archivo:
    - Imágenes: `jpg`,` jpeg`,` png`,` webm`,` gif` → Carpeta `Pictures`
	- Documentos: `doc`,` txt`,` pdf`,` docx` → Carpeta `Documents`
	- Música: `mp3` → Carpeta `Music`
	- Videos: `mp4`, `mkv` → Carpeta `Videos`
	- Otros archivos: Se mueven a una carpeta `Otros
- Verificación de carpetas: Crea la carpeta `Otros` si no existe.

### Requisitos Previos

- Sistema operativo basado en Unix (Linux, macOS).
- Bash shell.
