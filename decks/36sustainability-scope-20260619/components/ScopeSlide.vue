<script setup>
/**
 * ScopeSlide — Rail + Wand layout for a single SCOPE dimension.
 * Props: letter, name, kicker, position, color, lead, questions[{tag,q}].
 * `**text**` in lead becomes accent <em>.
 */
defineProps({
  letter: { type: String, required: true },
  name: { type: String, required: true },
  kicker: { type: String, default: '' },
  position: { type: String, default: '' },
  color: { type: String, default: 'sky' },
  lead: { type: String, required: true },
  questions: { type: Array, default: () => [] },
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
  <div class="scope-slide" :style="{ '--rail-bg': rgb(color).bg, '--accent': rgb(color).accent }">
    <aside class="rail">
      <div class="rail-top">
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
        <div class="kicker-label" v-if="kicker">{{ kicker }}</div>
      </div>
    </aside>

    <section class="body">
      <div class="lead" v-html="lead.replace(/\*\*(.+?)\*\*/g, '<em>$1</em>')"></div>

      <div class="trio" v-if="questions.length">
        <div class="q" v-for="(item, i) in questions" :key="i">
          <div class="tag">{{ item.tag }}</div>
          <p>{{ item.q }}</p>
        </div>
      </div>
    </section>
  </div>
</template>

<style scoped>
.scope-slide {
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

.kicker-label {
  font-size: 1rem;
  font-weight: 700;
  letter-spacing: -0.01em;
  line-height: 1.2;
}

.body {
  padding: 2.5rem 3rem;
  display: flex;
  flex-direction: column;
  justify-content: space-between;
}

.lead {
  font-size: 2.4rem;
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

.trio {
  display: flex;
  margin-top: 1.5rem;
  padding-top: 1rem;
  border-top: 1px solid rgba(255, 255, 255, 0.08);
}
.trio .q {
  flex: 1 1 0;
  padding: 0 1.25rem;
  border-right: 1px solid rgba(255, 255, 255, 0.08);
}
.trio .q:first-child {
  padding-left: 0;
}
.trio .q:last-child {
  padding-right: 0;
  border-right: none;
}
.trio .q .tag {
  font-family: 'JetBrains Mono', ui-monospace, monospace;
  font-size: 0.7rem;
  color: rgba(255, 255, 255, 0.6);
  letter-spacing: 0.15em;
  margin-bottom: 0.4rem;
  text-transform: uppercase;
}
.trio .q p {
  font-size: 0.9rem;
  line-height: 1.35;
  color: rgba(255, 255, 255, 0.92);
  font-weight: 500;
  margin: 0;
}
</style>
