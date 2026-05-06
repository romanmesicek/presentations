<script setup>
/**
 * ScopeMatrix — Overview slide that mirrors the Rail look of ScopeSlide.
 * Shows all 5 dimensions as mini-rails side by side.
 */
const dims = [
  { letter: 'S', name: 'Suffizienz', kicker: 'Brauchen wir KI?', color: '#059669', trio: ['Notwendigkeit', 'Alternativen', 'Mehrwert'] },
  { letter: 'C', name: 'Carbon',     kicker: 'Was verbraucht sie?', color: '#0d9488', trio: ['Energie', 'Wasser', 'Emissionen'] },
  { letter: 'O', name: 'Outcomes',   kicker: 'Wer profitiert?',    color: '#0284c7', trio: ['Verteilung', 'Gerechtigkeit', 'Risiken'] },
  { letter: 'P', name: 'Power',      kicker: 'Wer kontrolliert?',  color: '#ea580c', trio: ['Datenhoheit', 'Abhängigkeit', 'Kontrolle'] },
  { letter: 'E', name: 'Endurance',  kicker: 'Hält es?',           color: '#7c3aed', trio: ['Regulierung', 'Kosten', 'Kompetenz'] },
]
</script>

<template>
  <div class="matrix">
    <header class="head">
      <div class="kicker">Das Framework</div>
      <h1>SCOPE</h1>
      <p class="sub">Fünf Dimensionen. Fünf Fragen. Vor jeder KI-Entscheidung.</p>
    </header>

    <div class="rails">
      <article v-for="d in dims" :key="d.letter" class="mini" :style="{ background: d.color }">
        <div class="letter">{{ d.letter }}</div>
        <div class="name">
          <small>{{ d.kicker }}</small>
          {{ d.name }}
        </div>
        <ul>
          <li v-for="(t, i) in d.trio" :key="i">{{ t }}</li>
        </ul>
      </article>
    </div>
  </div>
</template>

<style scoped>
.matrix {
  position: absolute;
  inset: 0;
  display: flex;
  flex-direction: column;
  font-family: 'Raleway', sans-serif;
  color: #e5e7eb;
  padding: 1.75rem 2rem 1.5rem;
}
.head {
  display: grid;
  grid-template-columns: auto 1fr;
  align-items: baseline;
  column-gap: 1.25rem;
  row-gap: 0.25rem;
  margin-bottom: 1.25rem;
  border-bottom: 2px solid #818cf8;
  padding-bottom: 0.75rem;
}
.kicker {
  grid-column: 1 / 2;
  grid-row: 1 / 2;
  font-size: 0.7rem;
  letter-spacing: 0.22em;
  text-transform: uppercase;
  font-weight: 600;
  color: rgba(255, 255, 255, 0.6);
}
.head h1 {
  grid-column: 1 / 2;
  grid-row: 2 / 3;
  font-size: 2rem;
  font-weight: 800;
  letter-spacing: -0.02em;
  margin: 0;
  border-bottom: none;
}
.sub {
  grid-column: 2 / 3;
  grid-row: 2 / 3;
  font-size: 0.9rem;
  color: rgba(255, 255, 255, 0.7);
  margin: 0;
  padding-bottom: 0.25rem;
  align-self: end;
}
.rails {
  flex: 1;
  display: grid;
  grid-template-columns: repeat(5, 1fr);
  gap: 0.6rem;
  min-height: 0;
}
.mini {
  color: white;
  padding: 1rem 0.9rem;
  display: flex;
  flex-direction: column;
  justify-content: space-between;
}
.letter {
  font-size: 3rem;
  font-weight: 800;
  line-height: 0.9;
  letter-spacing: -0.06em;
}
.name {
  font-size: 1rem;
  font-weight: 700;
  letter-spacing: -0.01em;
  margin-top: 0.75rem;
}
.name small {
  display: block;
  font-size: 0.6rem;
  letter-spacing: 0.2em;
  text-transform: uppercase;
  opacity: 0.8;
  font-weight: 500;
  margin-bottom: 0.25rem;
}
ul {
  margin: 0.75rem 0 0;
  padding: 0.5rem 0 0;
  list-style: none;
  border-top: 1px solid rgba(255, 255, 255, 0.25);
  display: flex;
  flex-direction: column;
  gap: 0.15rem;
}
ul li {
  font-size: 0.7rem;
  opacity: 0.9;
  letter-spacing: 0.02em;
}
</style>
