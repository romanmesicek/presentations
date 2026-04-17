# Kreativwirtschaft KI – Slidev (Neversink Theme)

## Projekt

- **Titel:** Nachhaltige Entscheidungsgrundlagen für KI-Projekte
- **Anlass:** wewant2know — "Im Kreis laufen ist dein neues Business" (Kreativwirtschaft Austria)
- **Datum:** 23. April 2026, Online (Zoom)
- **Format:** 10 Min. Impuls + Diskussion
- **Speaker:** Roman Mesicek, Sustainability Skills Academy
- **Theme:** `slidev-theme-neversink` v0.4.1
- **Teilnehmende:** ~165 (75 we:transform + 90 Netzwerk)

## Design-Prinzipien

### Durchgehend Dark

Alle Slides nutzen `color: dark`. Kein Farbwechsel zwischen Slides. SCOPE-Farben erscheinen nur in Badges und Kernaussage-Boxen.

### Eckig, nicht rund

Keine `rounded-*` Klassen. Alle Elemente eckig: Badges, Karten, Buttons, Kontaktfotos. Einzige Ausnahme: Profilbild auf der letzten Folie (rund per Inline-Style).

### Vertikale Linien als Designelement

Statt Kästchen mit Rahmen werden vertikale Linien (`border-l-2`) verwendet, wie auf der Titelfolie. Konsistent auf Slides 2 und 9.

### Keine Gedankenstriche

Keine Em-Dashes oder En-Dashes. Komma, Punkt oder Umformulierung stattdessen.

### Keine Emojis

Keine Emojis als Icons oder Dekoration. SVG-Icons wo nötig (Kontaktfolie).

### Highlight-Farbe: Indigo statt Orange

Neversink-Default `--neversink-highlight-color` wird per CSS auf `#818cf8` (Indigo-400) überschrieben. Betrifft Titelstriche, Akzente und Hover-Farbe.

### Quellenangaben

Datenquellen direkt auf den Slides als `text-xs` Spans. Nicht als separate Folie.

## Farbkonzept

**Hauptfarben:**

| Rolle | Farbe | Tailwind |
|-------|-------|----------|
| Hintergrund | Gray-800 | `dark` (Neversink) |
| Akzent | Indigo-400 | `text-indigo-300` |
| Warnung/Kontrast | Red-400 | `text-red-400`, `border-red-400` |

**SCOPE-Farben** (nur für Badges und Kernaussage-Boxen):

| Dimension | Farbe | Badge | Kernaussage-Box |
|-----------|-------|-------|-----------------|
| S Suffizienz | Emerald | `bg-emerald-600` | `bg-emerald-600 text-white` |
| C Carbon | Teal | `bg-teal-600` | `bg-teal-600 text-white` |
| O Outcomes | Sky | `bg-sky-600` | `bg-sky-600 text-white` |
| P Power | Orange | `bg-orange-600` | `bg-orange-600 text-white` |
| E Endurance | Violet | `bg-violet-600` | `bg-violet-600 text-white` |

## Slide-Struktur (11 Slides)

| # | Titel | Layout | Inhalt |
|---|-------|--------|--------|
| 1 | Nachhaltige Entscheidungsgrundlagen für KI-Projekte | `cover` | ExtinctionOverlay, Speaker, Datum |
| 2 | Das mächtigste Werkzeug. Und das ressourcenhungrigste. | `two-cols-title` | Links: 10x/+48% mit roten Linien. Rechts: Kreativ-Twist mit Indigo-Linie |
| 3 | SCOPE | `side-title` | Übersicht: 5 Dimensionen mit Dreiklang-Stichwörtern (keine Fragen!) |
| 4 | S Suffizienz | `top-title` | 3 Fragen, Kernaussage in Emerald |
| 5 | C Carbon | `top-title` | 3 Fragen, Kernaussage in Teal |
| 6 | O Outcomes | `top-title` | 3 Fragen, Kernaussage in Sky |
| 7 | P Power | `top-title` | 3 Fragen, Kernaussage in Orange |
| 8 | E Endurance | `top-title` | 3 Fragen, Kernaussage in Violet |
| 9 | KI und Kreislaufwirtschaft | `two-cols-title` | Links: 80%/2027 mit Indigo-Linien. Rechts: Kernaussage mit roter Linie |
| 10 | Fragen für die Diskussion | `top-title` | 4 Fragen |
| 11 | Vielen Dank. | `two-cols-title` | Links: Foto, Name, Academy, Icons. Rechts: QR-Code, Skills-Pitch |

