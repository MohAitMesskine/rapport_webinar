# 🟠 Rapport PFE — Plateforme de Webinar · Tamtam Internationale

> **Projet de Fin d'Études** — Plateforme de Webinar — *Tamtam Internationale*  
> Rédigé en LaTeX · Compilé avec `pdflatex`

---

## 📁 Structure du projet

```
rapport-pfe-webinar/
│
├── main.tex                  # Fichier principal (point d'entrée)
├── README.md                 # Ce fichier
│
├── chapters/
│   ├── 01_introduction.tex   # Chapitre 1 : Introduction générale
│   ├── 02_etat_art.tex       # Chapitre 2 : État de l'art & technologies
│   ├── 03_analyse.tex        # Chapitre 3 : Analyse et spécification des besoins
│   ├── 04_conception.tex     # Chapitre 4 : Conception de l'architecture
│   ├── 05_implementation.tex # Chapitre 5 : Implémentation et tests
│   └── 06_conclusion.tex     # Chapitre 6 : Conclusion et perspectives
│
├── assets/
│   ├── images/               # Figures, captures d'écran, diagrammes UML
│   ├── logo_ecole.png        # Logo de l'établissement
│   └── logo_entreprise.png   # Logo de l'entreprise d'accueil (si applicable)
│
├── bibliography/
│   └── references.bib        # Bibliographie au format BibTeX
│
└── styles/
    └── pfe_style.sty         # Style personnalisé (facultatif)
```

---

## ⚙️ Prérequis

Avant de compiler, assurez-vous d'avoir installé :

| Outil | Version recommandée | Installation |
|-------|-------------------|-------------|
| **TeX Live** ou **MiKTeX** | 2022+ | [tug.org/texlive](https://tug.org/texlive/) |
| `pdflatex` | inclus dans TeX Live | — |
| `bibtex` | inclus dans TeX Live | — |
| **Perl** | 5.x (pour `latexmk`) | [perl.org](https://www.perl.org/) |

---

## 🚀 Compilation — Guide complet

### ▶ Méthode 1 : Compilation simple (Linux / macOS / Windows)

```bash
pdflatex main.tex
```

---

## 🪟 Ouvrir le PDF après compilation (Windows)

```powershell
Start-Process .\main.pdf
```

Ou avec le chemin complet :

```powershell
Start-Process "C:\Users\VotreNom\rapport-pfe-webinar\main.pdf"
```

> **Astuce :** Vous pouvez aussi double-cliquer sur `main.pdf` dans l'explorateur Windows.

---

---

## 📝 Licence

Ce rapport est produit dans le cadre d'un projet de fin d'études.  
Toute reproduction partielle ou totale doit mentionner l'auteur original.

---

*Généré avec ❤️ — Rapport PFE · Plateforme Webinar · **Tamtam Internationale***
