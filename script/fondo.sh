#Aquí va la carpeta con las imágenes (no importa si están en subcarpetas)
cd "$HOME//Mega/Wall/"

#Comienzo del bucle. Como verán es infinito :)
while [ 0 -eq 0 ]; do

#Esto hace que el script:
#1 Busque todos los archivos con "find"
#2 Filtre solo los jpg con "grep jpg"
#3 Cuente cuantos archivos hay con "wc -l"
NITROGEN_CANTIDAD_DE_LINEAS=`find | grep jpg | wc -l`
# echo "lineas $NITROGEN_CANTIDAD_DE_LINEAS"

NITROGEN_ELEGIR=$((1+RANDOM%$NITROGEN_CANTIDAD_DE_LINEAS))
# echo "linea elegida: $NITROGEN_ELEGIR"

#1 Busque todos los archivos con "find"
#2 Filtre solo los jpg con "grep jp"
#3 Seleccione la linea con "sed" usando la linea elegida anteriormente.
NITROGEN_WALLPAPER=`find | grep jpg | sed -n $((NITROGEN_ELEGIR))p`
# echo $NITROGEN_WALLPAPER

nitrogen --set-zoom-fill $NITROGEN_WALLPAPER
#nitrogen --set-centered $NITROGEN_WALLPAPER

#Con esta linea elegimos un tiempo al azar con min. 4 y máx 120.
NITROGEN_TIEMPO=$((600+RANDOM%6000))

#Esto envía una notificación al escritorio.
#Con la opción -i pueden elegir un icono.
#Y obvio que pueden cambiar el texto o eliminar si molesta con solo borrar/comentar la linea.
#notify-send -t 10000 "CAMBIO DE FONDO DE ESCRITORIO" "\nEl fondo de pantalla a sido cambiado.\nEl próximo cambio se efectuara en $NITROGEN_TIEMPO segundos.\n\nEl misterioso cambiador de imágenes"
sleep $((NITROGEN_TIEMPO))
done