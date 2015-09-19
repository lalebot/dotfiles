# Vim Vim
+ Convincion teclas unix
+ Programa kmon para ver en la pantalla lo que se esta pulsando 
+ Usar los comandos de Linux en Windows: unix-utils.exe

+ http://hipertextual.com/2015/02/como-usar-vim
+ http://voylinux.com/asi-que-quieres-aprender-usar-vim/
+ http://derekwyatt.org/vim/tutorials/novice/ 
+ http://vim.rtorr.com/lang/es_es/

Vundle -> To install from command line: vim +PluginInstall +qall

```bash
$ git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```

-- Modo Normal
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

tecla R entramos a modo insertar.

r reemplazar para un solo carácter nos devuelve al modo normal, 
s nos deja en el modo insertar.
~ capitaliza 


-- i Modo inserción
<ctrl-v>181 inserta un caracter especial

-- v Modo visual
o cambio de dirección desde donde estoy haciendo la selección.
f busca ; sigue , vuelve
V modo visual que selecciona columnas
ctrl v modo de seleccion de columnas 
u/U cambia a mayúscula/minuscula

(HOLA Hola pirinola)


-- Modo comando
:w Guardar
:o abrir un archivo
u deshacer lo último que hice
 
cf. Cambiar hasta el punto
dd cambia toda la linea
cc cambia toda la linea

y copiar
o inserta una linea vacia debajo
dl borrar un caracter de la izquierda

. hace lo último que hicimos
numero mas comando y se lo repite
10 i =  Esc ==================== 
% voy al otro par de la llave (espejo)
Macros !!!!

/ Buscar n navegar adelante N navega adelante
? Busco para atras
* busco automaticamente la palabra que estoy encima

ci" Cambio lo que esta entre las comillas
shift V selecciono + y copio
$ final de la linea
0 principio de la linea

comienzo a escribit aprieto ctrl p (atrás) ctrl n (adelante) busqueda de antes y autocompleta


:%s/algo/alga/g reemplazar
Puedo marcar y luego reemplazar en esa zona

identar =
< identar +/-

gg al principio uv selecciono G final

:! comando unix

Se puede seleccionar y luego ! y poner un comando unix para que se ejecute en esa selección.

q (letra) grabo macro q
@ (letra) se ejecuta el macro 
@@ se ejecuta la ultima macro

ctrl W me muevo con NERDtree

:split  divido verticalemten
:vsplit divido horizontalmente

vimdiff dp aceptar los cambios que se ven

adfkjj-t plugin para moverse buffer ¿?  


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
