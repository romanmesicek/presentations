---
theme: neversink
layout: default
color: dark
title: Nachhaltige Entscheidungsgrundlagen für KI-Projekte
info: Marketing Club Österreich | 12. Mai 2026
author: Roman Mesicek
transition: fade
favicon: /favicon.svg
---

<!-- Slide 1: Titel -->

<CoverSlide
  eyebrow=""
  title="Nachhaltige Entscheidungsgrundlagen für **KI-Projekte**"
  subtitle="Fünf Fragen, bevor KI im Marketing zur Default-Antwort wird."
  speaker="Roman Mesicek"
  affiliation="Sustainability Skills Academy"
  occasion="Marketing Club Österreich"
  date="12. Mai 2026"
/>

---
layout: default
color: dark
---

<!-- Slide 2: Verantwortung statt Reflex -->

<StatSlide
  railColor="red"
  accent="indigo"
  kicker="Verantwortung statt Reflex"
  :stats="[
    { value: '10×', label: 'mehr Energie verbraucht eine KI-Anfrage als eine Google-Suche.', source: 'de Vries, 2023' },
    { value: '+48%', label: 'Googles Emissionen seit 2019, trotz 6× Effizienzsteigerung.', source: 'Google Environmental Report, 2024' },
  ]"
  lead="Verantwortung lässt sich **nicht delegieren.** Auch nicht an die **Maschine.**"
  tail="Drei Hebel der Nachhaltigkeit: Verhalten, Gestaltung, Produktion. Im Marketing sitzt KI in jedem davon, meist als Reflex, selten als Entscheidung."
/>

---
layout: default
color: dark
---

<!-- Slide 3: SCOPE Übersicht -->

<ScopeMatrix />

---
layout: default
color: dark
---

<!-- Slide 4: S Suffizienz Frame -->

<ScopeSlide
  letter="S"
  name="Suffizienz"
  kicker="Brauchen wir KI?"
  position="01"
  color="emerald"
  lead="Vor der Tool-Wahl steht die **Default-Frage:** Brauchen wir KI hier, oder ist sie nur die schnellste Antwort?"
  :questions="[
    { tag: 'Notwendigkeit', q: 'Lösen wir ein echtes Problem, oder schaffen wir einen Bedarf, weil KI da ist?' },
    { tag: 'Alternativen', q: 'Welche Routine schalten wir ab, wenn KI dazukommt, oder kommt sie obendrauf?' },
    { tag: 'Mehrwert', q: 'Messen wir Konsum oder nur Produktion?' },
  ]"
/>

---
layout: default
color: dark
---

<!-- Slide 5: S Beispiel + Diskussion -->

<ExampleSlide
  letter="S"
  name="Suffizienz"
  position="01"
  color="emerald"
  slogan="Wo endet euer Content?"
  brand="Jasper, Copy.ai, Writesonic"
  note="Generative-Content-Plattformen verkaufen *Unlimited Generations*-Tarife. Der Tarif belohnt **Output-Menge,** nicht Output-Qualität."
  stat="3.006"
  statLabel="AI-Content-Farm-Sites in 16 Sprachen, mit 300 bis 500 neuen pro Monat. NewsGuard nennt das selbst „AI Slop“."
  statSource="NewsGuard AI Tracking Center, Stand 17.03.2026"
  discussion="Wer von euch hat einen KI-generierten Newsletter veröffentlicht, den sich danach niemand intern durchgelesen hat, auch nicht der oder die Verantwortliche?"
/>

---
layout: default
color: dark
---

<!-- Slide 6: C Carbon Frame -->

<ScopeSlide
  letter="C"
  name="Carbon"
  kicker="Was verbraucht KI?"
  position="02"
  color="teal"
  lead="Der Marketing-Footprint einer KI ist **real,** aber meistens **unsichtbar**, verteilt auf tausende KI-Berechnungen pro Kampagne."
  :questions="[
    { tag: 'Verbrauch', q: 'Wie viele KI-Berechnungen hängen an einer Kampagne, und welche Modelle?' },
    { tag: 'Energiemix', q: 'Wo läuft das Modell? AWS Frankfurt? Azure US-East? Mit welchem Strommix?' },
    { tag: 'Verhältnis', q: 'Steht der Footprint im Verhältnis zum messbaren Marketing-Effekt?' },
  ]"
/>

---
layout: default
color: dark
---

<!-- Slide 7: C Beispiel + Diskussion -->

