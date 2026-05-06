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

<ExtinctionOverlay :opacity="0.25" />

<CoverSlide
  eyebrow="Intermezzo · Marketing Club Österreich"
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
  tail="Drei Hebel der Nachhaltigkeit: Verhalten, Gestaltung, Produktion. KI sitzt in allen dreien, meistens als Reflex, selten als Entscheidung."
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
    { tag: 'Mehrwert', q: 'Misst unser KPI Konsum, oder nur Produktion?' },
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
  brand="Jasper, Copy.ai, Writesonic"
  note="Generative-Content-Plattformen verkaufen *Unlimited Generations*-Tarife. Der Tarif belohnt **Output-Menge,** nicht Output-Qualität."
  stat="Slop"
  statLabel="„KI-Slop" beschreibt KI-generierten Content ohne Konsumäquivalent. SEO-Spam, Newsletter, Social Posts steigen schneller als die Aufmerksamkeit, die sie konsumieren könnte."
  statSource="Industry term, verbreitet ab 2024"
  discussion="Welcher Anteil eures KI-generierten Contents wird tatsächlich gelesen, und nicht nur produziert?"
/>

---
layout: default
color: dark
---

<!-- Slide 6: C Carbon Frame -->

<ScopeSlide
  letter="C"
  name="Carbon"
  kicker="Was verbraucht sie?"
  position="02"
  color="teal"
  lead="Der Marketing-Footprint einer KI ist **real,** aber meistens **unsichtbar**, verteilt auf tausende Modell-Calls pro Kampagne."
  :questions="[
    { tag: 'Verbrauch', q: 'Wie viele Modell-Calls hängen an einer Kampagne, und welche Modelle?' },
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
  brand="Programmatic via DV360, The Trade Desk · Klaviyo Predictive"
  note="Real-Time-Bidding ist ein **Modell-Kaskaden-System.** Targeting, Pricing, Creative-Wahl, Brand Safety. Jeder Bid durchläuft mehrere Inferenzen, oft zehntausendmal pro Sekunde. Personalisation-Engines wie Klaviyo skoren Kund:innen kontinuierlich."
  stat="Mio."
  statLabel="Modell-Calls pro Kampagne sind die Regel, nicht die Ausnahme. Gemessen wird der Bid-Preis. Gemessen wird selten der Energieverbrauch."
  statSource="The Trade Desk Engineering Blog, 2024 · IAB Tech Lab"
  discussion="Wie viele Modell-Calls hängen an einer einzigen eurer Anzeigen, und wer bei euch hat das je gemessen?"
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
    { tag: 'Nutzen', q: 'Schöpfen wir Wert für die Kund:innen, oder ersetzen wir Arbeit, die wir früher bezahlt haben?' },
    { tag: 'Herkunft', q: 'Wessen Texte, Bilder, Stimmen stecken in den Trainingsdaten unserer Tools?' },
    { tag: 'Verteilung', q: 'Wer profitiert vom Effizienzgewinn, wir, der Anbieter oder die Kund:innen?' },
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
  brand="Qualtrics Edge Audiences · Yabble (YouGov) · Toluna HarmonAIze"
  note="Synthetische Respondenten ersetzen menschliche Befragte in der Marktforschung. Studien zeigen bis zu **90% Übereinstimmung** mit echten Survey-Daten."
  stat="73%"
  statLabel="der Marktforscher:innen haben synthetische Respondenten mindestens einmal eingesetzt, ein Drittel davon binnen der letzten 30 Tage."
  statSource="Qualtrics, State of Research Report, 2025"
  discussion="Wenn synthetische Personas 90% Übereinstimmung erreichen, wer braucht dann noch Marktforscher:innen, und was geht dabei verloren?"
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
  brand="Meta Advantage+ Lookalike · Google Performance Max · Demand Gen"
  note="Black-Box-Targeting: Du gibst Budget und Conversion-Ziel frei. Die Plattform entscheidet **autonom** über Audience, Placement, Bid und Creative-Mix. Berichts-Granularität sinkt mit jeder Produkt-Generation."
  stat="Lock-in"
  statLabel="Audience-Modelle, Conversion-Lernkurven und Pixel-Historie sind nicht portabel. Wechselkosten sind nicht der Tarif, sondern der verlorene Lerneffekt."
  statSource="Meta for Business Help, 2024 · Google Ads Documentation"
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
  brand="Lil Miquela · Aitana Lopez · synthetische Brand-Influencer:innen"
  note="Virtuelle Influencer:innen mit Millionen Follower:innen. Bislang ohne Pflicht zur Offenlegung. **Ab 2026 ändert sich das:** EU AI Act Art. 50 verlangt sichtbare Kennzeichnung von KI-generierten Personen."
  stat="2026"
  statLabel="EU AI Act Transparenzpflichten greifen. KI-generierte Bilder, Videos und Audio von Personen müssen erkennbar als solche markiert werden."
  statSource="Verordnung (EU) 2024/1689, Art. 50"
  discussion="Wenn ein virtueller Influencer morgen offengelegt werden muss, was tut das mit der Glaubwürdigkeit eurer Kampagne?"
/>

---
layout: default
color: dark
---

<!-- Slide 14: Synthese + Schluss-Diskussion -->

<SynthesisSlide
  kicker="Synthese"
  title="Tue Gutes, auch wenn niemand zuschaut."
  bridge="Verantwortung lässt sich nicht delegieren. Drei Hebel: **Verhalten, Gestaltung, Produktion.** KI sitzt in allen dreien."
  :scope="[
    { letter: 'S', name: 'Suffizienz', word: 'Brauchen wir es?' },
    { letter: 'C', name: 'Carbon', word: 'Was kostet es?' },
    { letter: 'O', name: 'Outcomes', word: 'Wer profitiert?' },
    { letter: 'P', name: 'Power', word: 'Wer kontrolliert?' },
    { letter: 'E', name: 'Endurance', word: 'Hält es?' },
  ]"
  :questions="[
    'Welche eurer KI-Routinen würdet ihr morgen abschalten, wenn der Strompreis sich verzehnfacht?',
    'Wo zieht ihr in eurer Marken-DNA die Linie zwischen „KI hilft" und „KI darf das übernehmen"?',
  ]"
/>

---
layout: default
color: dark
---

<!-- Slide 15: Vielen Dank -->

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
