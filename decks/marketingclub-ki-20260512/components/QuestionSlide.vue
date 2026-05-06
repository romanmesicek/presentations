<script setup>
/**
 * QuestionSlide — Discussion prompts in the Rail + Wand vocabulary.
 * Props: kicker, title, questions[].
 */
defineProps({
  kicker: { type: String, default: 'Reflexion' },
  title: { type: String, default: 'Diskussion' },
  questions: { type: Array, default: () => [] },
})
</script>

<template>
  <div class="q">
    <aside class="rail">
      <div class="top">
        <div class="kicker">{{ kicker }}</div>
        <div class="mark">?</div>
      </div>
      <div class="bot">
        <div class="title">{{ title }}</div>
        <div class="count">{{ String(questions.length).padStart(2, '0') }} Fragen</div>
      </div>
    </aside>

    <section class="body">
      <ol>
        <li v-for="(item, i) in questions" :key="i">
          <span class="num">{{ String(i + 1).padStart(2, '0') }}</span>
          <span class="text">{{ item }}</span>
        </li>
      </ol>
    </section>
  </div>
</template>

<style scoped>
.q {
  position: absolute;
  inset: 0;
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
.kicker {
  font-size: 0.7rem;
  letter-spacing: 0.22em;
  text-transform: uppercase;
  font-weight: 600;
  opacity: 0.85;
  margin-bottom: 0.5rem;
}
.mark {
  font-size: 7rem;
  font-weight: 800;
  line-height: 0.85;
  letter-spacing: -0.08em;
}
.title {
  font-size: 1.2rem;
  font-weight: 700;
  letter-spacing: -0.01em;
}
.count {
  margin-top: 0.3rem;
  font-size: 0.65rem;
  font-family: 'JetBrains Mono', ui-monospace, monospace;
  opacity: 0.7;
  letter-spacing: 0.08em;
}
.body {
  padding: 2.5rem 3rem;
  display: flex;
  flex-direction: column;
  justify-content: center;
}
ol {
  list-style: none;
  padding: 0;
  margin: 0;
  display: flex;
  flex-direction: column;
}
ol li {
  display: grid;
  grid-template-columns: 2.25rem 1fr;
  align-items: baseline;
  gap: 1rem;
  padding: 0.9rem 0;
  border-top: 1px solid rgba(255, 255, 255, 0.08);
}
ol li:last-child {
  border-bottom: 1px solid rgba(255, 255, 255, 0.08);
}
.num {
  font-family: 'JetBrains Mono', ui-monospace, monospace;
  font-size: 0.7rem;
  color: #a5b4fc;
  font-weight: 500;
  letter-spacing: 0.05em;
}
.text {
  font-size: 1.4rem;
  line-height: 1.25;
  font-weight: 500;
  color: rgba(255, 255, 255, 0.95);
  letter-spacing: -0.01em;
  text-wrap: balance;
}
</style>