<ExampleSlide
  letter="C"
  name="Carbon"
  position="02"
  color="teal"
  slogan="Was kostet euer Marketing wirklich?"
  brand="The Trade Desk · DV360 · Amazon DSP"
  note="Real-Time-Bidding ist eine **KI-Kaskade.** Jeder Bid durchläuft mehrere KI-Berechnungen für Targeting, Preis, Creative-Wahl und Brand Safety. Drei Demand-Side-Platforms, die zusammen den Programmatic-Markt dominieren."
  stat="13 Mio./Sek."
  statLabel="Werbeeindrücke wertet allein The Trade Desk pro Sekunde aus, jede mit tausenden Signalen für KI-Bid-Entscheidungen. Eine Plattform. Meta, Google, Amazon laufen parallel."
  statSource="The Trade Desk, Kokai Launch, 06.06.2023"
  discussion="Wie viele KI-Berechnungen hängen an einer einzigen eurer Anzeigen, und wer bei euch hat das je gemessen?"
/>

---
layout: default
color: dark
---

<!-- Slide 8: O Outcomes Frame -->

<ScopeSlide
  letter="O"
  name="Outcomes"
  kicker="Wer profitiert?"
  position="03"
  color="sky"
  lead="Effizienz für **wen?** Marketing-KI verschiebt nicht nur Arbeit. Sie verschiebt **Wert.**"
  :questions="[
    { tag: 'Nutzen', q: 'Schöpfen wir Wert für die Kund*innen, oder ersetzen wir Arbeit, die wir früher bezahlt haben?' },
    { tag: 'Herkunft', q: 'Wessen Texte, Bilder, Stimmen stecken in den Trainingsdaten unserer Tools?' },
    { tag: 'Verteilung', q: 'Wer profitiert vom Effizienzgewinn, wir, der Anbieter oder die Kund*innen?' },
  ]"
/>

---
layout: default
color: dark
---

<!-- Slide 9: O Beispiel + Diskussion -->

<ExampleSlide
  letter="O"
  name="Outcomes"
  position="03"
  color="sky"
  slogan="Wem helft ihr, und wen ersetzt ihr?"
  brand="Qualtrics Edge Audiences · Yabble (YouGov) · Toluna HarmonAIze"
  note="Synthetische Respondenten ersetzen menschliche Befragte. Anbieter berichten bis zu **90% Übereinstimmung** mit echten Survey-Daten, meist aus Studien mit eigenem Vendor-Bezug. Unabhängige Replikation: in Aufbauphase."
  stat="73 %"
  statLabel="der Marktforscher*innen haben 2025 synthetische Respondenten eingesetzt. Ein Drittel binnen der letzten 30 Tage vor Befragung."
  statSource="Qualtrics State of Research, 2025"
  discussion="Wenn ihr morgen Persona-Insights aus synthetischen Respondenten kauft, würdet ihr es eurer eigenen Kundenberatung sagen, oder nicht?"
/>

---
layout: default
color: dark
---

<!-- Slide 10: P Power Frame -->

<ScopeSlide
  letter="P"
  name="Power"
  kicker="Wer kontrolliert?"
  position="04"
  color="orange"
  lead="Wer die Plattform kontrolliert, kontrolliert auch eure **Marken-Reichweite.**"
  :questions="[
    { tag: 'Plattform', q: 'Wer entscheidet, wer eure Anzeigen sieht, ihr oder der Algorithmus?' },
    { tag: 'Portabilität', q: 'Was bleibt euch, wenn ihr morgen den Anbieter wechseln wollt?' },
    { tag: 'Letztwort', q: 'Wer entscheidet, wenn KI-Empfehlung gegen Markenführung läuft?' },
  ]"
/>

---
layout: default
color: dark
---

<!-- Slide 11: P Beispiel + Diskussion -->

<ExampleSlide
  letter="P"
  name="Power"
  position="04"
  color="orange"
  slogan="Wer entscheidet, wenn ihr nicht entscheidet?"
  brand="Meta Advantage+ · Google Performance Max"
  note="Black-Box-Targeting: Du gibst Budget und Conversion-Ziel frei. Die Plattform entscheidet **autonom** über Audience, Placement, Bid und Creative-Mix. Berichts-Granularität sinkt mit jeder Produkt-Generation."
  stat="50"
  statLabel="Conversions pro Ad Set in 7 Tagen braucht Meta Advantage+, bevor das System belastbar lernt. Google Performance Max empfiehlt sechs Wochen Ramp-up. Plattform- oder Pixel-Wechsel: Zähler auf Null."
  statSource="Meta Business Help Center · Google Ads Help, 2026"
  discussion="Wie viel Budget gebt ihr in Systemen aus, deren Targeting-Logik ihr nicht erklären könnt, und wie lange noch?"
