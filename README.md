# Workshop Vim

Support pour le workshop Hack2g2 sur Vim du 07/11.

La présentation a été réalisée en LaTeX avec le thème [Metropolis](https://github.com/matze/mtheme).

## Pour l'utilisation/la modification

```bash
apt update && apt -y upgrade
apt -y install texlive-latex-extra # PDFLatex
```

## Pour la présentation

```bash
apt update && apt -y upgrade && apt -y install slop
cd /opt && git clone https://gitlab.com/wavexx/screenkey.git
cd screenkey && ./screenkey -t 0.7 -p fixed -g $(slop -n -f '%g')
```

## Fichiers

Dans `resources/` !
Pour faciliter l'accès aux fichiers j'ai créé un dépôt à part.

* Le script de Bee Movie
* Les paroles des lorientaises
* Le premier fichier exécuté en lancant linux en x86
* 2 petites surprises

## Exercices

### Première partie

Cette première partie se fera sur le script (tronqué) de Bee Movie ([ici](resources/garbage)) mais avec des PRANKS aux endroits demandés.
De manière à être sûr d'être arrivé au bon endroit.

__1. Aller à la fin du fichier__

`G`

__2. Aller à la ligne 69 du fichier__

`69G`

__3. Aller au tier du fichier__

`33%`

__4. Aller au début du fichier__

`gg`

### Seconde partie

Cette seconde partie se fera avec les paroles des Lorientaises ([ici](resources/lyrics)).
Ce sera surtout des exercices de manipulation.

__1. Recopier les lignes en double__

`/x2\nqmhhDYpnq9@m`

__2. Mettre en majuscule "*Lesquels*"__

`/*\nqmxgUw$xn9@m`

__3. Remplacer "[REFRAIN]" par le refrain__

### Troisième partie

Cette avant-dernière partie se fera sur la première ligne de code exécutée par Linux x86 ([ici](resources/main.c)).

__1. Re-tabuler la première fonction__

Goto ligne 179 puis `%=` ou `}=`.

__1. Puis les 2 fonctions suivantes__

Goto ligne 213 puis `=2}`.

__2. Changer du texte entre guillemets__

`ci"Hello world !<Esc>`

__3. Insérer le résultat d'une commande__

On va s'ajouter en tant qu'auteur dans les copyright

`:.!whoami`
`:r !whoami`

### Test

Les tests vont se faire en binome à l'aveugle.
Chacun va se voir attribuer un fichier qu'il traitera à l'aveugle avec l'aide de l'autre.

#### Premier fichier

On part de (cf. [Fichier de départ](resources/surprise_0)).

On fait :

* On va au 2nd paragraphe `}`
* On supprime les 16 prochaines lignes `d16j`
* On va à la fin du fichier ̀`G`
* On colle `p`
* On ramène la ligne et on supprime la fin `lDJ7lDJ2lD2lD`
* On remplace les $ par 4 espaces `:%s/\$/    /g`
* On remplace les X par des espaces `:%s/X/ /g`

Et on obtient : un petit chat (cf. [le petit chat](resources/result_surprise_0)).

#### Second fichier

On part de (cf. [Fichier de départ](resources/surprise_1)).

On fait :

* On va à la ligne 11
* On insère 4 . `4i.`
* Refaites la même chose sur les 3 lignes suivantes
* On supprime la ligne 17
* On la colle avant
* On va à la ligne 18 `18G`
* Supprimer jusqu'à la fin `dG`
* Aller à la ligne 4
* Coller avant `P`
* On inverse les lignes `:%!tac`

Et on obtient : une grosse surprise (cf. [la grosse surprise](resources/result_surprise_1)).
