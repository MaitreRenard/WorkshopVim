# Workshop Vim

Support pour le workshop Hack2g2 sur Vim du 07/11

## Pour la modification

```bash
apt update && apt -y upgrade
apt -y install texlive-xetex
```

## Pour la présentation

```bash
apt update && apt -y upgrade && apt -y install slop
cd /opt && git clone https://gitlab.com/wavexx/screenkey.git
cd screenkey && ./screenkey -t 0.7 -p fixed -g $(slop -n -f '%g')
```

## Fichiers

Dans `resources/` !

* Les paroles des lorientaises
* Cours d'IS ?

## Intro

### Prenez des notes !

```vim
:tabe <file>
:vs <file>
:sp <file>
<C-w> <h,j,k,l>
```

### Let's go
```vim
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>
```

## Exercices

### Première partie

Cette première partie se fera avec un fichier rempli de garbage mais des petites perles aux endroits demandés.

1. Aller au tier du fichier

`33%`

2. Aller à la ligne 69 du fichier

`69G`

3. Aller à la fin du fichier

`G`

4. Aller au début du fichier

`gg`

### Seconde partie

Cette seconde partie se fera avec les paroles des Lorientaises ([ici](resources/lyrics)).

1. Recopier les lignes en double

`/x2\nqmhhDYpnq9@m`

2. Mettre en majuscule "*Lesquels*"

`/*\nqmxgUw$xn9@m`

3. Remplacer "[REFRAIN]" par le refrain

### Troisième partie

Cette avant-dernière partie se fera sur un bout de code C quelconque.

1. Re-tabuler la première fonction

Goto ligne 179 puis `%=` ou `}=`.

1. Puis les 2 fonctions suivantes

Goto ligne 213 puis `=2}`.

2. Changer du texte entre guillemets

`ci"Hello world !<Esc>`

3. Insérer le résultat d'une commande

On va s'ajouter en tant qu'auteur dans les copyright

`:.!whoami`
`:r !whoami`

### Test

Ici on va faire 2/3 exos à l'aveugle (x2)
