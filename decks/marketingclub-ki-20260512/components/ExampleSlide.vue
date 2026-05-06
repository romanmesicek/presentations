<script setup>
/**
 * ExampleSlide — Brand example + discussion question, paired with a SCOPE Frame slide.
 * Rail (SCOPE color) on the left with letter badge + position. Body on the right with
 * Eskalations-Slogan headline, brand label, optional stat block, and discussion question.
 * Props: letter, name, position, color, slogan?, brand, note?, stat?, statLabel?, statSource?, discussion.
 * `**text**` in note becomes accent <em>.
 */
defineProps({
  letter: { type: String, required: true },
  name: { type: String, required: true },
  position: { type: String, default: '' },
  color: { type: String, default: 'sky' },
  slogan: { type: String, default: '' },
  brand: { type: String, required: true },
  note: { type: String, default: '' },
  stat: { type: String, default: '' },
  statLabel: { type: String, default: '' },
  statSource: { type: String, default: '' },
  discussion: { type: String, required: true },
})

const colorMap = {
  emerald: { bg: '#059669', accent: '#6ee7b7' },
  teal:    { bg: '#0d9488', accent: '#5eead4' },
  sky:     { bg: '#0284c7', accent: '#7dd3fc' },
  orange:  { bg: '#ea580c', accent: '#fdba74' },
  violet:  { bg: '#7c3aed', accent: '#c4b5fd' },
}
function rgb(c) { return colorMap[c] || colorMap.sky }
</script>

<template>
  <div class="example" :style="{ '--rail-bg': rgb(color).bg, '--accent': rgb(color).accent }">
    <aside class="rail">
      <div class="kicker">Beispiel</div>
      <div class="name">{{ name }}</div>
    </aside>

    <section class="body">
      <header class="headline" v-if="slogan">
        <h2 class="slogan">{{ slogan }}</h2>
      </header>

      <div class="top">
        <div class="label">Bei wem das gerade passiert</div>
        <div class="brand">{{ brand }}</div>
        <div class="note" v-if="note" v-html="note.replace(/\*\*(.+?)\*\*/g, '<em>$1</em>')"></div>
      </div>

      <div class="stat" v-if="stat">
        <div class="value">{{ stat }}</div>
        <div class="stat-text">
          <p class="stat-label" v-if="statLabel">{{ statLabel }}</p>
          <p class="src" v-if="statSource">{{ statSource }}</p>
        </div>
      </div>

      <div class="discussion">
        <div class="d-label">Diskussion</div>
        <p class="d-text">{{ discussion }}</p>
      </div>
    </section>
  </div>
</template>

<style scoped>
.example {
  position: absolute;
  inset: 0;
  display: grid;
  grid-template-columns: 11rem 1fr;
  color: #e5e7eb;
  font-family: 'Raleway', sans-serif;
}

.rail {
  background: var(--rail-bg);
  color: white;
  padding: 1.75rem 1.25rem;
  display: flex;
  flex-direction: column;
  justify-content: space-between;
}

.kicker {
  font-size: 0.7rem;
  letter-spacing: 0.24em;
  text-transform: uppercase;
  font-weight: 600;
  opacity: 0.85;
}

.name {
  font-size: 1.5rem;
  font-weight: 700;
  letter-spacing: -0.01em;
  line-height: 1.15;
}

.body {
  padding: 2rem 3rem;
  display: flex;
  flex-direction: column;
  justify-content: space-between;
  gap: 1rem;
}

.headline {
  border-left: 2px solid var(--accent);
  padding-left: 1.1rem;
}
.slogan {
  margin: 0;
  font-size: 2.15rem;
  line-height: 1.05;
  font-weight: 700;
  letter-spacing: -0.025em;
  color: white;
  max-width: 28ch;
  text-wrap: balance;
}

.label {
  font-family: 'JetBrains Mono', ui-monospace, monospace;
  font-size: 0.65rem;
  color: rgba(255, 255, 255, 0.5);
  letter-spacing: 0.18em;
  text-transform: uppercase;
  margin-bottom: 0.4rem;
}

.brand {
  font-size: 1.55rem;
  font-weight: 700;
  letter-spacing: -0.02em;
  line-height: 1.15;
  color: white;
}

.note {
  margin-top: 0.7rem;
  font-size: 0.95rem;
  line-height: 1.4;
  color: rgba(255, 255, 255, 0.78);
  max-width: 52ch;
  font-weight: 400;
}
.note :deep(em) {
  font-style: normal;
  color: var(--accent);
  font-weight: 600;
}

.stat {
  display: grid;
  grid-template-columns: auto 1fr;
  align-items: baseline;
  gap: 1.25rem;
  border-left: 2px solid var(--accent);
  padding-left: 1.25rem;
}
.value {
  font-size: 2.6rem;
  font-weight: 800;
  letter-spacing: -0.04em;
  line-height: 0.95;
  color: white;
  white-space: nowrap;
}
.stat-label {
  margin: 0;
  font-size: 0.9rem;
  line-height: 1.35;
  color: rgba(255, 255, 255, 0.9);
  font-weight: 500;
  max-width: 50ch;
}
.src {
  margin: 0.4rem 0 0;
  font-family: 'JetBrains Mono', ui-monospace, monospace;
  font-size: 0.55rem;
  color: rgba(255, 255, 255, 0.55);
  letter-spacing: 0.05em;
}

.discussion {
  background: var(--rail-bg);
  color: white;
  padding: 1rem 1.4rem;
}
.d-label {
  font-family: 'JetBrains Mono', ui-monospace, monospace;
  font-size: 0.65rem;
  letter-spacing: 0.22em;
  text-transform: uppercase;
  color: rgba(255, 255, 255, 0.85);
  margin-bottom: 0.4rem;
}
.d-text {
  margin: 0;
  font-size: 1.2rem;
  line-height: 1.25;
  font-weight: 600;
  letter-spacing: -0.015em;
  text-wrap: balance;
}
</style>
