<div align="center">
  <img src="logos/logo.png" alt="Logo TamTam Webinar" width="120"/>

  # Rapport de Stage de Fin d'Études —  Webinar

  ### Contribution à la conception et au développement d'une application de gestion des webinaires

  **Master Ingénierie des Systèmes d'Information (ISI)**
  Faculté des Sciences Semlalia de Marrakech (FSSM) — Année universitaire 2025–2026

  ![LaTeX](https://img.shields.io/badge/Made%20with-LaTeX-008080?logo=latex&logoColor=white)
  ![License](https://img.shields.io/badge/Usage-Académique-blue)
  ![Status](https://img.shields.io/badge/Statut-Terminé-success)

</div>

---

## Présentation du projet

Le projet **Webinar** est une plateforme web et mobile de **gestion des webinaires professionnels** conçue et développée pour l'entreprise **TAMTAM International**, à destination des **fiduciaires et experts-comptables belges**. Elle répond à un besoin concret : remplacer les supports papier et les outils fragmentés utilisés lors des émissions en direct par une solution numérique unique et centralisée.

Au cœur de la plateforme se trouve un **prompteur digital** qui permet à l'orateur, au modérateur et à la régie de piloter ensemble, en temps réel, l'intégralité du déroulé d'une session : affichage des textes et du script, diffusion d'images et d'articles, lancement de sondages, navigation entre les slides et contrôle à distance via une **télécommande mobile**. La plateforme gère également les inscriptions, les interactions du public (chat, questions/réponses, annonces), un examen final automatisable et la génération d'attestations de présence.

Développée selon une méthodologie **Agile Scrum** répartie en quatre sprints, la solution s'appuie sur une architecture moderne et temps réel combinant **Meteor.js** et **React.js** (front-end), **Symfony** et **Node.js** (back-end), ainsi que **MongoDB** et **MySQL** (persistance hybride). La synchronisation instantanée entre tous les participants est assurée par le protocole **DDP** de Meteor couplé aux **WebSockets**.

Ce dépôt regroupe le **code source LaTeX** du rapport de soutenance documentant l'ensemble de ce travail — du cadrage du projet à sa réalisation technique.

> **Mots-clés :** SCRUM · MeteorJS · ReactJS · Symfony · MongoDB · Webinaires



## Aperçu du contenu

Le rapport est structuré en quatre chapitres :

1. **Cadre du projet** — présentation de TamTam International, problématique, objectifs et planification en sprints (diagrammes de Gantt).
2. **Analyse et conception** — modélisation UML des modules Webinar, OffCourse et United Associate (bête à cornes, cas d'utilisation, séquences, classes, modèle du domaine).
3. **Étude technique** — architecture physique et logique, stack technologique, qualité de code, pipeline CI/CD et infrastructure de déploiement.
4. **Réalisation** — présentation des interfaces et démonstration des fonctionnalités livrées.

---

## Structure du dépôt

```
.
├── main.tex            # Fichier racine à compiler
├── README.md           # Ce fichier
├── Chapters/           # Chapitres du rapport (.tex)
├── realisation/        # Contenu du chapitre Réalisation
├── logos/              # Logos (TamTam, FSSM, Webinar...)
├── image_webinar/      # Captures d'écran des interfaces de la plateforme
├── uml_webinar/        # Diagrammes UML (cas d'utilisation, séquences, classes...)
├── assert/             # Ressources annexes (assets)
│
└── (fichiers générés automatiquement à la compilation)
    ├── main.aux
    ├── main.lof        # Liste des figures
    ├── main.lot        # Liste des tableaux
    ├── main.log
    ├── main.nlo        # Nomenclature / glossaire (paquet nomencl)
    └── main.out
```

> Les fichiers `main.aux`, `main.log`, `main.lof`, `main.lot`, `main.nlo`, `main.out` sont **générés automatiquement** lors de la compilation. Il est recommandé de ne pas les versionner (voir le [.gitignore](#nettoyage-des-fichiers-temporaires) plus bas).

---

## Prérequis

Pour compiler le rapport en local, vous avez besoin d'une distribution LaTeX complète :

| Système | Distribution recommandée |
|---|---|
| Windows | [MiKTeX](https://miktex.org/download) ou [TeX Live](https://www.tug.org/texlive/) |
| macOS | [MacTeX](https://www.tug.org/mactex/) |
| Linux (Debian/Ubuntu) | TeX Live (`sudo apt install texlive-full`) |

Outils complémentaires utiles :

- **latexmk** — automatise les passes de compilation (inclus dans TeX Live / MacTeX).
- **biber** ou **bibtex** — pour la bibliographie.
- Un éditeur LaTeX : VS Code + extension *LaTeX Workshop*, TeXstudio, ou TeXmaker.

---

## Compilation locale

### Cloner le dépôt

```bash
git clone https://github.com/<votre-utilisateur>/<nom-du-depot>.git
cd <nom-du-depot>
```

### Ouvrir le PDF (Windows / PowerShell)

Une fois le rapport compilé, ouvrez le PDF généré dans Chrome :

```powershell
Start-Process "chrome" -ArgumentList "C:\Users\PC\Desktop\rapport_pfe\main.pdf"
```

### Méthode 1 — pdflatex manuel

Si vous n'utilisez pas latexmk, enchaînez les passes manuellement (nécessaire pour résoudre la table des matières, les références et la bibliographie) :

```bash
pdflatex main.tex
makeindex main.nlo -s nomencl.ist -o main.nls   # génère la nomenclature / glossaire
bibtex main          # ou : biber main  (si vous utilisez biblatex/biber)
pdflatex main.tex
pdflatex main.tex
```

> Trois passes de `pdflatex` sont nécessaires pour que la table des matières, la liste des figures/tableaux et toutes les références croisées soient correctes. L'étape `makeindex` est requise car le projet utilise le paquet **nomencl** (présence du fichier `main.nlo`) pour le glossaire.

### Méthode 2 — Docker (sans installation LaTeX)

Si vous ne voulez rien installer, utilisez une image Docker TeX Live :

```bash
docker run --rm -v "$PWD":/data -w /data texlive/texlive:latest \
  latexmk -pdf main.tex
```

### Méthode 3 — Overleaf

1. Compressez le contenu du dépôt en `.zip`.
2. Sur [Overleaf](https://www.overleaf.com/) : **New Project → Upload Project** et déposez le `.zip`.
3. Définissez `main.tex` comme document principal (menu *Menu → Main document*).
4. Réglez le compilateur sur **pdfLaTeX** (ou **XeLaTeX** si vous utilisez des polices système) dans *Menu → Compiler*.

---

## Compilation automatique (GitHub Actions)

Pour générer le PDF automatiquement à chaque `push`, créez le fichier `.github/workflows/build.yml` :

```yaml
name: Build LaTeX document

on:
  push:
    branches: [ main ]
  pull_request:
    branches: [ main ]

jobs:
  build_latex:
    runs-on: ubuntu-latest
    steps:
      - name: Récupérer le dépôt
        uses: actions/checkout@v4

      - name: Compiler le document LaTeX
        uses: xu-cheng/latex-action@v3
        with:
          root_file: main.tex
          latexmk_use_xelatex: false

      - name: Publier le PDF en artefact
        uses: actions/upload-artifact@v4
        with:
          name: rapport-pfe
          path: main.pdf
```

Le PDF compilé sera disponible dans l'onglet **Actions → (run) → Artifacts** de GitHub.

---

## Nettoyage des fichiers temporaires

LaTeX génère de nombreux fichiers auxiliaires (`.aux`, `.log`, `.toc`, `.out`, etc.). Pour les supprimer :

```bash
latexmk -c        # supprime les fichiers temporaires (garde le PDF)
latexmk -C        # supprime aussi le PDF généré
```

Pensez à ajouter un `.gitignore` adapté pour ne pas versionner ces fichiers :

```gitignore
*.aux
*.log
*.toc
*.lof
*.lot
*.out
*.nlo
*.nls
*.ilg
*.bbl
*.bcf
*.blg
*.fls
*.fdb_latexmk
*.synctex.gz
*.run.xml
```

---

## Dépannage

| Problème | Cause probable | Solution |
|---|---|---|
| Table des matières ou références vides / `??` | Compilation incomplète | Relancer 2–3 passes (ou utiliser `latexmk`) |
| `Package not found` | Paquet LaTeX manquant | MiKTeX l'installe à la volée ; sous TeX Live : `tlmgr install <paquet>` |
| Bibliographie absente | Passe `bibtex`/`biber` oubliée | Lancer `bibtex main` (ou `biber main`) entre les passes pdflatex |
| Caractères accentués cassés | Mauvais encodage | Vérifier `\usepackage[utf8]{inputenc}` (pdfLaTeX) et enregistrer les fichiers en UTF-8 |
| Images non trouvées | Mauvais chemin | Vérifier `\graphicspath{}` et les chemins relatifs vers `figures/` |
| Erreur avec polices système | Compilateur inadapté | Utiliser **XeLaTeX** ou **LuaLaTeX** au lieu de pdfLaTeX |

---

## À propos de ce rapport

Ce dépôt contient le **rapport de soutenance de projet de fin d'études (PFE)** consacré au projet **Webinar**, une application de gestion des webinaires développée au sein de l'entreprise TAMTAM International dans le cadre du Master Ingénierie des Systèmes d'Information (ISI) à la Faculté des Sciences Semlalia de Marrakech.

---

## Licence

Ce document est un travail académique. Le code source LaTeX peut être réutilisé à des fins d'apprentissage et d'inspiration. Le contenu du rapport (texte, captures, données métier de TAMTAM International) reste la propriété de son auteur et de l'entreprise ; toute reproduction ou diffusion nécessite leur autorisation préalable.

<div align="center">

**Mohamed Ait Messkine**

*Master ISI — FSSM · 2025–2026*

</div>
