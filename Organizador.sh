#!/bin/bash

#Declarando variables
Directorio="$HOME"
Descargas="$Directorio/Downloads"

#Verifica si la carpeta Otros existe y en el caso de que no lo crea
if [ -d "$Directorio/Otros" ]; then
    :
else
    mkdir "$Directorio/Otros"
fi

#Itera sobre los archivos existentes de la carpeta descargas
for archivo in "$Descargas"/*; do
    #Verfica si es un archivo o una carpeta
    if [ -f "$archivo" ]; then 
        case "${archivo##*.}" in
            jpg|jpeg|png|webm|gif)
                mv "$archivo" "$Directorio/Pictures"
                ;;
            doc|txt|pdf|docx)
                mv "$archivo" "$Directorio/Documents"
                ;;
            mp3)
                mv "$archivo" "$Directorio/Music"
                ;;
            mp4|mkv)
                mv "$archivo" "$Directorio/Videos"
                ;;
            *)
                mv "$archivo" "$Directorio/Otros"
                ;;
        esac
    fi
done

echo "Tarea Terminada"

