<script setup>
/**
 * SynthesisSlide — Closing slide before contact: SCOPE recap + key statement
 * + bridge to the day's broader narrative + final discussion prompts.
 * Props: kicker, title, bridge, scope[{letter,name,word}], questions[].
 * `**text**` in bridge becomes accent <em>.
 */
defineProps({
  kicker: { type: String, default: 'Synthese' },
  title: { type: String, required: true },
  bridge: { type: String, default: '' },
  scope: { type: Array, default: () => [] },
  questions: { type: Array, default: () => [] },
})

const colorMap = {
  S: '#059669',
  C: '#0d9488',
  O: '#0284c7',
  P: '#ea580c',
  E: '#7c3aed',
}
function railColor(letter) { return colorMap[letter] || '#818cf8' }
</script>

<template>
  <div class="syn">
    <header class="head">
      <div class="kicker">{{ kicker }}</div>
      <h1 class="title">{{ title }}</h1>
    </header>

    <div class="scope-row" v-if="scope.length">
      <div class="scope-cell" v-for="s in scope" :key="s.letter" :style="{ '--c': railColor(s.letter) }">
        <div class="scope-letter">{{ s.letter }}</div>
        <div class="scope-name">{{ s.name }}</div>
        <div class="scope-word">{{ s.word }}</div>
      </div>
    </div>

    <p class="bridge" v-if="bridge" v-html="bridge.replace(/\*\*(.+?)\*\*/g, '<em>$1</em>')"></p>

    <div class="questions" v-if="questions.length">
      <div class="q-label">Diskussion</div>
      <ol>
        <li v-for="(q, i) in questions" :key="i">
          <span class="num">{{ String(i + 1).padStart(2, '0') }}</span>
          <span class="text">{{ q }}</span>
        </li>
      </ol>
    </div>
  </div>
</template>

<style scoped>
.syn {
  position: absolute;
  inset: 0;
  padding: 2.25rem 3rem;
  display: grid;
  grid-template-rows: auto auto auto 1fr;
  gap: 1.5rem;
  color: #e5e7eb;
  font-family: 'Raleway', sans-serif;
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
  margin-bottom: 0.45rem;
}
.title {
  margin: 0;
  font-size: 2.6rem;
  line-height: 1.05;
  font-weight: 700;
  letter-spacing: -0.025em;
  color: white;
  max-width: 22ch;
  text-wrap: balance;
}

.scope-row {
  display: grid;
  grid-template-columns: repeat(5, 1fr);
  gap: 0.75rem;
}
.scope-cell {
  border-left: 3px solid var(--c);
  padding: 0.4rem 0 0.4rem 0.85rem;
  display: flex;
  flex-direction: column;
  gap: 0.15rem;
}
.scope-letter {
  font-size: 1.6rem;
  font-weight: 800;
  line-height: 1;
  letter-spacing: -0.04em;
  color: var(--c);
}
.scope-name {
  font-size: 0.75rem;
  font-weight: 600;
  text-transform: uppercase;
  letter-spacing: 0.12em;
  color: rgba(255, 255, 255, 0.55);
}
.scope-word {
  font-size: 0.95rem;
  font-weight: 600;
  color: white;
  line-height: 1.2;
  margin-top: 0.2rem;
}

.bridge {
  margin: 0;
  font-size: 1rem;
  line-height: 1.45;
  color: rgba(255, 255, 255, 0.78);
  border-left: 2px solid rgba(255, 255, 255, 0.18);
  padding-left: 1.25rem;
  max-width: 70ch;
  font-weight: 400;
}
.bridge :deep(em) {
  font-style: normal;
  color: #a5b4fc;
  font-weight: 600;
}

.questions {
  background: #818cf8;
  color: white;
  padding: 1.1rem 1.4rem;
  align-self: end;
}
.q-label {
  font-family: 'JetBrains Mono', ui-monospace, monospace;
  font-size: 0.65rem;
  letter-spacing: 0.22em;
  text-transform: uppercase;
  color: rgba(255, 255, 255, 0.85);
  margin-bottom: 0.6rem;
}
ol {
  list-style: none;
  margin: 0;
  padding: 0;
  display: flex;
  flex-direction: column;
}
ol li {
  display: grid;
  grid-template-columns: 2rem 1fr;
  align-items: baseline;
  gap: 0.85rem;
  padding: 0.55rem 0;
  border-top: 1px solid rgba(255, 255, 255, 0.18);
}
ol li:last-child {
  border-bottom: 1px solid rgba(255, 255, 255, 0.18);
}
.num {
  font-family: 'JetBrains Mono', ui-monospace, monospace;
  font-size: 0.7rem;
  color: rgba(255, 255, 255, 0.7);
  letter-spacing: 0.05em;
}
.text {
  font-size: 1.1rem;
  line-height: 1.3;
  font-weight: 600;
  color: white;
  letter-spacing: -0.01em;
  text-wrap: balance;
}
</style>
