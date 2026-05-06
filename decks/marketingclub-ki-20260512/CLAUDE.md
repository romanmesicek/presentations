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

## Slide-Struktur (16 Slides, ~28 Min. + Puffer)

| # | Titel | Komponente | Inhalt |
|---|-------|------------|--------|
| 1 | Cover | `CoverSlide` | Intermezzo · Marketing Club Österreich, 12. Mai 2026 |
| 2 | Verantwortung statt Reflex | `StatSlide` (red rail) | 10× / +48%, Tail mit Anschluss an Reinhards drei Hebel + Marketing-KI-Konnex |
| 3 | SCOPE Übersicht | `ScopeMatrix` | 5 Dimensionen mit Dreiklang-Stichwörtern |
| 4 | S Suffizienz Frame | `ScopeSlide` | Lead + 3 Reflexions-Tags (Notwendigkeit / Alternativen / Mehrwert) |
| 5 | S Beispiel + Diskussion | `ExampleSlide` | Slogan + Jasper, Copy.ai, Writesonic + NewsGuard 3.006 + Newsletter-Frage |
| 6 | C Carbon Frame | `ScopeSlide` | 3 Reflexions-Tags (Verbrauch / Energiemix / Verhältnis) |
| 7 | C Beispiel + Diskussion | `ExampleSlide` | Slogan + The Trade Desk + Kokai 13 Mio./Sek. + Modell-Calls-Frage |
| 8 | O Outcomes Frame | `ScopeSlide` | 3 Reflexions-Tags (Nutzen / Herkunft / Verteilung) |
| 9 | O Beispiel + Diskussion | `ExampleSlide` | Slogan + Qualtrics, Yabble, Toluna + GRIT +40% + Kundenberatungs-Frage |
| 10 | P Power Frame | `ScopeSlide` | 3 Reflexions-Tags (Plattform / Portabilität / Letztwort) |
| 11 | P Beispiel + Diskussion | `ExampleSlide` | Slogan + Meta Advantage+, Google PMax + 6 Wochen / 50 Conversions |
| 12 | E Endurance Frame | `ScopeSlide` | 3 Reflexions-Tags (Qualität / Abhängigkeit / Regulierung) |
| 13 | E Beispiel + Diskussion | `ExampleSlide` | Slogan + Lil Miquela, Aitana Lopez + EU AI Act 02.08.2026 |
| 14 | Mutprobe | `MutprobeSlide` | „Diese Folien sind teilweise mit KI entstanden." 6-Zeilen-Tabelle Mensch:KI, Tonspur SCOPE-Paper |
| 15 | Synthese & Fragen | `SynthesisSlide` | „Tue Gutes, auch wenn niemand zuschaut." + Hosts-Frage „critical thinking" + farbiges „SCOPE ist eine Antwort." (jeder Buchstabe in seiner Dimensionsfarbe). Dient gleichzeitig als Q&A-Backdrop. |
| 16 | Vielen Dank | `ClosingSlide` | Foto, Name, Academy, Icons, QR, Skills-Pitch |

### SCOPE-Übersicht (Slide 3): Dreiklang-Stichwörter

Auf der Übersichtsfolie stehen keine Fragen, nur Begriffserklärungen als Dreiklang:

| Dimension | Stichwörter |
|-----------|-------------|
| S Suffizienz | Notwendigkeit, Alternativen, Mehrwert. |
| C Carbon | Energie, Wasser, Emissionen. |
| O Outcomes | Verteilung, Gerechtigkeit, Risiken. |
| P Power | Datenhoheit, Abhängigkeiten, Kontrolle. |
| E Endurance | Regulierung, Kosten, Kompetenz. |

### Eskalations-Slogans (Beispiel-Folien 5/7/9/11/13)

Auf jeder Beispiel-Folie steht der Slogan als Headline (`slogan` prop), die konkrete Diskussionsfrage darunter. Die Slogans bilden eine Eskalations-Treppe von Selbstbeobachtung bis Substanz:

| Dimension | Slogan-Headline |
|-----------|-----------------|
| S | „Was produziert ihr, das niemand liest?" |
| C | „Was kostet euer Marketing wirklich?" |
| O | „Wem helft ihr, und wen ersetzt ihr?" |
| P | „Wer entscheidet, wenn ihr nicht entscheidet?" |
| E | „Was bleibt von euch, wenn die Tools weg sind?" |

