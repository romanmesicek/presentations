---
theme: neversink
layout: default
color: dark
title: Nachhaltige Entscheidungsgrundlagen für KI-Projekte
info: 36 sustainability | 19.6.2026
author: Roman Mesicek
transition: fade
favicon: /favicon.svg
---

<!-- Slide 1: Titel -->

<CoverSlide
  eyebrow=""
  title="Nachhaltige Entscheidungsgrundlagen für **KI-Projekte**"
  subtitle="Fünf Fragen, bevor KI in der Beratung zur Standard-Antwort wird."
  speaker="Roman Mesicek"
  occasion="36 sustainability"
  date="19.6.2026"
/>

---
layout: default
color: dark
---

<!-- Slide 2: Einstieg, Ressourcenverbrauch -->

<StatSlide
  railColor="indigo"
  accent="indigo"
  kicker="Ressourcenverbrauch"
  :stats="[
    { value: '0,42 Wh', label: 'Strom pro KI-Anfrage, rund 40 % mehr als eine Google-Suche.', source: 'arXiv 2505.09598 (2025)' },
    { value: '~500 ml', label: 'Wasser, das ein KI-Dialog aus 20 bis 50 Fragen verbraucht.', source: 'Li et al., Making AI Less Thirsty (2023)' },
    { value: '+48 %', label: 'mehr CO₂ bei Google seit 2019, trotz 6× Effizienzgewinn.', source: 'Google Environmental Report (2024)' },
  ]"
  lead="KI fühlt sich **gratis** an. **Ist sie nicht.**"
  tail="Bei einem Prompt ist der Verbrauch egal. Bei tausenden pro Tag nicht mehr. Genau da setzen fünf Fragen an."
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
  lead="Die **sparsamste KI** ist die, die nicht läuft. Die erste Frage ist, ob sie hier überhaupt nötig ist."
  :questions="[
    { tag: 'Notwendigkeit', q: 'Ersetzt die KI die Aufgabe, oder nur das Nachdenken?' },
    { tag: 'Alternativen', q: 'Würde ein Template, ein Telefonat oder ein Pre-Built-Workflow es auch tun?' },
    { tag: 'Mehrwert', q: 'Was kommt am Ende bei der Kund*in an, das ohne KI fehlen würde?' },
  ]"
/>

<!--
Beispiel: Generative KI erzeugt Text in Sekunden. Der Aufwand verlagert sich vom Schreiben zur Prüfung, ob das Ergebnis trägt. Häufig hätte ein Template oder ein kurzes Gespräch genügt.

Diskussion: Welche Routineaufgabe gibst du an KI ab, ohne vorher zu prüfen, ob sie nötig ist?
-->

---
layout: default
color: dark
---

<!-- Slide 5: C Carbon Frame -->

<ScopeSlide
  letter="C"
  name="Carbon"
  kicker="Was verbraucht KI?"
  position="02"
  color="teal"
  lead="Eine Anfrage verbraucht fast nichts. **Tausende pro Tag schon.** Auch wenn dein Solo-Anteil klein wirkt."
  :questions="[
    { tag: 'Energie', q: 'Wie viele Prompts pro Tag, und wie viele wären wirklich nötig?' },
    { tag: 'Wasser', q: 'Weißt du, wo die Rechenzentren stehen, die für deine KI Wasser verbrauchen?' },
    { tag: 'Emissionen', q: 'Würdest du den CO₂-Fußabdruck deiner Tool-Wahl im Kund*innen-Report ausweisen?' },
  ]"
/>

<!--
Beispiel: Der Verbrauch einer einzelnen Anfrage ist gering. Über viele Nutzer*innen und Tausende Anfragen pro Tag wird daraus ein relevanter Energie- und Wasserbedarf.

Diskussion: Wo verläuft die Grenze zwischen begründeter Recherche und reflexhaftem Prompten?
-->

---
layout: default
color: dark
---

<!-- Slide 6: O Outcomes Frame -->

<ScopeSlide
  letter="O"
  name="Outcomes"
  kicker="Wer profitiert?"
  position="03"
  color="sky"
  lead="Geschwindigkeit ist nicht **Wertschöpfung.** Wer profitiert: du, die Kund*innen, oder der Anbieter?"
  :questions="[
    { tag: 'Verteilung', q: 'Wer zahlt, wer spart, wer haftet bei deiner KI-Empfehlung?' },
    { tag: 'Gerechtigkeit', q: 'Profitieren auch Kund*innen, die sich teure Beratung sonst nicht leisten?' },
    { tag: 'Risiken', q: 'Was passiert, wenn die Empfehlung im Kund*innen-Report falsch ist?' },
  ]"
