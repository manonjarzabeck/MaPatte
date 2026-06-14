#  Ma Patte : Carnet de santé animale

## Structure du Projet 

```
.
├── Calendar // Une des fonctionnalités principale (un des onglets)
│   ├── Component
│   │   ├── ComponentA.swift // Un composant
│   │   ├── ComponentB.swift
│   │   └── ComponentC.swift
│   ├── Model
│   │   ├── ModelA.swift
│   │   └── ModelB.swift
│   └── Scene
│       └── CalendarScene.swift // Un écran
├── MedicalSheet
│   ├── Component
│   │   └── ...
│   ├── Model
│   │   └── ...
│   └── Scene
│       └── ...
...
│
├── Helper
│   ├── Extension // Extension de types de Swift ou SwiftUI
│   │   └── TypeA+extension.swift
│   └── ...
├── Resource
│   ├── Assets
│   └── ...
├── ContentView.swift
├── MaPatteApp.swift
└── README.md
```

## Git & GitHub

### Nommer une branche de travail sur une fonctionnalité

Préfixer de `feature/` et écrire le nom de la fonctionnalité en minuscule avec des tirets, sans espaces ni tiret bas.

```
feature/my-feature-name
```

### Nommer un commit d'une fontionnalité

```
feat(lang): add polish language
```

### Nommer un commit d'une correction de bogue

```
fix: correct minor typos in code
```

### Nommer un commit de réusinage

```
refactor: update files spacing
```

### Nommer un commit de mise à jour de la doc ou du README

```
docs: correct spelling of CHANGELOG
```