/>

---
layout: default
color: dark
---

<!-- Slide 12: E Endurance Frame -->

<ScopeSlide
  letter="E"
  name="Endurance"
  kicker="Hält es?"
  position="05"
  color="violet"
  lead="Eine Kampagne hält 6 Wochen. Eine Marke 30 Jahre. **Eine Regulierung kann beides überholen.**"
  :questions="[
    { tag: 'Qualität', q: 'Tragen unsere KI-Outputs unsere Marken-DNA, oder verwässern sie sie?' },
    { tag: 'Abhängigkeit', q: 'Was, wenn der Tool-Anbieter Preise verdoppelt oder den Zugang kappt?' },
    { tag: 'Regulierung', q: 'Hält unsere Kampagne nach EU AI Act und Green Claims Directive?' },
  ]"
/>

---
layout: default
color: dark
---

<!-- Slide 13: E Beispiel + Diskussion -->

<ExampleSlide
  letter="E"
  name="Endurance"
  position="05"
  color="violet"
  slogan="Welche Kampagne überlebt den 2. August 2026?"
  brand="Lil Miquela · Aitana Lopez · synthetische Brand-Influencer*innen"
  note="Virtuelle Influencer*innen mit Millionen Follower*innen. Bislang ohne Pflicht zur Offenlegung. **Ab 02.08.2026 ändert sich das:** EU AI Act Art. 50 verlangt sichtbare Kennzeichnung von KI-generierten Personen."
  stat="02.08.2026"
  statLabel="EU AI Act Transparenzpflichten greifen. KI-generierte Bilder, Videos und Audio von Personen müssen erkennbar als solche markiert werden."
  statSource="Verordnung (EU) 2024/1689, Art. 50"
  discussion="Welche eurer Kampagnen läuft am 2. August 2026 Gefahr, gegen Art. 50 zu verstoßen?"
/>

---
layout: default
color: dark
---

<!-- Slide 14: Mutprobe -->

<MutprobeSlide
  :rows="[
    { phase: 'Konzept', human: 90, ai: 10 },
    { phase: 'Recherche', human: 20, ai: 80 },
    { phase: 'Strukturvorschlag', human: 50, ai: 50 },
    { phase: 'Visuals', human: 10, ai: 90 },
    { phase: 'Code', human: 0, ai: 100 },
    { phase: 'Review', human: 70, ai: 30 },
  ]"
/>

<!--
Tonspur: SCOPE selbst ist wissenschaftlich entwickelt. Paper: Mesicek, R. (2026). SCOPE: A decision framework for evaluating the sustainability and ethics of AI adoption. SocArXiv. https://doi.org/10.31235/osf.io/anjt9_v1

Hinter dem Konzept stecken Literatur-Review bestehender AI-Ethics- und Sustainability-Frameworks, Hochschularbeit mit Stakeholder*innen und Probe-Runs in laufenden Projekten. Die Folien sind teils mit KI entstanden, das Konzept dahinter ist es nicht.
-->

---
layout: default
color: dark
---

<!-- Slide 15: Synthese + Schluss-Diskussion -->

<SynthesisSlide
  kicker="Synthese & Fragen"
  title="Tue Gutes, auch wenn niemand zuschaut."
  bridge="Reinhard und Max haben heute gefragt: **„What happened to (y)our critical thinking?“**"
/>

---
layout: default
color: dark
---

<!-- Slide 16: Vielen Dank -->

<ClosingSlide
  photo="/images/roman.webp"
  speaker="Roman Mesicek"
  affiliation="Sustainability Skills Academy"
  email="roman.mesicek@sustainability-skills.at"
  linkedin="https://linkedin.com/in/romanmesicek"
  website="https://sustainability-skills.at"
  github="https://github.com/romanmesicek"
  qr="/images/qr-skills-academy.png"
  ctaHeadline="Vielen Dank."
  ctaTitle="Skills, nicht News."
  ctaBody="Jede Woche neue Nachhaltigkeits­kompetenzen aufs Handy."
  ctaUrl="https://sustainability-skills.academy/start"
/>