### Synthese (Slide 15): Q&A-Backdrop

Slide 15 dient gleichzeitig als Synthese und Q&A-Folie. Aufbau in drei Schichten:

1. **Header** — Kicker „Synthese & Fragen", Titel „Tue Gutes, auch wenn niemand zuschaut." (mit Indigo-Klammer links).
2. **Hosts-Frage** — „Reinhard und Max haben heute gefragt: ‚What happened to (y)our critical thinking?'" (1.5rem, ohne linken Strich, Hosts-Frage in Indigo-Akzent).
3. **Antwort** — riesig (4rem, font-weight 800): die fünf SCOPE-Buchstaben **S C O P E**, jeder in seiner Dimensionsfarbe (Emerald, Teal, Sky, Orange, Violet als Accent-Töne), gefolgt von „ist eine Antwort." in Weiß.

Keine separate SCOPE-Liste mehr (die steht auf Slide 3 und kommt nicht doppelt). Keine Diskussions-Box. Die Folie bleibt während der gesamten Q&A stehen.

### Mutprobe (Slide 14): Selbst-Anwendung von SCOPE

Vor der Synthese eine Selbst-Exposition: Mensch-zu-KI-Verhältnis pro Phase der Folien-Erstellung. Antwort des Sprechers auf den vom Reviewer geforderten Killer-Einwand „du predigst nach außen, ohne dich selbst zu prüfen". 6 Zeilen, eckige horizontale Bars, Indigo-Akzent. **Interaktion:** Initial sind nur Phasen + leere Bar-Tracks zu sehen. Plenum schätzt Konzept, dann Klick → Auflösung. Sechs Klicks für sechs Phasen.

| Phase | Mensch : KI |
|-------|-------------|
| Konzept | 90 : 10 |
| Recherche | 20 : 80 |
| Strukturvorschlag | 50 : 50 |
| Visuals | 10 : 90 |
| Code | 0 : 100 |
| Review | 70 : 30 |

Tonspur (Speaker Notes): SCOPE selbst ist wissenschaftlich entwickelt. Paper: Mesicek, R. (2026). *SCOPE: A decision framework for evaluating the sustainability and ethics of AI adoption*. SocArXiv. https://doi.org/10.31235/osf.io/anjt9_v1. Hinter dem Konzept stecken Literatur-Review bestehender AI-Ethics- und Sustainability-Frameworks, Hochschularbeit mit Stakeholder:innen und Probe-Runs in laufenden Projekten.

## Komponenten

### `CoverSlide`, `ScopeMatrix`, `ScopeSlide`, `StatSlide`, `ClosingSlide`

Aus `kreativwirtschaft-ki-20260423` übernommen. Slide 1 ist bewusst ohne ExtinctionOverlay (Cold Open ohne Auflösung wäre rhetorisch unsauber).

### `ExampleSlide` (überarbeitet)

Beispiel-Folie für jede SCOPE-Dimension. Layout: Color-Rail links (SCOPE-Farbe) mit Letter-Badge (klein, 2.6rem statt 6rem) und Position, Body rechts mit **Eskalations-Slogan als Headline**, Marken-Label, optionalem Stat-Block (Wert + Label + Quelle, vertikale Akzent-Linie) und Diskussions-Box am unteren Rand (white-on-SCOPE-color).

Der frühere „Riesen-Buchstabe" wurde zum Badge verkleinert, weil der Buchstabe auf den Frame-Slides bereits dominiert. Auf Beispiel-Folien rückt jetzt die Marke (1.55rem) und vor allem der Slogan (2.15rem) optisch nach vorn.

Props: `letter`, `name`, `position`, `color`, `slogan?`, `brand`, `note?`, `stat?`, `statLabel?`, `statSource?`, `discussion`.

### `MutprobeSlide` (neu, Slide 14)

Selbst-Check des Sprechers: Mensch-zu-KI-Verhältnis pro Phase der Folien-Erstellung. Header mit Indigo-Klammer und Kernsatz, Legende (Mensch / KI), Tabelle mit 6 Zeilen, in jeder Zeile Phase + horizontaler Bar (eckig, Mensch in Weiß-55%, KI in Indigo-400) + Verhältnis-Zahl im Mono-Font.

Props: `kicker`, `headline`, `subheadline`, `rows[{phase, human, ai}]`.

### `SynthesisSlide` (Slide 15, Q&A-Backdrop)

