# Vim Vim
+ Convincion teclas unix
+ Programa kmon para ver en la pantalla lo que se esta pulsando 
+ Usar los comandos de Linux en Windows: unix-utils.exe

+ http://hipertextual.com/2015/02/como-usar-vim
+ http://voylinux.com/asi-que-quieres-aprender-usar-vim/
+ http://derekwyatt.org/vim/tutorials/novice/ 
+ http://vim.rtorr.com/lang/es_es/
+ http://juanjoalvarez.net/es/detail/2009/jun/25/vim-en-2-minutos/
+ http://benmccormick.org/2014/07/21/learning-vim-in-2014-getting-more-from-vim-with-plugins/
+ http://blog.desdelinux.net/viernes-terminal-pensando-vim/

Vundle -> To install from command line: vim +PluginInstall +qall

```bash
$ git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```

Reemplazar tabs por espacios: **:%s/\t/    /gc**

## Modo Normal


j bajar un número de línea, es decir, líneas separadas por un retorno de carro.
gj bajar una línea visible, comportamiento habitual de los editores normales.
k sube un número de línea.
gk sube una línea como lo haría un editor corriente.
0 va al principio de la línea real.
{ va al principio del párrafo.
} va al final del párrafo.
gg va al principio del archivo.
gg va al principio del archivo.
G va al final del archivo.
g0 va al principio de la línea visible en pantalla.
^ va al primer carácter no en blanco de la línea real.
g^ va al primer carácter no en blanco de la línea visible en pantalla.
$ va al final de la línea real.
g$ va al final de la línea visible en pantalla.
w va hacia el principio de la siguiente palabra.
b va hacia atrás, al principio de la palabra actual o de la anterior.
e va al final de la palabra actual y si estamos allí, de la siguiente palabra.
ge va al final de la palabra anterior.
/búsqueda 
f{carácter} va hacia delante hasta que encuentre el carácter.
F{carácter} lo mismo que el anterior pero en dirección contraria.
t{carácter} va hacia adelante y se para en una columna antes del carácter.
T{carácter} lo mismo que el anterior pero en dirección contraria.
; repite la última búsqueda de carácter.
, da la vuelta a la última búsqueda.


e Me muevo al final de la próxima palabra
w Me muevo a la próxima palabra
b Me muevo palabra atras


x borra el caracter sobre el que estas encima

p pega el portapapeles
P pega antes del lugar 
r remplazar el caracter sobre el que estas
f search un caracter en la linea (hola)
t search se posiciona antes del caracter

a Comienzo a editar despues del caracter
A comienzo a editar al fin de la linea
I comienzo a editar al inicio

F y T irán marcha a tras
P pegará el texto en la misma línea
Y actuará sobre la línea completa 
D tendrá el mismo efecto que d$

d borrar mas otra letra que diga que borra
D borrar hasta la final de la linea
C cambiar hasta el final de la linea
s Sustituir es como un x y un i
S sustituir la linea

u deshacer lo último que hice
ctr r rehacemos 
y copiar
o inserta una linea vacia debajo
dl borrar un caracter de la izquierda
dr borrar un caracter de la derecha
. hace lo último que hicimos
gg al principio uv selecciono G final


tecla R entramos a modo insertar.

r reemplazar para un solo carácter nos devuelve al modo normal, 
s nos deja en el modo insertar.
~ capitaliza 


## i Modo inserción
<ctrl-v>181 inserta un caracter especial

## v Modo visual
o cambio de dirección desde donde estoy haciendo la selección.
f busca ; sigue , vuelve
V modo visual que selecciona columnas
ctrl v modo de seleccion de columnas 
u/U cambia a mayúscula/minuscula
gv repita la seleccion anterior

viB Selecciona todo lo que este dentro de las llaves
[control] v e5j C [escribes el texto] [esc] [esc]
Y en este entras al selector visual por bloques controlv, avanzo al final de la palabra, y 5 lineas abajo 5j, borro la palabra con C escribo el texto a sustituir y presiono Esc Esc.


## Modo comando
:x / :xa guardar y salir
:w guardar
:q salir
10gg ir a la linea 10

:[rango]d[elete] borra las líneas especificadas.
:[rango]y[ank] copia líneas.
:[línea]put pega el texto en la línea descrita.
:[rango]co[py] {dirección} copia líneas especificadas debajo de la dirección. También se le invoca pulsando :t.
:[rango]m[ove] {dirección} mueve líneas especificadas a la dirección elegida.
:[rango]j[oin] junta líneas.
:[rango]norm[al] {comando} ejectuda comandos del modo normal en las líneas especificadas.
:[rango]s[ubstitute]/{pattern}/{string}/[flags] Reemplaza las ocurrencias de {pattern} con {string} en cada línea especificada.
:[rango]g[lobal]/{pattern}/[comando] ejecuta un comando en cada línea especificadas que coincidan pon el patrón de búsqueda {pattern}.
:[rango]p[rint] su misión es mostrarnos el rango, perfecto para practicar.
:h [comando] información detallada de cada comando.

Rangos:
1 primera línea del arhivo..
$ última línea del archivo..
0 línea encima de la primera (no existe la línea 0), se usa para mover o pegar texto encima de la primera línea..
. el punto, es la línea donde está ubicado nuestro cursor..
% todo el archivo, un atajo upara el rango :1,$..

