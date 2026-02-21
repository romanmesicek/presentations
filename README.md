# Presentations

Slide decks von [Roman Mesicek](https://www.linkedin.com/in/romanmesicek/) zu den Themen Nachhaltigkeit, KI und Verantwortung — gebaut mit [Slidev](https://sli.dev) und automatisch via GitHub Pages gehostet.

Jede Präsentation ist als interaktive Web-Version verfügbar (Tastaturnavigation, Animationen) sowie als PDF zum Download.

## Decks

| Datum | Titel | Anlass | Slides | PDF |
|-------|-------|--------|--------|-----|
| 24.02.2026 | Green & Responsible AI in der Sozialwirtschaft | Online-Workshop für die [Diakonie Österreich](https://www.diakonie.at/) — SCOPE-Framework angewandt auf KI-Entscheidungen in sozialen Einrichtungen | [Slides](https://romanmesicek.github.io/presentations/diakonie-greenai-20260224/) | [PDF](https://romanmesicek.github.io/presentations/diakonie-greenai-20260224/slides.pdf) |
| 09.02.2026 | KI Skills Development Workflow | Vortrag beim [KI-Forum](https://36sustainability.org/) von 36 Degrees — systematischer Prozess zur Erstellung von Claude Skills | [Slides](https://romanmesicek.github.io/presentations/kiforum-skillsdev-20260209/) | [PDF](https://romanmesicek.github.io/presentations/kiforum-skillsdev-20260209/slides.pdf) |

### Themes

Verwendete Slidev-Themes: [Neversink](https://github.com/gureckis/slidev-theme-neversink), [Apple Basic](https://github.com/slidevjs/themes/tree/main/packages/theme-apple-basic).

## Lokale Entwicklung

```bash
cd decks/diakonie-greenai-20260224
npm install
npm run dev       # http://localhost:3030
```

## Build (alle Decks)

```bash
bash scripts/build-all.sh
```

Erzeugt `dist/` mit HTML + PDF pro Deck. Der Build wird bei jedem Push auf `main` automatisch via GitHub Actions ausgeführt.
