# Green AI Workshop – Slidev (Neversink Theme)

## Projekt

- **Titel:** Green & Responsible AI in der Sozialwirtschaft
- **Anlass:** Workshop Diakonie Österreich, 24. Februar 2026
- **Speaker:** Roman Mesicek
- **Theme:** `slidev-theme-neversink` v0.4.1

## Anpassungen gegenüber dem Original-Theme

### Slide Counter & Branding

Das Neversink-Theme zeigt unten rechts einen Slide Counter mit Orbit-Icon und optionalem Slug. Aktueller Stand:

**Footer komplett ausgeblendet:** Der gesamte Neversink-Footer wird per CSS ausgeblendet (`footer { display: none !important }` in `styles/index.css`). Soll später durch eine saubere Eigenimplementierung ersetzt werden.

**Wichtig:** Slidev stackt `slide-bottom.vue` aus Theme und Projekt — es ersetzt NICHT. Daher kein eigenes `slide-bottom.vue` im Projekt anlegen.

### Favicon

Eigenes Favicon (Roboter-Kopf-SVG) in `public/favicon.svg`, gesetzt im Frontmatter:

```yaml
favicon: /favicon.svg
```

### Oranger Strich unter dem Titel (Cover-Slide)

Der orange Strich unter der H1 auf der Titelfolie kommt vom Theme (`--neversink-highlight-color: #FFA500`). Ist in allen Neversink-Farbschemata hardcoded. Wurde **nicht** überschrieben — bleibt vorerst so.

### SCOPE-Farbschema

Die 5 SCOPE-Dimensionen haben eigene, klar unterscheidbare Farben:

| Dimension | Badge-Farbe | Slide-Theme | Anmerkung |
|-----------|-------------|-------------|-----------|
| **S** Suffizienz | `emerald-700` | `emerald` | Grün |
| **C** Carbon | `teal-700` | `teal` | Blaugrün (ähnlich wie S, aber akzeptabel) |
| **O** Outcomes | `sky-700` | `sky` | Blau |
| **P** Power | `orange-700` | `orange` | Orange |
| **E** Endurance | `violet-700` | `violet` | Violett |

Diese Farben sind konsistent über alle Slides hinweg:
- Folie 4 (SCOPE-Übersicht): Badge-Hintergründe
- Folien 5–9 (Einzel-Dimensionen): Theme-Farbe, Textfarbe, Akzentboxen
- Folie 12 (Reflexion): Rahmenfarben der 3 Kästchen
- Folie 13 (Takeaway): Badge-Hintergründe

### Folie 2 – Befragungszitate

Einfache Kästchen mit `border-2 border-stone-500 rounded-lg p-5`. Kein Schatten, kein Hintergrund, kein border-left oder border-top Akzent.

### Folie 12 – Reflexion

Gleicher Kästchen-Stil wie Folie 2 (einfache Umrandung), aber mit den jeweiligen SCOPE-Farben als Rahmen.

### Gendern

Immer mit Genderstern: `Klient\*innen`, `Teilnehmer\*innen` etc.
Im Markdown muss der Stern escaped werden: `\*innen`

## Hinweise für zukünftige Änderungen

### Einfachheit geht vor

Die Slidev-Folien sollen **so einfach wie möglich** bleiben, damit sie auch ohne Claude leicht zu bearbeiten sind. Konkret:

- **Kein `<span>`, `<div>`, `<p>` mit Tailwind-Klassen** wenn es sich vermeiden lässt. Normales Markdown bevorzugen.
- **Keine verschachtelten CSS-Klassen** oder komplexe Grid-Layouts, wenn ein einfacher Aufzählungspunkt reicht.
- **Neversink-Layouts nutzen** statt eigene HTML-Strukturen zu bauen — das Theme hat genug Layouts (top-title, side-title, two-cols-title, section, cover, etc.).
- **Farben über `color:` im Frontmatter** statt über inline Tailwind-Klassen, wo immer möglich.

### Was aktuell noch HTML braucht

Einige Stellen verwenden trotzdem HTML/Tailwind, weil Neversink keine native Markdown-Alternative bietet:

- **SCOPE-Badges** (farbige Buchstaben-Kästchen): `<span class="bg-emerald-700 ...">S</span>` — geht nicht anders
- **Grid-Layouts** (2×2, 3-spaltig): `<div class="grid grid-cols-2 ...">` — Neversink hat kein 2×2-Grid-Layout
- **Kernaussage-Boxen** am Ende der Dimension-Slides: `<div class="bg-emerald-50 ...">` — farbige Akzentbox

### ScopeMatrix-Komponente (Folien 10 & 11)

Interaktive Vue-Komponente für die Fallstudien-Bewertung: `components/ScopeMatrix.vue`

**Funktion:** Klickbare Ampel-Buttons (Rot/Gelb/Grün) pro SCOPE-Dimension. Klick markiert die Auswahl (Kreuz + volle Farbe), die anderen werden gedimmt. Erneuter Klick setzt zurück. Jede Folie hat eigenen, unabhängigen State.

**Props:**

| Prop | Typ | Beschreibung |
|------|-----|--------------|
| `context` | String | Beschreibungstext der Fallstudie |
| `context-icon` | String | Emoji für die Kontextbox (z.B. `📄`, `⚠️`) |
| `context-label` | String | Überschrift der Kontextbox (z.B. "Aus eurer Praxis") |

**Verwendung in slides.md:**

```html
<ScopeMatrix
  context-icon="📄"
  context-label="Aus eurer Praxis"
  context="Beschreibung der Fallstudie..."
/>
```