/>

<!--
Beispiel: Sinkende Einstiegshürden verlagern einfache Aufgaben zur Kund*in. Was sich standardisieren lässt, wird austauschbar, der Wert liegt in der anspruchsvollen Beratung.

Zahl: 18 $/Monat. ChatGPT-Team-Plan, mit dem Kund*innen Aufgaben selbst erledigen, die bisher Beratungsleistung waren. (OpenAI Pricing, 2026)

Diskussion: Welcher Teil deines Angebots ist austauschbar geworden, welcher nicht?
-->

---
layout: default
color: dark
---

<!-- Slide 7: P Power Frame -->

<ScopeSlide
  letter="P"
  name="Power"
  kicker="Wer kontrolliert?"
  position="04"
  color="orange"
  lead="**Daten, die das Büro verlassen,** kommen nicht zurück. Wenn morgen der Account gesperrt wird, wessen Problem ist das?"
  :questions="[
    { tag: 'Datenhoheit', q: 'Welche Kund*innen-Information darfst du überhaupt in ein Tool laden?' },
    { tag: 'Abhängigkeit', q: 'Was bricht zusammen, wenn dein Lieblings-Tool morgen dreimal so teuer wird?' },
    { tag: 'Kontrolle', q: 'Wer entscheidet, was die KI antwortet, und was nicht?' },
  ]"
/>

<!--
Beispiel: Berufsgeheimnisträger*innen unterliegen der Schweigepflicht. Klarnamen oder Mandatsdaten in einem KI-Tool ohne Auftragsverarbeitungsvertrag können diese Pflicht verletzen.

Zahl: § 203 StGB. Strafnorm für die Verletzung von Privatgeheimnissen, anwendbar auch bei Eingaben in KI-Systeme. (it-recht-kanzlei.de, 2025)

Diskussion: Welche Daten dürfen dein Büro nie in einem externen Tool verlassen?
-->

---
layout: default
color: dark
---

<!-- Slide 8: E Endurance Frame -->

<ScopeSlide
  letter="E"
  name="Endurance"
  kicker="Hält es?"
  position="05"
  color="violet"
  lead="Tools, die du im März lernst, sind im September anders. **Was bleibt, wenn die nächste Generation kommt?**"
  :questions="[
    { tag: 'Regulierung', q: 'Bist du auf den EU AI Act vorbereitet?' },
    { tag: 'Kosten', q: 'Was kosten fünf Tool-Abos im Monat, und was, wenn fünf zu zwölf werden?' },
    { tag: 'Kompetenz', q: 'Investierst du in Tool-Wissen oder in Beratungs-Wissen?' },
  ]"
/>

<!--
Beispiel: Strenge Auflagen treffen KI in Personalauswahl, Bonitätsprüfung oder Versicherung. Wer solche Systeme empfiehlt, trägt Mitverantwortung.

Zahl: 2.8.2026. Stichtag für die Hochrisiko-Pflichten des EU AI Act, Bußgeld bis 15 Mio. €. (Verordnung (EU) 2024/1689, Art. 113)

Diskussion: Welche deiner Kund*innen nutzt heute schon KI in einem regulierten Bereich, ohne es zu wissen?
-->

---
layout: default
color: dark
---

<!-- Slide 9: Offenlegung -->

<MutprobeSlide
  kicker="Offenlegung"
  subheadline="Erst schätzen, dann die Zahlen."
  :rows="[
    { phase: 'Zielgruppen-Analyse', human: 80, ai: 20 },
    { phase: 'Strukturentscheidung', human: 95, ai: 5 },
    { phase: 'Beispiele und Stats', human: 50, ai: 50 },
    { phase: 'Lead-Texte und Slogans', human: 30, ai: 70 },
    { phase: 'Visualisierung', human: 70, ai: 30 },
    { phase: 'Probe und Schliff', human: 100, ai: 0 },
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

<!-- Slide 10: Synthese -->

<SynthesisSlide
  kicker="Synthese"
  title="SCOPE hilft dir und deinen Kund*innen."
  bridge="Die fünf Fragen helfen, **KI-Einsatz nachhaltig zu gestalten**, im eigenen Büro und in der Beratung deiner Kund*innen."
/>

---
layout: default
color: dark
---

<!-- Slide 11: Vielen Dank -->

<ClosingSlide
  photo="/images/roman.webp"
  speaker="Roman Mesicek"
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
