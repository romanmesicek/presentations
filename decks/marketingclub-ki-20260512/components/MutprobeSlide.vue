<script setup>
/**
 * MutprobeSlide — Selbst-Check: Mensch-zu-KI-Verhältnis pro Phase der Folien-Erstellung.
 * Eigene SCOPE-Anwendung des Sprechers auf seinen eigenen Vortrag.
 * Bars und Ratios sind initial versteckt — pro Klick wird eine Zeile aufgelöst (schätzen lassen).
 * Props: kicker, headline, subheadline, rows[{phase, human, ai}].
 */
defineProps({
  kicker: { type: String, default: 'Mutprobe' },
  headline: { type: String, default: 'Diese Folien sind teilweise mit KI entstanden.' },
  subheadline: { type: String, default: 'Schätzen, dann auflösen.' },
  rows: { type: Array, default: () => [] },
})
</script>

<template>
  <div class="mut">
    <header class="head">
      <div class="kicker">{{ kicker }}</div>
      <h1 class="title">{{ headline }}</h1>
      <p class="sub">{{ subheadline }}</p>
    </header>

    <div class="legend">
      <span class="leg"><span class="dot dot-h"></span> Mensch</span>
      <span class="leg"><span class="dot dot-a"></span> KI</span>
    </div>

    <div class="rows">
      <div class="row" v-for="(r, i) in rows" :key="i">
        <div class="phase">{{ r.phase }}</div>
        <div class="bar">
          <div class="bar-h" v-click="i + 1" :style="{ flex: r.human }"></div>
          <div class="bar-a" v-click="i + 1" :style="{ flex: r.ai }"></div>
        </div>
        <div class="ratio" v-click="i + 1">
          <span class="r-h">{{ r.human }}</span>
          <span class="sep">:</span>
          <span class="r-a">{{ r.ai }}</span>
        </div>
      </div>
    </div>
  </div>
</template>

<style scoped>
.mut {
  position: absolute;
  inset: 0;
  padding: 2.25rem 3rem 2rem;
  color: #e5e7eb;
  font-family: 'Raleway', sans-serif;
  display: grid;
  grid-template-rows: auto auto 1fr;
  gap: 1.25rem;
}

.head {
  border-left: 2px solid #818cf8;
  padding-left: 1.25rem;
}
.kicker {
  font-family: 'JetBrains Mono', ui-monospace, monospace;
  font-size: 0.7rem;
  letter-spacing: 0.24em;
  text-transform: uppercase;
  color: rgba(255, 255, 255, 0.55);
  margin-bottom: 0.4rem;
}
.title {
  margin: 0;
  font-size: 2.4rem;
  line-height: 1.05;
  font-weight: 700;
  letter-spacing: -0.025em;
  color: white;
  max-width: 24ch;
  text-wrap: balance;
}
.sub {
  margin: 0.5rem 0 0;
  font-size: 1.1rem;
  color: #a5b4fc;
  font-weight: 500;
  letter-spacing: -0.01em;
}

.legend {
  display: flex;
  gap: 1.5rem;
  font-family: 'JetBrains Mono', ui-monospace, monospace;
  font-size: 0.65rem;
  letter-spacing: 0.16em;
  text-transform: uppercase;
  color: rgba(255, 255, 255, 0.55);
  align-items: center;
  padding-left: 1.25rem;
}
.leg {
  display: inline-flex;
  align-items: center;
  gap: 0.5rem;
}
.dot {
  width: 0.7rem;
  height: 0.7rem;
  display: inline-block;
}
.dot-h {
  background: rgba(255, 255, 255, 0.55);
}
.dot-a {
  background: #818cf8;
}

.rows {
  display: flex;
  flex-direction: column;
  gap: 0.9rem;
  align-self: center;
}

.row {
  display: grid;
  grid-template-columns: 11rem 1fr 6rem;
  align-items: center;
  gap: 1.2rem;
}

.phase {
  font-size: 1.05rem;
  font-weight: 600;
  letter-spacing: -0.01em;
  color: white;
}

.bar {
  display: flex;
  height: 0.6rem;
  background: rgba(255, 255, 255, 0.04);
}
.bar-h {
  background: rgba(255, 255, 255, 0.55);
}
.bar-a {
  background: #818cf8;
}

.ratio {
  font-family: 'JetBrains Mono', ui-monospace, monospace;
  font-size: 0.85rem;
  letter-spacing: 0.05em;
  display: flex;
  align-items: baseline;
  gap: 0.2rem;
  justify-content: flex-end;
}
.r-h {
  color: rgba(255, 255, 255, 0.85);
}
.sep {
  color: rgba(255, 255, 255, 0.4);
}
.r-a {
  color: #a5b4fc;
}
</style>
