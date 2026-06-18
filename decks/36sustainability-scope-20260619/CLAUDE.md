# 36° sustainability SCOPE – Slidev (Neversink Theme)

## Projekt

- **Titel:** Nachhaltige Entscheidungsgrundlagen für KI-Projekte
- **Untertitel:** Fünf Fragen, bevor KI in der Beratung zur Standard-Antwort wird.
- **Anlass:** 36 sustainability
- **Datum:** 19. Juni 2026
- **Speaker:** Roman Mesicek, Sustainability Skills Academy
- **Theme:** `slidev-theme-neversink` v0.4.1
- **Zielgruppe:** EPU und Berater\*innen (Ein-Personen-Unternehmen, Solo-Beratung)
- **Stand:** Abgeleitet von `marketingclub-ki-20260512`, inhaltlich vollständig auf die Beratungs-/EPU-Zielgruppe umgeschrieben und auf 11 Folien gekürzt.

## Sprache & Ton

Gilt für alle Slide-Texte (auch Speaker Notes):

- **„Kund\*innen", nicht „Klient\*innen".**
- **Akademisch-sachlich.** Keine blumige Sprache, keine Metaphern oder Personifikationen (Negativbeispiel: „KI trinkt Wasser"). Sachlich benennen.
- **Keine erfundenen Beispiel-Personas** (keine „Solo-Beraterin aus dem 14. Bezirk"). Beispiele an realen, zitierbaren Fakten festmachen.
- **Wenig pro Folie.** Eine Aussage, eine Sache.
- **Keine Em-/Gedankenstriche, keine Emojis** (Design-Konvention, s. u.).

## Design-Prinzipien

### Rail-Prinzip: Hairline für neutrale Slides, Fläche für SCOPE

Neutrale Slides (Cover, Einstieg/Stat, Offenlegung, Synthese, Closing) tragen nur eine **3px-Hairline links an der Slide-Kante** (`border-left`), keine farbige Flächen-Rail. Das Farbsignal sitzt in der Typografie (Stat-Zahlen, Kicker tragen die Akzentfarbe).

Die **SCOPE-Frame-Slides** (`ScopeSlide`) behalten ihre **volle Farb-Flächen-Rail**. Fläche heißt „du bist in einer Dimension".

### Durchgehend Dark

Alle Slides nutzen `color: dark`. Kein Farbwechsel zwischen Slides.

### Eckig, nicht rund

Keine `rounded-*` Klassen. Einzige Ausnahme: Profilbild auf der letzten Folie (rund per Inline-Style).

### Vertikale Linien als Designelement

Statt Kästchen mit Rahmen werden vertikale Linien (`border-l-2`, `border-l-3`) verwendet.

### Highlight-Farbe: Indigo statt Orange

Neversink-Default `--neversink-highlight-color` per CSS auf `#818cf8` (Indigo-400) überschrieben.

### Quellenangaben

Datenquellen direkt auf den Slides als kleine `src`-Spans (JetBrains Mono).

## Farbkonzept

**Hauptfarben:**

| Rolle | Farbe | Hex |
|-------|-------|-----|
| Hintergrund | Gray-800 | `dark` (Neversink) |
| Akzent / Indigo-Klammer | Indigo-400 | `#818cf8` |

**SCOPE-Farben** (Frame-Rail):

| Dimension | Farbe | Hex (bg) | Accent |
|-----------|-------|----------|--------|
| S Suffizienz | Emerald-600 | `#059669` | `#6ee7b7` |
| C Carbon | Teal-600 | `#0d9488` | `#5eead4` |
| O Outcomes | Sky-600 | `#0284c7` | `#7dd3fc` |
| P Power | Orange-600 | `#ea580c` | `#fdba74` |
| E Endurance | Violet-600 | `#7c3aed` | `#c4b5fd` |

## Slide-Struktur (11 Slides)

| # | Titel | Komponente | Inhalt |
|---|-------|------------|--------|
| 1 | Titel | `CoverSlide` | Titel + Untertitel, ohne ExtinctionOverlay (Cold Open) |
| 2 | Einstieg, Ressourcenverbrauch | `StatSlide` | Drei Zahlen (Strom / Wasser / CO₂) + One-Liner „KI fühlt sich gratis an. Ist sie nicht." |
| 3 | SCOPE Übersicht | `ScopeMatrix` | 5 Dimensionen mit Dreiklang-Stichwörtern |
| 4 | S Suffizienz | `ScopeSlide` | Lead + 3 Reflexions-Tags. **Beispiel in Speaker Notes.** |
| 5 | C Carbon | `ScopeSlide` | Lead + 3 Reflexions-Tags. **Beispiel in Speaker Notes.** |
| 6 | O Outcomes | `ScopeSlide` | Lead + 3 Reflexions-Tags. **Beispiel in Speaker Notes.** |
| 7 | P Power | `ScopeSlide` | Lead + 3 Reflexions-Tags. **Beispiel in Speaker Notes.** |
| 8 | E Endurance | `ScopeSlide` | Lead + 3 Reflexions-Tags. **Beispiel in Speaker Notes.** |
| 9 | Offenlegung | `MutprobeSlide` | Mensch:KI-Verhältnis je Phase der Folien-Erstellung, `kicker="Offenlegung"`, interaktiv (klickweise Auflösung) |
| 10 | Synthese | `SynthesisSlide` | „SCOPE hilft dir und deinen Kund\*innen." + Brücke |
| 11 | Vielen Dank | `ClosingSlide` | Foto, Kontakt-Icons, QR, CTA „Skills, nicht News." |

### SCOPE-Beispiele liegen in den Speaker Notes

Es gibt **keine eigenständigen Beispiel-Folien mehr.** Jede SCOPE-Frame-Folie (4–8) trägt ihr Beispiel als Speaker Note (HTML-Kommentar am Folienende): ein sachlicher Satz, ggf. eine Zahl mit Quelle, eine Diskussionsfrage. Im Presenter-Modus (`p`) sichtbar.

### SCOPE-Übersicht (Slide 3): Dreiklang-Stichwörter

| Dimension | Stichwörter |
|-----------|-------------|
| S Suffizienz | Notwendigkeit, Alternativen, Mehrwert. |
| C Carbon | Energie, Wasser, Emissionen. |
| O Outcomes | Verteilung, Gerechtigkeit, Risiken. |
| P Power | Datenhoheit, Abhängigkeit, Kontrolle. |
| E Endurance | Regulierung, Kosten, Kompetenz. |

### Offenlegung (Slide 9)

Selbst-Anwendung von SCOPE: Mensch-zu-KI-Verhältnis pro Phase der Folien-Erstellung. Initial nur Phasen + leere Bar-Tracks; Plenum schätzt, dann klickweise Auflösung (sechs Klicks). `kicker="Offenlegung"`, `subheadline="Erst schätzen, dann die Zahlen."`

Tonspur (Speaker Notes): SCOPE selbst ist wissenschaftlich entwickelt. Paper: Mesicek, R. (2026). *SCOPE: A decision framework for evaluating the sustainability and ethics of AI adoption*. SocArXiv. https://doi.org/10.31235/osf.io/anjt9_v1

## Komponenten

- **`CoverSlide`, `ScopeMatrix`, `ScopeSlide`, `ClosingSlide`** — aus der Vorlage übernommen.
- **`StatSlide`** — Rail mit zwei oder drei Stats, großer Takeaway rechts. Auf Slide 2 für den Ressourcenverbrauchs-Einstieg.
- **`SynthesisSlide`** — Schluss-Aussage. Der früher hartcodierte „Eine Antwort: Fragen stellen!"-Satz wurde entfernt; die Folie trägt nur noch `title` + `bridge`.
- **`MutprobeSlide`** — Offenlegungs-Tabelle (Mensch:KI). Dateiname noch `MutprobeSlide.vue`, sichtbares Label per `kicker="Offenlegung"`.
- **`ExampleSlide`** — **derzeit ungenutzt** (Beispiele liegen in den Speaker Notes). Persona-/Slogan-Props sind optional und bleiben leer.
- **`QuestionSlide`, `ExtinctionOverlay`** — vorhanden, ungenutzt.

## Datenquellen

| Ort | Datenpunkt | Quelle |
|-----|------------|--------|
| Slide 2 | 0,42 Wh pro Anfrage, ~40 % mehr als Google-Suche | arXiv 2505.09598 (2025) |
| Slide 2 | ~500 ml Wasser pro KI-Dialog (20–50 Fragen) | Li et al., Making AI Less Thirsty (2023) |
| Slide 2 | +48 % CO₂ bei Google seit 2019 | Google Environmental Report (2024) |
| Notes O | 18 $/Monat ChatGPT-Team-Plan | OpenAI Pricing (2026) |
| Notes P | § 203 StGB, Verletzung von Privatgeheimnissen | it-recht-kanzlei.de (2025) |
| Notes E | 2.8.2026 Hochrisiko-Pflichten, Bußgeld bis 15 Mio. € | Verordnung (EU) 2024/1689, Art. 113 |

## QR-Code & Kontakt (Slide 11)

- **Institution:** Sustainability Skills Academy
- **E-Mail:** roman.mesicek@sustainability-skills.at
- **LinkedIn:** linkedin.com/in/romanmesicek
- **Website:** sustainability-skills.at
- **GitHub:** github.com/romanmesicek
- **QR:** `public/images/qr-skills-academy.png` → sustainability-skills.academy/start
- **CTA:** „Skills, nicht News. Jede Woche neue Nachhaltigkeitskompetenzen aufs Handy."

## Entwicklung

```bash
cd slidev-presentations/decks/36sustainability-scope-20260619
npm install
npm run dev      # http://localhost:3030
```

## Dateistruktur

```text
36sustainability-scope-20260619/
├── slides.md                  # 11 Slides, SCOPE-Beispiele in Speaker Notes
├── package.json
├── CLAUDE.md                  # Diese Datei
├── components/
│   ├── ClosingSlide.vue
│   ├── CoverSlide.vue
│   ├── ExampleSlide.vue       # ungenutzt (Beispiele in Notes)
│   ├── ExtinctionOverlay.vue  # ungenutzt
│   ├── MutprobeSlide.vue      # Offenlegungs-Tabelle (Label „Offenlegung")
│   ├── QuestionSlide.vue      # ungenutzt
│   ├── ScopeMatrix.vue
│   ├── ScopeSlide.vue
│   ├── StatSlide.vue
│   └── SynthesisSlide.vue
├── styles/
│   └── index.css
└── public/
    ├── favicon.svg
    └── images/
        ├── roman.webp
        └── qr-skills-academy.png
```
