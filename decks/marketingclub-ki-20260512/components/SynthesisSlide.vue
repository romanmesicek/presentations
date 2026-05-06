<script setup>
/**
 * SynthesisSlide — Closing + Q&A backdrop.
 * Props: kicker, title, bridge.
 * `**text**` in bridge becomes accent <em>.
 */
defineProps({
  kicker: { type: String, default: 'Synthese' },
  title: { type: String, required: true },
  bridge: { type: String, default: '' },
})
</script>

<template>
  <div class="syn">
    <header class="head">
      <div class="kicker">{{ kicker }}</div>
      <h1 class="title">{{ title }}</h1>
    </header>

    <div class="closing">
      <p class="hosts" v-if="bridge" v-html="bridge.replace(/\*\*(.+?)\*\*/g, '<em>$1</em>')"></p>

      <p class="answer">Eine Antwort: Fragen stellen! Das <span class="scope">SCOPE</span>-Framework kann dabei unterstützen.</p>
    </div>
  </div>
</template>

<style scoped>
.syn {
  position: absolute;
  inset: 0;
  padding: 2.25rem 3rem;
  display: grid;
  grid-template-rows: auto 1fr;
  gap: 1.75rem;
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

.closing {
  display: flex;
  flex-direction: column;
  justify-content: center;
  gap: 2.25rem;
  align-self: center;
}

.hosts {
  margin: 0;
  font-size: 1.5rem;
  line-height: 1.3;
  color: white;
  max-width: 60ch;
  font-weight: 500;
  letter-spacing: -0.015em;
  text-wrap: balance;
}
.hosts :deep(em) {
  font-style: normal;
  color: #a5b4fc;
  font-weight: 700;
}

.answer {
  margin: 0;
  font-size: 1.5rem;
  line-height: 1.3;
  font-weight: 500;
  letter-spacing: -0.015em;
  color: white;
  max-width: 60ch;
  text-wrap: balance;
}
.scope {
  color: #a5b4fc;
  font-weight: 700;
}
</style>