### SCOPE-Übersicht (Slide 3): Dreiklang-Stichwörter

Auf der Übersichtsfolie stehen keine Fragen, nur Begriffserklärungen als Dreiklang:

| Dimension | Stichwörter |
|-----------|-------------|
| S Suffizienz | Notwendigkeit, Alternativen, Mehrwert. |
| C Carbon | Energie, Wasser, Emissionen. |
| O Outcomes | Verteilung, Gerechtigkeit, Risiken. |
| P Power | Datenhoheit, Abhängigkeiten, Kontrolle. |
| E Endurance | Regulierung, Kosten, Kompetenz. |

### Slides 2 und 9: Seitenverkehrtes Farbschema

| | Slide 2 (Provokation) | Slide 9 (Kreislaufwirtschaft) |
|---|---|---|
| Links | Rot (Zahlen/Problem) | Indigo (Zahlen/Fakten) |
| Rechts | Indigo (Kreativ-Twist) | Rot (Kernaussage) |

## Komponenten

### ExtinctionOverlay (Slide 1)

Angepasste Kopie von `diakonie-greenai-20260224`:
- Farben: Indigo (`#818cf8`) statt Orange für Labels und Erklärungstitel
- Erklärungstext: Hellgrau (`#d1d5db`) statt Schwarz
- Text: "Diese Arten sind ausgestorben." (vereinfacht, keine Em-Dashes)
- "Warum diese Geister?" Titel entfernt

### Keine ScopeMatrix

Keine Fallstudien in diesem Impuls-Format.

## CSS-Overrides (styles/index.css)

| Override | Grund |
|----------|-------|
| `footer { display: none }` | Neversink-Footer ausblenden |
| `border-bottom-color: #818cf8` auf h1/h2/h3 | Titelstrich Indigo statt Orange |
| `a { text-decoration: none }` | Keine Unterstriche auf Links |
| `a:hover { color: #818cf8 }` | Hover-Farbe Indigo |
| `.text-xs { font-size: 0.7rem }` | Quellenangaben klein halten |
| `p { margin: 0 }` | Absatz-Margins entfernen für kontrolliertes Spacing |

## Datenquellen

| Datenpunkt | Slide | Quelle |
|---|---|---|
| KI-Anfrage = 10x Google-Suche | 2 | de Vries, A. (2023). The growing energy footprint of AI. Joule. |
| Google: +48% Emissionen trotz 6x Effizienz | 2 | Google Environmental Report, 2024 |
| 80% Umweltwirkung im Design entschieden | 9 | Ellen MacArthur Foundation, 2019 |
| Digital Product Passport ab 2027 | 9 | EU Ecodesign for Sustainable Products Regulation, 2024 |

## QR-Code

Ein QR-Code auf Slide 11: `sustainability-skills.academy/start`

Datei: `public/images/qr-skills-academy.png` (weisse Punkte auf transparentem Grund, generiert vom User).

## Kontaktdaten (Slide 11)

- **Institution:** Sustainability Skills Academy
- **E-Mail:** roman.mesicek@sustainability-skills.at
- **LinkedIn:** linkedin.com/in/romanmesicek
- **Website:** sustainability-skills.at
- **GitHub:** github.com/romanmesicek
- **Icons:** Inline SVGs (Mail, LinkedIn, Globe, GitHub)

## Entwicklung

```bash
cd slidev-presentations/decks/kreativwirtschaft-ki-20260423
npm install
npm run dev      # http://localhost:3030
```

## Dateistruktur

```text
kreativwirtschaft-ki-20260423/
├── slides.md                  # 11 Slides
├── package.json
├── CLAUDE.md                  # Diese Datei
├── components/
│   └── ExtinctionOverlay.vue  # Schwebende Tier-Animationen (angepasst: Indigo statt Orange)
├── styles/
│   └── index.css              # CSS-Overrides (Footer, Highlight-Farbe, Links, Spacing)
└── public/
    ├── favicon.svg
    └── images/
        ├── roman.webp
        └── qr-skills-academy.png
```