**Ampel-Farben:**

| Farbe | Hex | Bedeutung |
|-------|-----|-----------|
| Rot | `#DC2626` | Kritisch |
| Gelb | `#E5A000` | Anpassen |
| Grün | `#16A34A` | OK |

**Design-Entscheidungen:**
- Kein separater Buchstaben-Badge (S/C/O/P/E) — stattdessen einzeilig: "**Suffizienz** — Frage"
- Kompaktes Layout (kleine Buttons 1.6rem, wenig Padding), damit alles auf die Folie passt
- Fragen sind länger und kontextbezogener als in der SCOPE-Übersicht (Folie 4)
- Kreuz (✕) statt Häkchen als Auswahlindikator

### ExtinctionOverlay-Komponente (Folie 1, wiederverwendbar)

Animierter Layer mit schwebenden ausgestorbenen/bedrohten Tierarten: `components/ExtinctionOverlay.vue`

**Funktion:** 11 Tier-SVGs schweben mit pseudo-zufälligen Pfaden über die Folie. Jedes Tier erscheint gestaffelt (0.8s Abstand), wandert dann in einer Endlosschleife. Portiert von der React-Version (`react-presentations/greenai-20260224/src/slides/TitleSlide.jsx`).

**Props:**

| Prop | Typ | Default | Beschreibung |
|------|-----|---------|--------------|
| `opacity` | Number | 0.7 | Gesamt-Opacity des Layers (0.45 auf Titelfolie) |
| `speed` | Number | 1 | Geschwindigkeitsmultiplikator (2 = doppelt so schnell) |
| `count` | Number | 11 | Wie viele Tiere gezeigt werden (1–11) |

**Verwendung in slides.md:**

```html
<!-- Auf beliebiger Folie als Overlay einfügen -->
<ExtinctionOverlay :opacity="0.45" />

<!-- Weniger Tiere, schneller -->
<ExtinctionOverlay :count="5" :speed="1.5" :opacity="0.4" />
```

**Enthaltene Arten (9, alle ausgestorben):**

| # | Deutsch | Englisch | Latein | Ausgestorben |
|---|---------|----------|--------|--------------|
| 1 | Beutelwolf | Thylacine | *Thylacinus cynocephalus* | 1936 |
| 2 | Chinesischer Flussdelfin | Baiji | *Lipotes vexillifer* | 2006 |
| 3 | Goldkröte | Golden Toad | *Incilius periglenes* | 1989 |
| 4 | Pyrenäensteinbock | Pyrenean Ibex | *Capra pyrenaica pyrenaica* | 2000 |
| 5 | Dodo | Dodo | *Raphus cucullatus* | 1681 |
| 6 | Riesenalk | Great Auk | *Pinguinus impennis* | 1844 |
| 7 | Wandertaube | Passenger Pigeon | *Ectopistes migratorius* | 1914 |
| 8 | Karolinasittich | Carolina Parakeet | *Conuropsis carolinensis* | 1918 |
| 9 | Java-Tiger | Javan Tiger | *Panthera tigris sondaica* | 1980er |

**Animation:** Reines CSS — `@keyframes` mit 11-Punkt-Pfaden (wander-x, wander-y), generiert via seeded sine/cosine. Kein JavaScript-Loop zur Laufzeit. Entry-Animation mit gestaffeltem `animation-delay`.

**Erklärungsbox:** Rechts unten erscheint nach 4s "Warum diese Geister?" mit Erklärungstext. Titel in Orange (`#FFA500`, passend zum Neversink-Highlight-Strich), Text in Schwarz. Auf Mobile ausgeblendet.

**Responsive:** Mobile (<768px) automatisch auf 35% Opacity, Labels und Erklärungsbox ausgeblendet. `prefers-reduced-motion` respektiert.

**Wiederverwendung:** Die Komponente ist als eigenständiger Layer gebaut (position: absolute, pointer-events: none, z-index: 20). Kann auf jede Folie gelegt werden, unabhängig vom Slidev-Layout oder Theme. Die SVG-Gradient-IDs sind mit `eo-` prefixed, um Konflikte zu vermeiden.

## Entwicklung & Deployment

### Lokaler Start

```bash
cd slidev-presentations/greenai-20260224
npm install
npm run dev      # http://localhost:3030
```

### Build & Export

```bash
npm run build    # → dist/ (statische Dateien, base: './')
npm run export   # → PDF via Slidev CLI
```

### Deployment

Die gebauten Dateien (`dist/`) können auf jeden statischen Hoster kopiert werden (Netlify, Vercel, S3, etc.).

Lokaler Test nach dem Build:

```bash
npx serve dist
```

**Wichtig:** Die Build-Ausgabe nutzt `base: './'` (relative Pfade) und kann daher direkt in ein Unterverzeichnis eines bestehenden Webservers gelegt werden.

### Dateistruktur

```text
greenai-20260224/
├── slides.md                  # Alle Folien
├── components/
│   ├── ExtinctionOverlay.vue  # Schwebende Tier-Animationen (Folie 1, wiederverwendbar)
│   └── ScopeMatrix.vue        # Interaktive Fallstudien-Bewertung (Folien 10 & 11)
├── styles/
│   └── index.css              # Custom CSS (Theme-Footer ausblenden)
├── public/
│   ├── favicon.svg            # Roboter-Kopf
│   └── images/
│       ├── roman.webp
│       ├── logo-white.png
│       └── logo-black.svg
└── package.json
```
