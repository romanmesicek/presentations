<script setup>
import { reactive } from 'vue'

const props = defineProps({
  context: { type: String, default: '' },
  contextIcon: { type: String, default: '' },
  contextLabel: { type: String, default: '' },
})

const dimensions = [
  { key: 'S', label: 'Suffizienz', question: 'Brauchen wir das wirklich — oder gibt es eine einfachere Lösung?' },
  { key: 'C', label: 'Carbon', question: 'Wie hoch ist der ökologische Fußabdruck im Verhältnis zum Nutzen?' },
  { key: 'O', label: 'Outcomes', question: 'Wer profitiert konkret — und wer könnte benachteiligt werden?' },
  { key: 'P', label: 'Power', question: 'Wo landen die Daten, und wer kontrolliert das System?' },
  { key: 'E', label: 'Endurance', question: 'Können wir das in 3 Jahren noch finanzieren, betreiben und verantworten?' },
]

const colors = [
  { id: 'red', hex: '#DC2626', label: 'Kritisch' },
  { id: 'yellow', hex: '#E5A000', label: 'Anpassen' },
  { id: 'green', hex: '#16A34A', label: 'OK' },
]

const selected = reactive({
  S: null,
  C: null,
  O: null,
  P: null,
  E: null,
})

function toggle(dimension, colorId) {
  selected[dimension] = selected[dimension] === colorId ? null : colorId
}
</script>

<template>
  <div class="scope-matrix">
    <!-- Context box -->
    <div v-if="context" class="context-box">
      <span class="context-icon">{{ contextIcon }}</span>
      <div>
        <div class="context-label">{{ contextLabel }}</div>
        <p class="context-text">{{ context }}</p>
      </div>
    </div>

    <!-- Legend row -->
    <div class="legend">
      <div class="legend-item" v-for="c in colors" :key="c.id">
        <span class="legend-dot" :style="{ background: c.hex }"></span>
        <span>{{ c.label }}</span>
      </div>
      <span class="legend-hint">Klicken zum Bewerten</span>
    </div>

    <!-- Dimension rows -->
    <div class="dimensions">
      <div
        v-for="dim in dimensions"
        :key="dim.key"
        class="dimension-row"
        :class="{ 'has-selection': selected[dim.key] !== null }"
      >
        <div class="dim-text">
          <strong>{{ dim.label }}</strong> <span class="dim-sep">&mdash;</span> {{ dim.question }}
        </div>
        <div class="dim-buttons">
          <button
            v-for="c in colors"
            :key="c.id"
            class="color-btn"
            :class="{
              active: selected[dim.key] === c.id,
              dimmed: selected[dim.key] !== null && selected[dim.key] !== c.id,
            }"
            :style="{
              '--btn-color': c.hex,
              background: selected[dim.key] === c.id ? c.hex : `${c.hex}18`,
              borderColor: selected[dim.key] === c.id ? c.hex : `${c.hex}40`,
            }"
            :title="c.label"
            @click="toggle(dim.key, c.id)"
          >
            <span class="btn-check" v-if="selected[dim.key] === c.id">&#10005;</span>
          </button>
        </div>
      </div>
    </div>

    <p class="footer-hint">Gemeinsam bewerten &mdash; Rot (Kritisch) / Gelb (Anpassen) / Gr&uuml;n (OK)</p>
  </div>
</template>

<style scoped>
.scope-matrix {
  font-family: 'Raleway', sans-serif;
}

.context-box {
  display: flex;
  gap: 0.6rem;
  align-items: flex-start;
  background: white;
  border-radius: 0.5rem;
  padding: 0.6rem 0.8rem;
  box-shadow: 0 1px 3px rgba(0,0,0,0.06);
  margin-bottom: 0.6rem;
}

.context-icon {
  font-size: 1rem;
  line-height: 1.2;
}

.context-label {
  font-size: 0.6rem;
  text-transform: uppercase;
  letter-spacing: 0.08em;
  color: #9ca3af;
  font-weight: 600;
}

.context-text {
  font-size: 0.78rem;
  color: #374151;
  margin: 0;
  line-height: 1.3;
}

.legend {
  display: flex;
  align-items: center;
  gap: 1rem;
  margin-bottom: 0.4rem;
  padding-bottom: 0.4rem;
  border-bottom: 1px solid #e5e7eb;
}

.legend-item {
  display: flex;
  align-items: center;
  gap: 0.3rem;
  font-size: 0.72rem;
  font-weight: 500;
  color: #374151;
}

.legend-dot {
  width: 8px;
  height: 8px;
  border-radius: 50%;
}

.legend-hint {
  margin-left: auto;
  font-size: 0.65rem;
  color: #9ca3af;
  font-style: italic;
}

.dimensions {
  display: flex;
  flex-direction: column;
  gap: 0.3rem;
}

.dimension-row {
  display: flex;
  align-items: center;
  gap: 0.5rem;
  padding: 0.45rem 0.6rem;
  border-radius: 0.5rem;
  background: #f9fafb;
  transition: background 0.15s ease, box-shadow 0.15s ease;
}

.dimension-row.has-selection {
  background: white;
  box-shadow: 0 1px 3px rgba(0,0,0,0.05);
}

.dim-text {
  flex: 1;
  font-size: 0.82rem;
  color: #1f2937;
  line-height: 1.3;
  min-width: 0;
}

.dim-text strong {
  font-weight: 700;
}

.dim-sep {
  color: #9ca3af;
  margin: 0 0.15rem;
}

.dim-buttons {
  display: flex;
  gap: 0.3rem;
  flex-shrink: 0;
}

.color-btn {
  width: 1.6rem;
  height: 1.6rem;
  border-radius: 0.35rem;
  border: 2px solid;
  cursor: pointer;
  display: flex;
  align-items: center;
  justify-content: center;
  transition: all 0.15s ease;
  padding: 0;
}

.color-btn:hover {
  transform: scale(1.15);
  opacity: 1 !important;
}

.color-btn.dimmed {
  opacity: 0.2;
  transform: scale(0.85);
}

.color-btn.active {
  transform: scale(1.05);
  box-shadow: 0 0 0 2px color-mix(in srgb, var(--btn-color) 25%, transparent);
}

.btn-check {
  color: white;
  font-size: 0.75rem;
  font-weight: 700;
  line-height: 1;
}

.footer-hint {
  text-align: center;
  font-size: 0.68rem;
  color: #9ca3af;
  font-style: italic;
  margin-top: 0.5rem;
  margin-bottom: 0;
}
</style>
