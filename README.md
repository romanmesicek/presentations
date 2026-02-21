# Presentations

Slide decks von [Roman Mesicek](https://www.linkedin.com/in/romanmesicek/) zu den Themen Nachhaltigkeit, KI und Verantwortung — gebaut mit [Slidev](https://sli.dev) und automatisch via GitHub Pages gehostet.

Jede Präsentation ist als interaktive Web-Version verfügbar (Tastaturnavigation, Animationen) sowie als PDF zum Download.

## Decks

### Green & Responsible AI in der Sozialwirtschaft

Online-Workshop für die [Diakonie Österreich](https://www.diakonie.at/) am 24. Februar 2026. Das SCOPE-Framework (Suffizienz, Carbon, Outcomes, Power, Endurance) angewandt auf KI-Entscheidungen in sozialen Einrichtungen — mit Fallstudien aus der Pflege und Verwaltung.

[Slides](https://romanmesicek.github.io/presentations/diakonie-greenai-20260224/) | [PDF](https://romanmesicek.github.io/presentations/diakonie-greenai-20260224/slides.pdf)

### KI Skills Development Workflow

Vortrag beim [KI-Forum](https://36sustainability.org/) von 36 Degrees am 9. Februar 2026. Systematischer Prozess zur Erstellung von Claude Skills — von der Idee bis zur Publikation.

[Slides](https://romanmesicek.github.io/presentations/kiforum-skillsdev-20260209/) | [PDF](https://romanmesicek.github.io/presentations/kiforum-skillsdev-20260209/slides.pdf)

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