:5,10p muestra lo que hay de la linea 5 a la 10.
:'<,'>norm . ejecutar la ultima accion en modo normal de la visualizacion .
:.m0 mover la línea en la que estamos al principio del archivo.
:4t9 copiar la línea 4 debajo de la línea 9.
:%s/Madrid/Bilbao reemplaza Madrid por Bilbao en todo el archivo.
:shell nos lleva a nuestra shell para ejecutar comandos, al ejecutar exit volveremos a Vim.
:![comando de shell] nos permite ejecutar comandos de nuestra shell como :!ls.
@: repetir el ultimo comando, se ejecuta en modo normal.

: 3,$sort De la linea 3 hasta el final del documento ordenalo

### Buffers

:ls nos muestra una lista de los buffers
:bn[ext] podemos escribir :bn o :bnext para que se ejecute este comando.
:bp[revious] abre el buffer anterior.
:bf[irst] abre el primer buffer de la lista.
:bl[ast] abre el último buffer de la lista.
:bd[elete] [buffer] eliminar buffer de la lista, no elimina el archivo del disco.
:args muestra la lista de argumentos
:argdo [comando] nos permite realizar un comando en todos los archivos de la lista a la vez.
:w[rite]a[all] guarda todos los archivos.
:q[uit]a[all] sale de todos los archivos.


### Paneles

<c-w>w moverse por los paneles. Pulsaremos de forma conjunta la tecla control y w, soltaremos las teclas y pulsaremos w de nuevo.
c-w>h ir al panel de la izquieasada.
<c-w>j ir al panel de abajo.
<c-w>k ir al panel de arriba.
<c-w>l ir al panel de la derecha.
<c-w>c cerrar panel. También hace lo mismo :cl[ose].
<c-w>o mantener el panel activo, cerrando los demás. También nos sirve :on[ly].
<c-w>= iguala la altura y anchura de los paneles.
<c-w>_ maximiza la altura del panel activo.
<c-w>| maximiza el alncho del panel activo.
[N]<c-w>_ la alturá será de [N] filas.
[N]<c-w>| la anchura será de [N] columnas.
:h window-moving

### Pestañas
:tabnew abre una nueva pestaña.
:lcd {ruta} cambia la ruta (la carpeta) donde apunta el panel.
:windo lcd {ruta} cambia la ruta donde apuntan todos los paneles de una pestaña
<c-w>T mueve el panel actual a una nueva pestaña.
:tabe[dit] {archivo} abre un archivo en una nueva pestaña
:tabc[lose] cerrar la pestaña. 
:tabo[nly] cerrar todas las pestañas menos la activa.
:tabn[ext] {N} ir a la pestaña {N}. También nos sirve {N}gt
:tabn[ext] ir a la siguiente pestaña. gt hará lo mismo.
:tabp[revious] ir a la pestaña anterior. gT tiene el mismo resultado.
:tabmove [N] sirve para mover las pestañas.
:h tabpage

### Sesiones
:mks guarda una sesion
vim -S fichero_sesion
:s fichero_sesion abre la sesion


### Marcas
ma Hago una marca y la guardo en la letra a
`m Ir a la marca que tiene la a

“ : ir a la posición antes del último salto en el archivo actual.
`. : ir a la localización del último cambio.
`^ : ir a la posición de la última inserción.
`[ : ir a la posición inicial del último cambio o copia (yank).
`] : ir a la posición final del último cambio o copia (yank).
`< : ir a la posición inicial de la última selección visual.
`> : ir a l aposición final de la última selección visual.

---

:w Guardar
:o abrir un archivo

umero mas comando y se lo repite
10 i =  Esc ====================
% voy al otro par de la llave (espejo)

/ Buscar n navegar adelante N navega adelante
? Busco para atras
* busco automaticamente la palabra que estoy encima

ci" Cambio lo que esta entre las comillas
shift V selecciono + y copio
$ final de la linea
0 principio de la linea

comienzo a escribit aprieto ctrl p (atrás) ctrl n (adelante) busqueda de antes y autocompleta


:%s/algo/alga/g reemplazar
:.,$g/#/d de la linea actual . hasta el final del documento $ busca los numeral # y eliminalos d
Puedo marcar y luego reemplazar en esa zona

identar =
< identar +/-

gg al principio uv selecciono G final

:! comando unix

Se puede seleccionar y luego ! y poner un comando unix para que se ejecute en esa selección.

#### Macros
q (letra) grabo macro q
@ (letra) se ejecuta el macro 
@@ se ejecuta la ultima macro
:reg a ver el contenido del macro a
:put a pegar el macro en a

#### Variables
:let i=1
ctrl-r i pego el contenido de la variable i
:let i+=1

ctrl W me muevo con NERDtree

:spl divido verticalemten
:vspl divido horizontalmente

vimdiff dp aceptar los cambios que se ven

#### Registros
"1p guarda lo que tenemos para pegar en el registro 1
"+ es el portapapeles del sistema


Aprende algunos verbos
v (visual)
c (change/cambiar)
d (delete/borrar)
y (yank/copiar)

Aprende algunos modificadores
i (inside/dentro de)
a (around/alrededor)
t (till../hasta que encuentra el carácter)
f (find../hasta que encuentra el carácter incluyéndolo)
/ (buscar)

Aprende algunos objetos
w (word/palabra)
s (sentence/frase)
p (paragraph/párrafo) 
b (block/parentesis)
t (tag/ para html/xml)
