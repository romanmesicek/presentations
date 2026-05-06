# Marketing Club Österreich KI – Slidev (Neversink Theme)

## Projekt

- **Titel:** Nachhaltige Entscheidungsgrundlagen für KI-Projekte
- **Anlass:** Marketing Club Österreich (Intermezzo innerhalb der Session „Frameworks, Strategie- und Konzeptentwicklung" von Reinhard Herok / Max Niederschick, Certified Sustainability Experts-Program 2026)
- **Datum:** 12. Mai 2026
- **Format:** 30 Min. Vortrag mit Mini-Diskussion nach jedem SCOPE-Buchstaben + Schluss-Diskussion
- **Speaker:** Roman Mesicek, Sustainability Skills Academy
- **Theme:** `slidev-theme-neversink` v0.4.1
- **Zielgruppe:** Marketingleute jeder Seniorität, Agentur und Inhouse, alle Bereiche
- **Konnex zur Tagespräsentation:** Verantwortung statt Reflex. Greift Reinhards „drei Hebel der Nachhaltigkeit" (Verhalten, Gestaltung, Produktion) auf und beantwortet die Hosts-Frage „What happened to (y)our critical thinking?" mit dem SCOPE-Kompass.

## Design-Prinzipien

### Durchgehend Dark

Alle Slides nutzen `color: dark`. Kein Farbwechsel zwischen Slides. SCOPE-Farben erscheinen in den Frame- und Beispiel-Folien als Rail und Diskussions-Box.

### Eckig, nicht rund

Keine `rounded-*` Klassen. Alle Elemente eckig: Rails, Diskussions-Boxen, Karten, Buttons, Kontaktfotos. Einzige Ausnahme: Profilbild auf der letzten Folie (rund per Inline-Style).

### Vertikale Linien als Designelement

Statt Kästchen mit Rahmen werden vertikale Linien (`border-l-2`, `border-l-3`) verwendet. Auf der Synthese-Folie als Trennelement zwischen SCOPE-Wörtern und als Rahmung um Titel und Brücke.

### Keine Gedankenstriche

Keine Em-Dashes oder En-Dashes. Komma, Punkt oder Umformulierung stattdessen.

### Keine Emojis

Keine Emojis als Icons oder Dekoration. SVG-Icons wo nötig (Kontaktfolie).

### Highlight-Farbe: Indigo statt Orange

Neversink-Default `--neversink-highlight-color` wird per CSS auf `#818cf8` (Indigo-400) überschrieben. Betrifft Titelstriche, Akzente und Hover-Farbe.

### Quellenangaben

Datenquellen direkt auf den Slides als kleine `src`-Spans (JetBrains Mono, 0.55–0.6rem). Nicht als separate Folie.

### Eine Folie, eine Sache

SCOPE-Frame-Folien geben die abstrakte Dimension (Lead + 3 Reflexions-Tags). SCOPE-Beispiel-Folien zeigen ein konkretes Marken-/Tool-Beispiel und stellen genau eine Diskussionsfrage ans Plenum. Keine Vermischung.

## Farbkonzept

**Hauptfarben:**

| Rolle | Farbe | Hex |
|-------|-------|-----|
| Hintergrund | Gray-800 | `dark` (Neversink) |
| Akzent / Indigo-Klammer | Indigo-400 | `#818cf8` |
| Provokations-Rail (Slide 2) | Red-500 | `#ef4444` |

**SCOPE-Farben** (Frame-Rail, Beispiel-Rail, Diskussions-Box):

| Dimension | Farbe | Hex (bg) | Accent |
|-----------|-------|----------|--------|
| S Suffizienz | Emerald-600 | `#059669` | `#6ee7b7` |
| C Carbon | Teal-600 | `#0d9488` | `#5eead4` |
| O Outcomes | Sky-600 | `#0284c7` | `#7dd3fc` |
| P Power | Orange-600 | `#ea580c` | `#fdba74` |
| E Endurance | Violet-600 | `#7c3aed` | `#c4b5fd` |

## Slide-Struktur (15 Slides, ~28 Min. + Puffer)

| # | Titel | Komponente | Inhalt |
|---|-------|------------|--------|
| 1 | Cover | `CoverSlide` + `ExtinctionOverlay` | Intermezzo · Marketing Club Österreich, 12. Mai 2026 |
| 2 | Verantwortung statt Reflex | `StatSlide` (red rail) | 10× / +48%, Anschluss an Reinhards „drei Hebel" |
| 3 | SCOPE Übersicht | `ScopeMatrix` | 5 Dimensionen mit Dreiklang-Stichwörtern |
| 4 | S Suffizienz Frame | `ScopeSlide` | Lead + 3 Reflexions-Tags (Notwendigkeit / Alternativen / Mehrwert) |
| 5 | S Beispiel + Diskussion | `ExampleSlide` | Jasper, Copy.ai, Writesonic — „Slop"-Stat — 1 Frage |
| 6 | C Carbon Frame | `ScopeSlide` | 3 Reflexions-Tags (Verbrauch / Energiemix / Verhältnis) |
| 7 | C Beispiel + Diskussion | `ExampleSlide` | Programmatic + Klaviyo Predictive — „Mio. Modell-Calls" — 1 Frage |
| 8 | O Outcomes Frame | `ScopeSlide` | 3 Reflexions-Tags (Nutzen / Herkunft / Verteilung) |
| 9 | O Beispiel + Diskussion | `ExampleSlide` | Qualtrics, Yabble, Toluna — 73% — 1 Frage |
| 10 | P Power Frame | `ScopeSlide` | 3 Reflexions-Tags (Plattform / Portabilität / Letztwort) |
| 11 | P Beispiel + Diskussion | `ExampleSlide` | Meta Advantage+, Google PMax — Lock-in — 1 Frage |
| 12 | E Endurance Frame | `ScopeSlide` | 3 Reflexions-Tags (Qualität / Abhängigkeit / Regulierung) |
| 13 | E Beispiel + Diskussion | `ExampleSlide` | Lil Miquela, Aitana Lopez — EU AI Act 2026 — 1 Frage |
| 14 | Synthese + Schluss-Diskussion | `SynthesisSlide` | „Tue Gutes, auch wenn niemand zuschaut." + 5-Wort-Recap + 2 Diskussionsfragen |
| 15 | Vielen Dank | `ClosingSlide` | Foto, Name, Academy, Icons, QR, Skills-Pitch |

### SCOPE-Übersicht (Slide 3): Dreiklang-Stichwörter

Auf der Übersichtsfolie stehen keine Fragen, nur Begriffserklärungen als Dreiklang:

| Dimension | Stichwörter |
|-----------|-------------|
| S Suffizienz | Notwendigkeit, Alternativen, Mehrwert. |
| C Carbon | Energie, Wasser, Emissionen. |
| O Outcomes | Verteilung, Gerechtigkeit, Risiken. |
| P Power | Datenhoheit, Abhängigkeiten, Kontrolle. |
| E Endurance | Regulierung, Kosten, Kompetenz. |

### Synthese (Slide 14): 5-Wort-Recap

Verdichtung der 5 Buchstaben für den Schluss-Bogen:

| Dimension | Recap-Wort |
|-----------|------------|
| S | „Brauchen wir es?" |
| C | „Was kostet es?" |
| O | „Wer profitiert?" |
| P | „Wer kontrolliert?" |
| E | „Hält es?" |

## Komponenten

### `CoverSlide`, `ScopeMatrix`, `ScopeSlide`, `StatSlide`, `QuestionSlide`, `ClosingSlide`

Aus `kreativwirtschaft-ki-20260423` übernommen. `QuestionSlide` wird in dieser Version nicht mehr genutzt (Diskussion läuft über `ExampleSlide` und `SynthesisSlide`).

### `ExampleSlide` (neu)

Beispiel-Folie für jede SCOPE-Dimension. Layout: Color-Rail links (SCOPE-Farbe) mit Letter und Position, Body rechts mit Marken-Headline, optionalem Stat-Block (Wert + Label + Quelle, vertikale Akzent-Linie) und Diskussions-Box am unteren Rand (white-on-SCOPE-color).

Props: `letter`, `name`, `position`, `color`, `brand`, `note?`, `stat?`, `statLabel?`, `statSource?`, `discussion`.

### `SynthesisSlide` (neu)

Schluss-Folie vor der Kontaktfolie. Header mit Indigo-Klammer und Kernaussage, 5-Spalten-Grid mit SCOPE-Recap (jede Spalte mit Buchstaben-eigener vertikaler Akzent-Linie), Brücke-Absatz, Diskussions-Box am unteren Rand mit zwei nummerierten Schluss-Fragen.

Props: `kicker`, `title`, `bridge`, `scope[{letter,name,word}]`, `questions[]`.

### `ExtinctionOverlay` (Slide 1)

Angepasste Kopie von `diakonie-greenai-20260224`:
- Farben: Indigo (`#818cf8`) statt Orange für Labels und Erklärungstitel
- Erklärungstext: Hellgrau (`#d1d5db`) statt Schwarz
- Text: „Diese Arten sind ausgestorben." (vereinfacht, keine Em-Dashes)
- „Warum diese Geister?" Titel entfernt

## CSS-Overrides (styles/index.css)

| Override | Grund |
|----------|-------|
| `footer { display: none }` | Neversink-Footer ausblenden |
| `border-bottom-color: #818cf8` auf h1/h2/h3 | Titelstrich Indigo statt Orange |
| `a { text-decoration: none }` | Keine Unterstriche auf Links |
| `a:hover { color: #818cf8 }` | Hover-Farbe Indigo |
| `.text-xs { font-size: 0.7rem }` | Quellenangaben klein halten |
| `p { margin: 0 }` | Absatz-Margins entfernen für kontrolliertes Spacing |

## Datenquellen & Markenbeispiele

### Slide 2 (Verantwortung statt Reflex)

| Datenpunkt | Quelle |
|---|---|
| KI-Anfrage = 10× Google-Suche | de Vries, A. (2023). The growing energy footprint of AI. Joule. |
| Google: +48% Emissionen trotz 6× Effizienz | Google Environmental Report, 2024 |
| Drei Hebel: Verhalten, Gestaltung, Produktion | Tagespräsentation Reinhard Herok / Max Niederschick |

### SCOPE-Beispiel-Folien

| # | Dimension | Markenbeispiele | Cluster (aus Strang A) |
|---|---|---|---|
| 5 | S Suffizienz | Jasper, Copy.ai, Writesonic | 3 — Content Creation |
| 7 | C Carbon | DV360, The Trade Desk, Klaviyo Predictive | 6, 7 — Programmatic + Personalisierung |
| 9 | O Outcomes | Qualtrics Edge Audiences, Yabble (YouGov), Toluna HarmonAIze | 1 — Insights & Market Research (Synthetic Respondents) |
| 11 | P Power | Meta Advantage+ Lookalike, Google Performance Max, Demand Gen | 2, 6 — Segmentierung + Programmatic |
| 13 | E Endurance | Lil Miquela, Aitana Lopez, EU AI Act Art. 50 | 11 — Synthetic Media |

Recherche-Grundlage: `sources/marketingclub-ki-20260512/2026-05-06_A_marketing-ki-use-cases.md` (Strang A, Bestandsaufnahme) und `2026-05-06_B_marketing-ki-scope-schnittstellen.md` (Strang B, SCOPE-Bewertung).

### Synthese (Slide 14)

Stress-Test-Frage „Strompreis × 10" entlehnt aus Strang B, Sufficiency-Block, Frage 5.

## QR-Code

Ein QR-Code auf Slide 15: `sustainability-skills.academy/start`

Datei: `public/images/qr-skills-academy.png` (weisse Punkte auf transparentem Grund, generiert vom User).

## Kontaktdaten (Slide 15)

- **Institution:** Sustainability Skills Academy
- **E-Mail:** roman.mesicek@sustainability-skills.at
- **LinkedIn:** linkedin.com/in/romanmesicek
- **Website:** sustainability-skills.at
- **GitHub:** github.com/romanmesicek
- **Icons:** Inline SVGs (Mail, LinkedIn, Globe, GitHub)

## Entwicklung

```bash
cd slidev-presentations/decks/marketingclub-ki-20260512
npm install
npm run dev      # http://localhost:3030
```

## Dateistruktur

```text
marketingclub-ki-20260512/
├── slides.md                  # 15 Slides
├── package.json
├── CLAUDE.md                  # Diese Datei
├── components/
│   ├── ClosingSlide.vue
│   ├── CoverSlide.vue
│   ├── ExampleSlide.vue       # Neu: Marken-Beispiel + Diskussionsfrage pro SCOPE
│   ├── ExtinctionOverlay.vue  # Schwebende Tier-Animationen (Indigo statt Orange)
│   ├── QuestionSlide.vue      # Aus Vorlage übernommen, derzeit ungenutzt
│   ├── ScopeMatrix.vue        # SCOPE-Übersicht
│   ├── ScopeSlide.vue         # SCOPE-Frame-Folien (Lead + 3 Reflexions-Tags)
│   ├── StatSlide.vue
│   └── SynthesisSlide.vue     # Neu: Schluss-Folie mit 5-Wort-Recap + 2 Diskussionsfragen
├── styles/
│   └── index.css              # CSS-Overrides (Footer, Highlight-Farbe, Links, Spacing)
└── public/
    ├── favicon.svg
    └── images/
        ├── roman.webp
        └── qr-skills-academy.png
```
