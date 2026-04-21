---
theme: neversink
layout: default
color: dark
title: Nachhaltige Entscheidungsgrundlagen für KI-Projekte
info: wewant2know — Kreativwirtschaft Austria | 23. April 2026
author: Roman Mesicek
transition: fade
favicon: /favicon.svg
---

<!-- Slide 1: Titel -->

<ExtinctionOverlay :opacity="0.25" />

<CoverSlide
  eyebrow="Impuls · wewant2know"
  title="Nachhaltige Entscheidungsgrundlagen für **KI-Projekte**"
  subtitle="Fünf Fragen, bevor ihr ein KI-Tool einsetzt."
  speaker="Roman Mesicek"
  affiliation="Sustainability Skills Academy"
  occasion="Kreativwirtschaft Austria"
  date="23. April 2026"
/>

---
layout: default
color: dark
---

<!-- Slide 2: Hebel — Kreislaufwirtschaft -->

<StatSlide
  railColor="indigo"
  accent="indigo"
  kicker="Der Hebel"
  :stats="[
    { value: '80%', label: 'der Umweltwirkung eines Produkts werden in der Designphase entschieden.', source: 'Ellen MacArthur Foundation, 2019' },
    { value: '2027', label: 'Digital Product Passport wird Pflicht. Der Design-Brief verändert sich fundamental.', source: 'EU Ecodesign for Sustainable Products Regulation, 2024' },
  ]"
  lead="Die Kreativwirtschaft sitzt am **Hebel.**"
  tail="KI kann bei Materialoptimierung und Lebenszyklusanalyse helfen. Nicht für mehr Content. Für besseres Design."
/>

---
layout: default
color: dark
---

<!-- Slide 3: Provokation — das Paradox -->

<StatSlide
  railColor="red"
  accent="red"
  kicker="Das Paradox"
  :stats="[
    { value: '10×', label: 'mehr Energie verbraucht eine KI-Anfrage als eine Google-Suche.', source: 'de Vries, 2023' },
    { value: '+48%', label: 'Googles Emissionen seit 2019, trotz 6× Effizienzsteigerung.', source: 'Google Environmental Report, 2024' },
  ]"
  lead="Wird besser gestaltet. Oder **einfach mehr weggeworfen?**"
  tail="KI generiert in Sekunden, was früher Tage brauchte."
/>

---
layout: default
color: dark
---

<!-- Slide 4: SCOPE Übersicht -->

<ScopeMatrix />

---
layout: default
color: dark
---

<!-- Slide 5: S Suffizienz -->

<ScopeSlide
  letter="S"
  name="Suffizienz"
  kicker="Brauchen wir KI?"
  position="01"
  color="emerald"
  lead="Die erste Frage ist nicht **welches Tool.** Sondern: **brauchen wir das überhaupt?**"
  :questions="[
    { tag: 'Notwendigkeit', q: 'Brauche ich diese KI-Anwendung, oder geht es auch ohne?' },
    { tag: 'Alternativen', q: 'Gibt es eine einfachere, nicht-technische Alternative?' },
    { tag: 'Mehrwert', q: 'Was ist der konkrete Mehrwert gegenüber dem Status quo?' },
  ]"
/>

---
layout: default
color: dark
---

<!-- Slide 6: C Carbon -->

<ScopeSlide
  letter="C"
  name="Carbon"
  kicker="Was verbraucht sie?"
  position="02"
  color="teal"
  lead="Der Fußabdruck von KI ist **real.** Aber er variiert enorm je nach **Anwendung und Anbieter.**"
  :questions="[
    { tag: 'Verbrauch', q: 'Wie viel Energie verbraucht mein KI-Workflow?' },
    { tag: 'Energiemix', q: 'Wo läuft das Modell, und mit welchem Energiemix?' },
    { tag: 'Verhältnis', q: 'Steht der Fußabdruck im Verhältnis zum Nutzen?' },
  ]"
/>

---
layout: default
color: dark
---

<!-- Slide 7: O Outcomes -->

<ScopeSlide
  letter="O"
  name="Outcomes"
  kicker="Wer profitiert?"
  position="03"
  color="sky"
  lead="Es geht nicht um Effizienz allein. Sondern darum, **wer am Ende besser dran ist.**"
  :questions="[
    { tag: 'Nutzen', q: 'Nutze ich KI für Wertschöpfung oder für Wegwerfcontent?' },
    { tag: 'Herkunft', q: 'Wessen kreative Arbeit steckt in den Trainingsdaten?' },
    { tag: 'Verteilung', q: 'Wer profitiert, und wessen Arbeit wird ersetzt?' },
  ]"
/>

---
layout: default
color: dark
---

<!-- Slide 8: P Power -->

<ScopeSlide
  letter="P"
  name="Power"
  kicker="Wer kontrolliert?"
  position="04"
  color="orange"
  lead="Macht über Tools ist Macht über **kreative Prozesse.** Unabhängigkeit schützen."
  :questions="[
    { tag: 'Plattform', q: 'Wer kontrolliert die Plattform, auf der ich arbeite?' },
    { tag: 'Portabilität', q: 'Kann ich den Anbieter wechseln, wenn ich will?' },
    { tag: 'Letztwort', q: 'Wer entscheidet bei Konflikten zwischen Mensch und Maschine?' },
  ]"
/>

---
layout: default
color: dark
---

<!-- Slide 9: E Endurance -->

<ScopeSlide
  letter="E"
  name="Endurance"
  kicker="Hält es?"
  position="05"
  color="violet"
  lead="Nachhaltig heißt auch: **in fünf Jahren noch tragbar.** Finanziell, kreativ, regulatorisch."
  :questions="[
    { tag: 'Qualität', q: 'Hat das Ergebnis in einem Jahr noch Bestand?' },
    { tag: 'Abhängigkeit', q: 'Was, wenn der Anbieter die Preise verdoppelt oder abschaltet?' },
    { tag: 'Regulierung', q: 'Funktioniert die Lösung nach einem Regulierungswechsel?' },
  ]"
/>

---
layout: default
color: dark
---

<!-- Slide 10: Diskussion -->

<QuestionSlide
  kicker="Reflexion"
  title="Diskussion"
  :questions="[
    'Welche SCOPE-Dimension trifft euch im Alltag am stärksten?',
    'Erzeugt KI in eurem Workflow mehr Output oder besseren Output?',
    'Wo habt ihr bewusst gegen den Einsatz von KI entschieden?',
  ]"
/>

---
layout: default
color: dark
---

<!-- Slide 11: Vielen Dank -->

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
