<script setup>
/**
 * StatSlide — Two stats in the rail, big takeaway wall on the right.
 * Used for Hebel (80% / 2027) and Provokation (10x / +48%).
 * Props: railColor, accent, kicker, stats[{value,label,source}], lead, tail.
 * `**text**` in lead becomes accent <em>.
 */
defineProps({
  railColor: { type: String, default: 'indigo' },
  accent: { type: String, default: 'indigo' },
  kicker: { type: String, default: '' },
  stats: { type: Array, default: () => [] },
  lead: { type: String, required: true },
  tail: { type: String, default: '' },
})

const palette = {
  indigo: { bg: '#818cf8', accent: '#a5b4fc' },
  red:    { bg: '#ef4444', accent: '#fca5a5' },
  teal:   { bg: '#0d9488', accent: '#5eead4' },
}
function c(key) { return palette[key] || palette.indigo }
</script>

<template>
  <div class="stat"
       :style="{ '--rail-bg': c(railColor).bg, '--accent': c(accent).accent }">
    <aside class="rail">
      <div class="kicker" v-if="kicker">{{ kicker }}</div>
      <div class="stats">
        <div class="stat-row" v-for="(s, i) in stats" :key="i">
          <div class="value">{{ s.value }}</div>
          <div class="label">{{ s.label }}</div>
          <div class="src" v-if="s.source">{{ s.source }}</div>
        </div>
      </div>
    </aside>

    <section class="body">
      <div class="lead" v-html="lead.replace(/\*\*(.+?)\*\*/g, '<em>$1</em>')"></div>
      <p class="tail" v-if="tail">{{ tail }}</p>
    </section>
  </div>
</template>

<style scoped>
.stat {
  position: absolute;
  inset: 0;
  display: grid;
  grid-template-columns: 14rem 1fr;
  color: #e5e7eb;
  font-family: 'Raleway', sans-serif;
}
.rail {
  background: var(--rail-bg);
  color: white;
  padding: 1.75rem 1.25rem;
  display: flex;
  flex-direction: column;
  gap: 1.25rem;
}
.kicker {
  font-size: 0.7rem;
  letter-spacing: 0.22em;
  text-transform: uppercase;
  font-weight: 600;
  opacity: 0.85;
}
.stats {
  display: flex;
  flex-direction: column;
  gap: 1.75rem;
  flex: 1;
  justify-content: center;
}
.value {
  font-size: 3rem;
  font-weight: 800;
  letter-spacing: -0.04em;
  line-height: 0.9;
}
.label {
  margin-top: 0.5rem;
  font-size: 0.8rem;
  line-height: 1.35;
  font-weight: 500;
  max-width: 28ch;
}
.src {
  margin-top: 0.45rem;
  font-family: 'JetBrains Mono', ui-monospace, monospace;
  font-size: 0.55rem;
  opacity: 0.75;
  letter-spacing: 0.05em;
}
.body {
  padding: 2.5rem 3rem;
  display: flex;
  flex-direction: column;
  justify-content: center;
}
.lead {
  font-size: 2.6rem;
  line-height: 1.02;
  font-weight: 700;
  letter-spacing: -0.025em;
  max-width: 22ch;
  text-wrap: balance;
}
.lead :deep(em) {
  font-style: normal;
  color: var(--accent);
  font-weight: 700;
}
.tail {
  margin-top: 1.25rem;
  font-size: 0.95rem;
  color: rgba(255, 255, 255, 0.65);
  max-width: 46ch;
  line-height: 1.4;
}
</style>
