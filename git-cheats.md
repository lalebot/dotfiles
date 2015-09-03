# Git cheats

## Configuracion global inicial

```bash
$ git config --global user.name "Menganito"
$ git config --global user.email "menganito@fulanito.com"
$ git config --global color.ui true
$ git config --global color.status auto
$ git config --global color.log auto
$ git config --global core.editor "nano"
$ git config --global merge.tool kdiff3 # Establecer kdiff3 como mergetool default

$ git config --global credential.helper cache # cache de credenciales
```

![Ciclo de vida de los archivos](http://git-scm.com/figures/18333fig0201-tn.png "Ciclo de vida de los archivos")

## Iniciar proyecto
```bash
$ git init # Crear un proyecto en Git de manera local
$ git clone git@gitlab.com:lalebot/prom-pip.git # Crear un proyecto en Git de manera remota
```

### Seguir archivos
```bash
$ git status # Verificar el estado de Git
$ git diff # Muestra exactamente que ha cambiado
$ git diff --stat master otra-rama # Brinda más información sobre las diferencias entre ramas
$ git diff --staged # Compara los cambios del estado actual con los últimos confirmados
$ git diff --cached # comando utilizado para archivos en el escenario.
$ git add README.md #Agrego los cambios
$ git rm --cached readme.txt # Elimino seguimiento del archivo pero lo mantengo el el repositorio local

```

### Ignorar Archivos o carpetas
```bash
$ cat .gitignore # Crear un archivo que ignore archivos/carpetas y editarlo agregando:
```
> *.[oa] # linea que ignora los archivos con extensión .o o .a
> 
> *~ # Ignora todos los archivos que terminan en tilde
> 
> test/ # Ignora la carpeta test

> Los patrones glob son expresiones regulares simplificadas que pueden ser usadas por las shells. Un asterisco (*) reconoce cero o más caracteres; [abc] reconoce cualquier carácter de los especificados entre corchetes (en este caso, a, b o c); una interrogación (?) reconoce un único carácter; y caracteres entre corchetes separados por un guión ([0-9]) reconoce cualquier carácter entre ellos (en este caso, de 0 a 9).

### Confirmar cambios
```bash
$ git commit -m "Comentarios del Commit" # Confirmo los cambios con un comentario
$ git commit -a -m "Comentarios del Commit" # Realiza un "git add" confirmando el seguimiento de todos los archivos
```

### Log
```bash
$ git log --pretty=format:"%h - %an, %ar : %s" --graph --since=2.weeks
```

### Deshacer cambios
```bash
$ git checkout -- archivo.md # Revierte el archivo a su último estado confirmado
```

### Repositorios remotos
```bash
$ git push -u origin master #Enviar los cambios al servidor # git push [seudónimo] [ramificación] 
$ git pull #Actualizar desde el servidor # Realiza un fetch más un merge
$ git fetch origin # Obtener los cambios

$ git remote add pb git://github.com/paulboone/ticgit.git # Agregar repositorio remoto al proyecto con nombre local pb.
$ git remote rename pb paul
$ git remote rm paul
```

### Versiones
```bash
$ git tag -a v1.4 -m 'my version 1.4'
$ git push origin v1.5 # Las etiquetas tienen que ser enviadas luego de creadas.
```

### Alias
```bash
$ git config --global alias.ck checkout
$ git config --global alias.br branch
$ git config --global alias.cm commit
$ git config --global alias.st status
```

## Ramas
```bash
$ git branch # Ver ramas
$ git checkout -b primera-rama # Crear una rama
$ git checkout master
$ git merge iss43 # Merge de la rama iss43 estando en la rama master
$ git mergetool # En el caso de que se generen conflictos y queramos resolverlos visualmente.
$ git branch -d segunda-rama # Eliminar Rama, con -D se fuerza el borrado

$ git branch --merged # Ver solo ramas fusionadas
$ git branch --no-merged 
```

### Ramas Remotas
```bash
$ git push (remoto) (rama) #Publicar rama para compartirla
$ git branch -m devel dv # Renombrar rama local
$ git checkout --track origin/arreglos-varios # Seguimiento de ramas remotas con mismo nombre
$ git checkout -b serverfix origin/serverfix # Origin es en el remoto
$ git checkout -b a-v origin/arreglos-varios # Crear una rama a-v que esta vinculada con la rama remota arreglos-varios
$ git branch -u origin/ramaremota # Asociar rama local para que haga seguimiento de la rama remota.
$ git branch -vv # Ver que ramas siguen a cual en el servidor remoto

$ git push origin --delete rama-remota # Eliminar rama remota
$ git push origin :rama-remota # Eliminar rama remota

$ git config --global push.default matching # git push mismo nombre remoto
$ git config --global push.default simple # git push a la rama remota asociada

$ git push origin HEAD:devel # Actualizar rama remota con distinto nombre desde la rama dv
```

```bash
$ git stash # Guarda un estado incompleto
$ git stash pop # Restarurarlos luego de cambiar de rama
```

## Agregar el key ssh seguro
En Linux instalar *openssh*

## Git GUI
+ gitg
+ gitk

## SublimeText plugins: :octocat:
- Git
- GitGutter
- **Sublimerge**
- MarkdownEditing

## Revisar
- http://nuclearsquid.com/writings/git-tricks-tips-workflows/