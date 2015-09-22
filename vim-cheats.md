# Vim Vim
+ Convincion teclas unix
+ Programa kmon para ver en la pantalla lo que se esta pulsando 
+ Usar los comandos de Linux en Windows: unix-utils.exe

+ http://hipertextual.com/2015/02/como-usar-vim
+ http://voylinux.com/asi-que-quieres-aprender-usar-vim/
+ http://derekwyatt.org/vim/tutorials/novice/ 
+ http://vim.rtorr.com/lang/es_es/

Vundle -> To install from command line: vim +PluginInstall +qall

-- Modo comando
i Modo inserción
:w Guardar
:o abrir un archivo
u deshacer lo último que hice

e Me muevo al final de la próxima palabra
w Me muevo a la próxima palabra
b Me muevo palabra atras

x borra el caracter sobre el que estas encima

p pega el portapapeles
P pega antes del lugar 
r remplazar el caracter sobre el que estas
f search un caracter en la linea (hola)
a Comienzo a editar despues del caracter
A comienzo a editar al fin de la linea
I comienzo a editar al inicio
D borrar hasta la final de la linea
C cambiar hasta el final de la linea
s Sustituir es como un x y un i
S sustituir la linea
d borrar mas otra letra que diga que borra 
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

c-t plugin para moverse buffer ¿?   

ci" cambiar dentro de las comillas
vap selecciona alrededor del parrafo

todo
- vim-airline
- vim theme gruvbox
- Vundle
- NERD Tree
- Vim Airline
- Rainbow parenthesis
- Vim gitgutter

verbos:
v (visual)
c (change/cambiar)
d (delete/borrar)
y (yank/copiar).

modificadores:
i (inside/dentro de)
a (around/alrededor)
t (till../hasta que encuentra el carácter)
f (find../hasta que encuentra el carácter incluyéndolo)
/ (buscar).

objetos: 
w (word/palabra)
s (sentence/frase) 
p (paragraph/párrafo) 
b (block/parentesis)
t (tag/ para html/xml)