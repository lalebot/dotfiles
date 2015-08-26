# Git cheats

## Git global setup

```bash
$ git config --global user.name "Ale"
$ git config --global user.email "mail@dominio.com"
$ git config --global color.ui true
$ git config --global color.status auto
$ git config --global color.log auto

$ git config --global credential.helper cache # cache de credenciales
```

```bash
$ git clone git@gitlab.com:lalebot/prom-pip.git
$ git add README.md #Agrego los cambios
```

```bash
$ git commit -a -m "add README" #Subir los cambios 
$ git push -u origin master #Enviar los cambios al servidor # git push [seudónimo] [ramificación] 
$ git pull #Actualizar desde el servidor # Realiza un fetch más un merge
$ git fetch origin # Obtener los cambios
```

```bash
git diff --stat master otra-rama
```

### Ramas
```bash
$ git checkout -b primera-rama # Crear una rama
$ git checkout master
$ git branch -d segunda-rama # Eliminar Rama
$ git branch # Ver ramas
$ git branch --merged # Ver solo ramas fusionadas

$ git push (remoto) (rama) #Publicar rama para compartirla

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

$ git branch -m nombre-rama nombre-rama-nueva # Renombrar rama local
```

```bash
$ git tag v0.1 # Guarda el estado en un tag
$ git stash # Guarda un estado incompleto
$ git stash pop # Restarurarlos luego de cambiar de rama
```

```bash
$ git clone https://github.com/lalebot/tutorial-git.git # Clonación del repositorio.
$ git status # Averiguar como andamos
$ git diff --cached # comando utilizado para archivos en el escenario.
```

## Agregar el key ssh seguro

En Linux instalar *openssh*

## Git GUI
gitg

## SublimeText plugins: :octocat:
- Git
- GitGutter
- **Sublimerge**
- MarkdownEditing

## Revisar
- http://nuclearsquid.com/writings/git-tricks-tips-workflows/
