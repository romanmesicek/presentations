<script setup>
/**
 * ExampleSlide — Brand example + discussion question, paired with a SCOPE Frame slide.
 * Rail (SCOPE color) on the left with letter + position. Body on the right with
 * brand label, optional stat block, and a discussion question in a colored panel.
 * Props: letter, name, position, color, brand, note?, stat?, statLabel?, statSource?, discussion.
 * `**text**` in note becomes accent <em>.
 */
defineProps({
  letter: { type: String, required: true },
  name: { type: String, required: true },
  position: { type: String, default: '' },
  color: { type: String, default: 'sky' },
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
      <div class="rail-top">
        <div class="kicker">Beispiel</div>
        <div class="big-letter">{{ letter }}</div>
        <ul class="letters">
          <li :class="{ me: letter === 'S' }">S · Suffizienz</li>
          <li :class="{ me: letter === 'C' }">C · Carbon</li>
          <li :class="{ me: letter === 'O' }">O · Outcomes</li>
          <li :class="{ me: letter === 'P' }">P · Power</li>
          <li :class="{ me: letter === 'E' }">E · Endurance</li>
        </ul>
      </div>
      <div class="rail-bot">
        <div class="name">{{ name }}</div>
        <div class="pos" v-if="position">{{ position }} / 05</div>
      </div>
    </aside>

    <section class="body">
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
  margin-bottom: 0.5rem;
}

.big-letter {
  font-size: 6rem;
  font-weight: 800;
  line-height: 0.85;
  letter-spacing: -0.06em;
}

.letters {
  list-style: none;
  padding: 0;
  margin: 0.5rem 0 0;
  display: flex;
  flex-direction: column;
  gap: 0.2rem;
}
.letters li {
  font-size: 0.7rem;
  font-weight: 600;
  opacity: 0.5;
  letter-spacing: 0.08em;
}
.letters li.me { opacity: 1; }

.name {
  font-size: 1.1rem;
  font-weight: 700;
  letter-spacing: -0.01em;
  line-height: 1.15;
}
.pos {
  margin-top: 0.6rem;
  font-size: 0.65rem;
  font-family: 'JetBrains Mono', ui-monospace, monospace;
  opacity: 0.6;
  letter-spacing: 0.08em;
}

.body {
  padding: 2.25rem 3rem;
  display: flex;
  flex-direction: column;
  justify-content: space-between;
  gap: 1.25rem;
}

.label {
  font-family: 'JetBrains Mono', ui-monospace, monospace;
  font-size: 0.7rem;
  color: rgba(255, 255, 255, 0.55);
  letter-spacing: 0.18em;
  text-transform: uppercase;
  margin-bottom: 0.55rem;
}

.brand {
  font-size: 1.85rem;
  font-weight: 700;
  letter-spacing: -0.02em;
  line-height: 1.1;
  color: white;
}

.note {
  margin-top: 0.9rem;
  font-size: 1rem;
  line-height: 1.4;
  color: rgba(255, 255, 255, 0.78);
  max-width: 48ch;
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
  font-size: 3rem;
  font-weight: 800;
  letter-spacing: -0.04em;
  line-height: 0.9;
  color: white;
}
.stat-label {
  margin: 0;
  font-size: 0.95rem;
  line-height: 1.35;
  color: rgba(255, 255, 255, 0.9);
  font-weight: 500;
  max-width: 42ch;
}
.src {
  margin: 0.4rem 0 0;
  font-family: 'JetBrains Mono', ui-monospace, monospace;
  font-size: 0.6rem;
  color: rgba(255, 255, 255, 0.55);
  letter-spacing: 0.05em;
}

.discussion {
  background: var(--rail-bg);
  color: white;
  padding: 1.1rem 1.4rem;
}
.d-label {
  font-family: 'JetBrains Mono', ui-monospace, monospace;
  font-size: 0.65rem;
  letter-spacing: 0.22em;
  text-transform: uppercase;
  color: rgba(255, 255, 255, 0.85);
  margin-bottom: 0.45rem;
}
.d-text {
  margin: 0;
  font-size: 1.35rem;
  line-height: 1.25;
  font-weight: 600;
  letter-spacing: -0.015em;
  text-wrap: balance;
}
</style>
