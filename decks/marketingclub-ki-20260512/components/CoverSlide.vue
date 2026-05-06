<script setup>
/**
 * CoverSlide — Title slide in the Rail + Wand vocabulary.
 * Props: eyebrow, title, subtitle, speaker, affiliation, occasion, date.
 * `**text**` in title becomes accent <em>.
 */
defineProps({
  eyebrow: { type: String, default: 'Impuls' },
  title: { type: String, required: true },
  subtitle: { type: String, default: '' },
  speaker: { type: String, default: '' },
  affiliation: { type: String, default: '' },
  occasion: { type: String, default: '' },
  date: { type: String, default: '' },
})
</script>

<template>
  <div class="cover">
    <aside class="rail">
      <div class="top">
        <div class="eyebrow" v-if="eyebrow">{{ eyebrow }}</div>
      </div>
      <div class="bot">
        <div class="speaker">{{ speaker }}</div>
        <div class="aff" v-if="affiliation">{{ affiliation }}</div>
        <div class="meta" v-if="occasion || date">
          <span v-if="occasion">{{ occasion }}</span>
          <span v-if="occasion && date"> · </span>
          <span v-if="date">{{ date }}</span>
        </div>
      </div>
    </aside>

    <section class="body">
      <h1 v-html="title.replace(/\*\*(.+?)\*\*/g, '<em>$1</em>')"></h1>
      <p v-if="subtitle" class="sub">{{ subtitle }}</p>
    </section>
  </div>
</template>

<style scoped>
.cover {
  position: absolute;
  inset: 0;
  z-index: 30;
  display: grid;
  grid-template-columns: 11rem 1fr;
  color: #e5e7eb;
  font-family: 'Raleway', sans-serif;
}
.rail {
  background: #818cf8;
  color: white;
  padding: 1.75rem 1.25rem;
  display: flex;
  flex-direction: column;
  justify-content: space-between;
}
.eyebrow {
  font-size: 0.7rem;
  letter-spacing: 0.22em;
  text-transform: uppercase;
  font-weight: 600;
  opacity: 0.85;
  margin-bottom: 0.5rem;
}
.mark {
  font-size: 3rem;
  font-weight: 800;
  letter-spacing: -0.04em;
  line-height: 0.9;
}
.mark span { opacity: 0.5; }
.speaker {
  font-size: 1.1rem;
  font-weight: 700;
  letter-spacing: -0.01em;
}
.aff {
  font-size: 0.8rem;
  opacity: 0.85;
  margin-top: 0.15rem;
}
.meta {
  margin-top: 0.75rem;
  font-size: 0.65rem;
  font-family: 'JetBrains Mono', ui-monospace, monospace;
  opacity: 0.7;
  letter-spacing: 0.06em;
}
.body {
  padding: 2.5rem 3rem;
  display: flex;
  flex-direction: column;
  justify-content: center;
  background: transparent;
}
h1 {
  font-size: 2.8rem;
  line-height: 1.02;
  font-weight: 700;
  letter-spacing: -0.025em;
  max-width: 20ch;
  text-wrap: balance;
  margin: 0;
  border-bottom: none;
}
h1 :deep(em) {
  font-style: normal;
  color: #a5b4fc;
  font-weight: 700;
}
.sub {
  margin-top: 1.25rem;
  font-size: 1rem;
  color: rgba(255, 255, 255, 0.7);
  max-width: 40ch;
  line-height: 1.35;
  font-weight: 400;
}
</style>