Schluss-Folie vor der Kontaktfolie, dient gleichzeitig als Q&A-Backdrop. Header mit Indigo-Klammer und Titel, Hosts-Frage als Mittelteil (ohne linken Strich), riesige Antwort-Zeile mit „**S C O P E** ist eine Antwort." — jeder Buchstabe in seiner Dimensionsfarbe.

Props: `kicker`, `title`, `bridge`. SCOPE-Letter-Farben sind im Component hardcoded.

### `ExtinctionOverlay` (ungenutzt)

Angepasste Kopie von `diakonie-greenai-20260224`. Datei bleibt im Komponenten-Ordner für mögliche spätere Verwendung, ist auf Slide 1 jedoch entfernt (Cold-Open-Risiko).

### `QuestionSlide` (ungenutzt)

Aus Vorlage übernommen, in dieser Version nicht eingesetzt (Diskussion läuft über `ExampleSlide`, `MutprobeSlide` und `SynthesisSlide`).

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

### SCOPE-Beispiel-Folien (Stats nach Recherche-Review)

| # | Dimension | Markenbeispiele | Stat | Quelle |
|---|---|---|---|---|
| 5 | S Suffizienz | Jasper, Copy.ai, Writesonic | 3.006 AI-Content-Farm-Sites | NewsGuard AI Tracking Center, Stand 17.03.2026 |
| 7 | C Carbon | The Trade Desk, DV360, Klaviyo Predictive | 13 Mio./Sek. (Werbeeindrücke) | The Trade Desk, Kokai Launch, 06.06.2023 |
| 9 | O Outcomes | Qualtrics Edge Audiences, Yabble (YouGov), Toluna HarmonAIze | +40% Datenqualitäts-Bedenken YoY | GRIT Insights Practice Report, Greenbook 2025 (+ Verbreitung Qualtrics 2025) |
| 11 | P Power | Meta Advantage+, Google Performance Max | 6 + 50 (Wochen Ramp-up + Conversions) | Google Ads Help, 2026 · Meta Business Help Center |
| 13 | E Endurance | Lil Miquela, Aitana Lopez, EU AI Act Art. 50 | 02.08.2026 (Stichtag) | Verordnung (EU) 2024/1689, Art. 50 |

Recherche-Grundlage: `sources/marketingclub-ki-20260512/2026-05-06_A_marketing-ki-use-cases.md` (Strang A, Bestandsaufnahme), `2026-05-06_B_marketing-ki-scope-schnittstellen.md` (Strang B, SCOPE-Bewertung) und `review-claude-design.md` (Review mit Stats-Verifikation).

### Synthese (Slide 15)

Keine separate Diskussions-Box mehr. Die SCOPE-Fragen sind dieselben wie auf Slide 3, damit der Bogen bewusst geschlossen wird. Der Schluss ist die Hosts-Frage als rhetorische Klammer.

## QR-Code

Ein QR-Code auf Slide 16: `sustainability-skills.academy/start`

Datei: `public/images/qr-skills-academy.png` (weisse Punkte auf transparentem Grund, generiert vom User).

## Kontaktdaten (Slide 16)

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
├── slides.md                  # 16 Slides
├── package.json
├── CLAUDE.md                  # Diese Datei
├── components/
│   ├── ClosingSlide.vue
│   ├── CoverSlide.vue
│   ├── ExampleSlide.vue       # Beispiel-Folie mit Slogan-Headline und kleinem Letter-Badge
│   ├── ExtinctionOverlay.vue  # Vorhanden, aber auf Slide 1 nicht mehr genutzt
│   ├── MutprobeSlide.vue      # Neu: Mensch:KI-Tabelle für Selbst-Anwendung von SCOPE
│   ├── QuestionSlide.vue      # Aus Vorlage übernommen, ungenutzt
│   ├── ScopeMatrix.vue        # SCOPE-Übersicht
│   ├── ScopeSlide.vue         # SCOPE-Frame-Folien (Lead + 3 Reflexions-Tags)
│   ├── StatSlide.vue
│   └── SynthesisSlide.vue     # Schluss-Folie mit 5-Wort-Recap + Hosts-Frage + 2 Diskussionsfragen
├── styles/
│   └── index.css              # CSS-Overrides (Footer, Highlight-Farbe, Links, Spacing)
└── public/
    ├── favicon.svg
    └── images/
        ├── roman.webp
        └── qr-skills-academy.png
```
