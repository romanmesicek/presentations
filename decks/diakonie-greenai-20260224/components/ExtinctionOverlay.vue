<script setup>
/**
 * ExtinctionOverlay — Floating extinct/endangered species layer
 * Reusable across Slidev presentations. Place <ExtinctionOverlay /> on any slide.
 * Props:
 *   opacity  — overall layer opacity (default 0.7, reduce for busy slides)
 *   speed    — animation speed multiplier (default 1, higher = faster)
 *   count    — how many species to show (1–11, default 11)
 */
import { ref, onMounted, computed } from 'vue'

const props = defineProps({
  opacity: { type: Number, default: 0.7 },
  speed: { type: Number, default: 1 },
  count: { type: Number, default: 9 },
})

const allSpecies = [
  { id: 'thylacine', name: 'Beutelwolf', latin: 'Thylacinus cynocephalus', status: 'Ausgestorben 1936', extinct: true, size: 'clamp(120px, 16vw, 200px)', x: '5%', y: '5%', flip: false, dur: [24, 21] },
  { id: 'baiji', name: 'Chinesischer Flussdelfin', latin: 'Lipotes vexillifer', status: 'Ausgestorben 2006', extinct: true, size: 'clamp(100px, 12vw, 160px)', x: '65%', y: '58%', flip: true, dur: [27, 24.5] },
  { id: 'golden-toad', name: 'Goldkröte', latin: 'Incilius periglenes', status: 'Ausgestorben 1989', extinct: true, size: 'clamp(40px, 5vw, 70px)', x: '20%', y: '62%', flip: true, dur: [18, 17.5] },
  { id: 'pyrenean-ibex', name: 'Pyrenäensteinbock', latin: 'Capra pyrenaica pyrenaica', status: 'Ausgestorben 2000', extinct: true, size: 'clamp(70px, 8vw, 110px)', x: '50%', y: '32%', flip: false, dur: [19.5, 17.5] },
  { id: 'dodo', name: 'Dodo', latin: 'Raphus cucullatus', status: 'Ausgestorben 1681', extinct: true, size: 'clamp(80px, 10vw, 130px)', x: '83%', y: '42%', flip: false, dur: [21, 19.25] },
  { id: 'great-auk', name: 'Riesenalk', latin: 'Pinguinus impennis', status: 'Ausgestorben 1844', extinct: true, size: 'clamp(60px, 7vw, 100px)', x: '10%', y: '38%', flip: true, dur: [18, 15.75] },
  { id: 'passenger-pigeon', name: 'Wandertaube', latin: 'Ectopistes migratorius', status: 'Ausgestorben 1914', extinct: true, size: 'clamp(55px, 7vw, 90px)', x: '28%', y: '8%', flip: false, dur: [16.5, 14] },
  { id: 'carolina-parakeet', name: 'Karolinasittich', latin: 'Conuropsis carolinensis', status: 'Ausgestorben 1918', extinct: true, size: 'clamp(48px, 6vw, 80px)', x: '70%', y: '78%', flip: true, dur: [15, 14] },
  { id: 'javan-tiger', name: 'Java-Tiger', latin: 'Panthera tigris sondaica', status: 'Ausgestorben 1980er', extinct: true, size: 'clamp(100px, 13vw, 170px)', x: '4%', y: '22%', flip: false, dur: [24, 21] },
]

const species = computed(() => allSpecies.slice(0, props.count))

// Generate pseudo-random path using seeded sine/cos
function generatePath(index, axis, range) {
  const seed = index * 1000
  const points = []
  for (let i = 0; i <= 10; i++) {
    const t = i / 10
    const val = axis === 'x'
      ? (Math.sin(seed + t * 13) * 0.5 + Math.cos(seed * 0.7 + t * 9) * 0.5) * range
      : (Math.cos(seed + t * 11) * 0.5 + Math.sin(seed * 0.8 + t * 12) * 0.5) * range
    points.push(val)
  }
  return points
}

function getAnimStyle(s, index) {
  const xRange = 150 + (index % 3) * 40
  const yRange = 100 + (index % 2) * 40
  const xPath = generatePath(index, 'x', xRange)
  const yPath = generatePath(index, 'y', yRange)
  const delay = index * 0.8
  const xDur = s.dur[0] / props.speed
  const yDur = s.dur[1] / props.speed

  return {
    '--entry-delay': `${delay}s`,
    '--x-dur': `${xDur}s`,
    '--y-dur': `${yDur}s`,
    '--x0': `${xPath[0]}px`, '--x1': `${xPath[1]}px`, '--x2': `${xPath[2]}px`,
    '--x3': `${xPath[3]}px`, '--x4': `${xPath[4]}px`, '--x5': `${xPath[5]}px`,
    '--x6': `${xPath[6]}px`, '--x7': `${xPath[7]}px`, '--x8': `${xPath[8]}px`,
    '--x9': `${xPath[9]}px`, '--x10': `${xPath[0]}px`,
    '--y0': `${yPath[0]}px`, '--y1': `${yPath[1]}px`, '--y2': `${yPath[2]}px`,
    '--y3': `${yPath[3]}px`, '--y4': `${yPath[4]}px`, '--y5': `${yPath[5]}px`,
    '--y6': `${yPath[6]}px`, '--y7': `${yPath[7]}px`, '--y8': `${yPath[8]}px`,
    '--y9': `${yPath[9]}px`, '--y10': `${yPath[0]}px`,
  }
}
</script>

<template>
  <div class="extinction-overlay" :style="{ opacity: props.opacity }">
    <div
      v-for="(s, i) in species"
      :key="s.id"
      class="floating-species"
      :style="{
        width: s.size,
        left: s.x,
        top: s.y,
        ...getAnimStyle(s, i),
      }"
    >
      <div class="svg-wrap" :class="{ flip: s.flip }">
        <!-- Thylacine -->
        <svg v-if="s.id === 'thylacine'" viewBox="0 0 400 200" xmlns="http://www.w3.org/2000/svg">
          <defs><linearGradient id="eo-thylacine-fur" x1="0%" y1="0%" x2="100%" y2="0%"><stop offset="0%" stop-color="#b8956a"/><stop offset="50%" stop-color="#a08050"/><stop offset="100%" stop-color="#8b7355"/></linearGradient></defs>
          <rect x="110" y="140" width="18" height="55" rx="7" fill="#7a6045"/>
          <rect x="160" y="145" width="16" height="50" rx="6" fill="#8a7050"/>
          <ellipse cx="200" cy="120" rx="140" ry="50" fill="url(#eo-thylacine-fur)"/>
          <rect x="250" y="145" width="18" height="50" rx="7" fill="#9b8060"/>
          <rect x="295" y="140" width="20" height="55" rx="8" fill="#8b7355"/>
          <ellipse cx="340" cy="100" rx="45" ry="30" fill="#a08050"/>
          <ellipse cx="380" cy="105" rx="25" ry="15" fill="#8b7355"/>
          <ellipse cx="320" cy="75" rx="12" ry="18" fill="#a08050"/>
          <ellipse cx="335" cy="78" rx="10" ry="15" fill="#a08050"/>
          <circle cx="355" cy="95" r="5" fill="#2a1f10"/>
          <path d="M60 120 Q20 130 15 160 Q25 155 60 140" fill="#8b7355"/>
          <rect v-for="(x, j) in [80,100,120,142,165,188,212,235,258,278]" :key="j" :x="x" :y="90 + Math.abs(5-j)*2" width="8" :height="60 - Math.abs(5-j)*2" rx="3" fill="#3d2914" opacity="0.7"/>
        </svg>

        <!-- Baiji -->
        <svg v-if="s.id === 'baiji'" viewBox="0 0 350 120" xmlns="http://www.w3.org/2000/svg">
          <defs><linearGradient id="eo-baiji-body" x1="0%" y1="0%" x2="0%" y2="100%"><stop offset="0%" stop-color="#8fa4b0"/><stop offset="60%" stop-color="#b8c8d0"/><stop offset="100%" stop-color="#e8eef0"/></linearGradient></defs>
          <ellipse cx="175" cy="60" rx="150" ry="40" fill="url(#eo-baiji-body)"/>
          <path d="M320 55 Q350 58 345 62 Q340 68 310 65 Q315 60 320 55" fill="#a0b0b8"/>
          <path d="M160 22 L175 35 L190 25 Z" fill="#7890a0"/>
          <ellipse cx="220" cy="80" rx="30" ry="12" fill="#90a8b5" transform="rotate(-20 220 80)"/>
          <path d="M25 50 Q5 40 10 55 Q15 70 25 65" fill="#7890a0"/>
          <path d="M25 70 Q5 80 10 65 Q15 50 25 55" fill="#7890a0"/>
          <circle cx="300" cy="50" r="4" fill="#1a2530"/>
          <ellipse cx="295" cy="52" rx="25" ry="20" fill="#95a8b2"/>
        </svg>

        <!-- Golden Toad -->
        <svg v-if="s.id === 'golden-toad'" viewBox="0 0 100 80" xmlns="http://www.w3.org/2000/svg">
          <defs><radialGradient id="eo-toad-gold" cx="50%" cy="50%" r="50%"><stop offset="0%" stop-color="#ffc040"/><stop offset="70%" stop-color="#e89820"/><stop offset="100%" stop-color="#c07010"/></radialGradient></defs>
          <ellipse cx="50" cy="50" rx="40" ry="28" fill="url(#eo-toad-gold)"/>
          <ellipse cx="85" cy="45" rx="18" ry="15" fill="#e89820"/>
          <circle cx="90" cy="35" r="8" fill="#1a1208"/><circle cx="90" cy="35" r="4" fill="#ffc040" opacity="0.3"/>
          <circle cx="78" cy="38" r="7" fill="#1a1208"/><circle cx="78" cy="38" r="3" fill="#ffc040" opacity="0.3"/>
          <ellipse cx="70" cy="65" rx="8" ry="5" fill="#c07010"/>
          <ellipse cx="30" cy="68" rx="10" ry="6" fill="#c07010"/>
          <ellipse cx="15" cy="55" rx="12" ry="8" fill="#d88818" transform="rotate(-30 15 55)"/>
          <ellipse cx="45" cy="40" rx="15" ry="8" fill="#ffd060" opacity="0.4"/>
        </svg>


        <!-- Pyrenean Ibex -->
        <svg v-if="s.id === 'pyrenean-ibex'" viewBox="0 0 250 200" xmlns="http://www.w3.org/2000/svg">
          <defs><linearGradient id="eo-ibex-fur" x1="0%" y1="0%" x2="0%" y2="100%"><stop offset="0%" stop-color="#6b5c4a"/><stop offset="100%" stop-color="#4a3c2a"/></linearGradient></defs>
          <rect x="70" y="140" width="16" height="55" rx="5" fill="#3a2c1a"/>
          <rect x="100" y="145" width="14" height="50" rx="5" fill="#4a3c2a"/>
          <ellipse cx="125" cy="120" rx="80" ry="45" fill="url(#eo-ibex-fur)"/>
          <rect x="155" y="145" width="14" height="50" rx="5" fill="#5a4c3a"/>
          <rect x="180" y="140" width="16" height="55" rx="5" fill="#4a3c2a"/>
          <ellipse cx="190" cy="90" rx="30" ry="40" fill="#5a4c3a"/>
          <ellipse cx="210" cy="60" rx="25" ry="20" fill="#5a4c3a"/>
          <ellipse cx="230" cy="68" rx="12" ry="10" fill="#4a3c2a"/>
          <path d="M200 45 Q180 20 150 25 Q140 35 145 45" stroke="#2a2015" stroke-width="8" fill="none" stroke-linecap="round"/>
          <path d="M195 50 Q175 30 155 35 Q148 42 152 50" stroke="#3a3025" stroke-width="6" fill="none" stroke-linecap="round"/>
          <ellipse cx="195" cy="40" rx="8" ry="12" fill="#5a4c3a"/>
          <circle cx="215" cy="55" r="4" fill="#1a1208"/>
          <path d="M220 75 Q225 90 218 95 Q215 85 220 75" fill="#3a3025"/>
          <ellipse cx="45" cy="115" rx="8" ry="12" fill="#4a3c2a"/>
        </svg>

        <!-- Dodo -->
        <svg v-if="s.id === 'dodo'" viewBox="0 0 200 200" xmlns="http://www.w3.org/2000/svg">
          <defs><linearGradient id="eo-dodo-body" x1="0%" y1="0%" x2="100%" y2="100%"><stop offset="0%" stop-color="#8090a0"/><stop offset="50%" stop-color="#606878"/><stop offset="100%" stop-color="#505560"/></linearGradient></defs>
          <ellipse cx="100" cy="130" rx="70" ry="55" fill="url(#eo-dodo-body)"/>
          <ellipse cx="145" cy="90" rx="25" ry="40" fill="#687080"/>
          <ellipse cx="160" cy="55" rx="30" ry="25" fill="#707888"/>
          <path d="M175 50 Q210 55 200 70 Q195 75 180 68 Q175 62 175 50" fill="#c4a85a" stroke="#9a8848" stroke-width="2"/>
          <path d="M180 60 Q190 62 188 68" stroke="#8a7838" stroke-width="1.5" fill="none"/>
          <circle cx="158" cy="48" r="6" fill="#2a2520"/><circle cx="156" cy="46" r="2" fill="#fff" opacity="0.3"/>
          <ellipse cx="80" cy="120" rx="30" ry="18" fill="#5a6270" transform="rotate(-20 80 120)"/>
          <ellipse cx="30" cy="140" rx="15" ry="8" fill="#505560" transform="rotate(30 30 140)"/>
          <ellipse cx="35" cy="130" rx="12" ry="6" fill="#606878" transform="rotate(20 35 130)"/>
          <rect x="80" y="175" width="12" height="25" rx="4" fill="#c4a070"/>
          <rect x="108" y="175" width="12" height="25" rx="4" fill="#c4a070"/>
          <ellipse cx="86" cy="198" rx="10" ry="5" fill="#b89060"/>
          <ellipse cx="114" cy="198" rx="10" ry="5" fill="#b89060"/>
        </svg>

        <!-- Great Auk -->
        <svg v-if="s.id === 'great-auk'" viewBox="0 0 120 180" xmlns="http://www.w3.org/2000/svg">
          <defs><linearGradient id="eo-auk-body" x1="0%" y1="0%" x2="100%" y2="0%"><stop offset="0%" stop-color="#1a1a1a"/><stop offset="50%" stop-color="#2a2a2a"/><stop offset="100%" stop-color="#1a1a1a"/></linearGradient></defs>
          <ellipse cx="60" cy="100" rx="40" ry="65" fill="url(#eo-auk-body)"/>
          <ellipse cx="60" cy="110" rx="28" ry="50" fill="#f0ede5"/>
          <ellipse cx="60" cy="35" rx="25" ry="22" fill="#1a1a1a"/>
          <ellipse cx="70" cy="30" rx="10" ry="8" fill="#f0ede5"/>
          <circle cx="72" cy="30" r="4" fill="#1a1208"/>
          <path d="M80 38 Q95 42 90 50 Q85 48 80 45 Z" fill="#2a2520"/>
          <path d="M82 42 L88 45" stroke="#4a4030" stroke-width="1"/>
          <ellipse cx="35" cy="95" rx="12" ry="35" fill="#222" transform="rotate(10 35 95)"/>
          <rect x="48" y="155" width="8" height="15" rx="3" fill="#2a2520"/>
          <rect x="64" y="155" width="8" height="15" rx="3" fill="#2a2520"/>
          <ellipse cx="52" cy="170" rx="8" ry="4" fill="#1a1510"/>
          <ellipse cx="68" cy="170" rx="8" ry="4" fill="#1a1510"/>
        </svg>

        <!-- Passenger Pigeon -->
        <svg v-if="s.id === 'passenger-pigeon'" viewBox="0 0 180 120" xmlns="http://www.w3.org/2000/svg">
          <defs><linearGradient id="eo-pigeon-body" x1="0%" y1="0%" x2="0%" y2="100%"><stop offset="0%" stop-color="#8090a5"/><stop offset="50%" stop-color="#a5788c"/><stop offset="100%" stop-color="#d8a898"/></linearGradient></defs>
          <path d="M20 65 L5 60 L25 55 L10 50 L35 50" fill="#606878"/>
          <ellipse cx="80" cy="60" rx="50" ry="28" fill="url(#eo-pigeon-body)"/>
          <ellipse cx="60" cy="55" rx="35" ry="18" fill="#7888a0" transform="rotate(-5 60 55)"/>
          <ellipse cx="135" cy="50" rx="20" ry="18" fill="#8090a5"/>
          <circle cx="142" cy="46" r="7" fill="#c83030" opacity="0.6"/>
          <circle cx="142" cy="46" r="4" fill="#2a1510"/>
          <path d="M152 52 Q165 54 160 58 Q155 56 152 52" fill="#2a2520"/>
          <ellipse cx="120" cy="55" rx="12" ry="15" fill="#8070a0" opacity="0.5"/>
          <line x1="70" y1="85" x2="65" y2="110" stroke="#a03030" stroke-width="3"/>
          <line x1="90" y1="85" x2="95" y2="110" stroke="#a03030" stroke-width="3"/>
        </svg>

        <!-- Carolina Parakeet -->
        <svg v-if="s.id === 'carolina-parakeet'" viewBox="0 0 100 130" xmlns="http://www.w3.org/2000/svg">
          <defs><linearGradient id="eo-parakeet-body" x1="0%" y1="0%" x2="0%" y2="100%"><stop offset="0%" stop-color="#4a8848"/><stop offset="100%" stop-color="#386838"/></linearGradient></defs>
          <path d="M45 90 L35 125 L50 120 L55 128 L60 115 L65 125 L55 90" fill="#4a8848"/>
          <ellipse cx="50" cy="65" rx="30" ry="35" fill="url(#eo-parakeet-body)"/>
          <ellipse cx="40" cy="70" rx="22" ry="25" fill="#5a9858" transform="rotate(-10 40 70)"/>
          <ellipse cx="55" cy="28" rx="22" ry="20" fill="#e8a830"/>
          <ellipse cx="62" cy="32" rx="15" ry="14" fill="#d85820"/>
          <circle cx="60" cy="26" r="5" fill="#1a1208"/><circle cx="58" cy="24" r="1.5" fill="#fff" opacity="0.4"/>
          <path d="M72 35 Q82 38 78 48 Q75 45 72 40 Z" fill="#e8d8b0"/>
          <path d="M40 95 L35 110 M40 95 L40 112 M40 95 L45 108" stroke="#787068" stroke-width="2"/>
          <path d="M60 95 L55 110 M60 95 L60 112 M60 95 L65 108" stroke="#787068" stroke-width="2"/>
        </svg>

        <!-- Javan Tiger -->
        <svg v-if="s.id === 'javan-tiger'" viewBox="0 0 350 180" xmlns="http://www.w3.org/2000/svg">
          <defs><linearGradient id="eo-tiger-fur" x1="0%" y1="0%" x2="0%" y2="100%"><stop offset="0%" stop-color="#d89040"/><stop offset="50%" stop-color="#c87830"/><stop offset="100%" stop-color="#b86820"/></linearGradient></defs>
          <path d="M30 100 Q10 90 15 110 Q5 120 20 125 Q15 115 25 110 Q20 105 30 100" fill="#c87830"/>
          <path v-for="(x, j) in [15,20,25]" :key="j" :d="`M${x} ${105+j*5} Q${x+5} ${110+j*4} ${x+2} ${115+j*4}`" stroke="#2a1a0a" stroke-width="2" fill="none"/>
          <rect x="55" y="115" width="22" height="70" rx="8" fill="#a86020"/>
          <rect x="95" y="145" width="20" height="40" rx="7" fill="#b87028"/>
          <ellipse cx="150" cy="100" rx="110" ry="55" fill="url(#eo-tiger-fur)"/>
          <path v-for="(x, j) in [80,110,140,170,200,230]" :key="'s'+j" :d="`M${x} ${60+(j%2)*5} Q${x+8} 100 ${x-5} ${145-(j%2)*5}`" stroke="#2a1a0a" stroke-width="5" fill="none" opacity="0.8"/>
          <ellipse cx="150" cy="130" rx="70" ry="20" fill="#f0e8d8" opacity="0.7"/>
          <rect x="190" y="140" width="20" height="40" rx="7" fill="#d89040"/>
          <rect x="220" y="135" width="22" height="45" rx="8" fill="#c87830"/>
          <ellipse cx="280" cy="85" rx="45" ry="40" fill="#d89040"/>
          <ellipse cx="255" cy="52" rx="12" ry="15" fill="#c87830"/>
          <ellipse cx="255" cy="55" rx="7" ry="9" fill="#1a1208"/>
          <ellipse cx="305" cy="52" rx="12" ry="15" fill="#c87830"/>
          <ellipse cx="305" cy="55" rx="7" ry="9" fill="#1a1208"/>
          <path d="M265 70 Q260 80 268 90" stroke="#2a1a0a" stroke-width="3" fill="none"/>
          <path d="M295 70 Q300 80 292 90" stroke="#2a1a0a" stroke-width="3" fill="none"/>
          <path d="M280 65 L280 75" stroke="#2a1a0a" stroke-width="2"/>
          <ellipse cx="280" cy="100" rx="25" ry="18" fill="#f0e8d8"/>
          <ellipse cx="280" cy="95" rx="8" ry="5" fill="#d85850"/>
          <ellipse cx="265" cy="80" rx="8" ry="6" fill="#e8c848"/><circle cx="265" cy="80" r="3" fill="#1a1208"/>
          <ellipse cx="295" cy="80" rx="8" ry="6" fill="#e8c848"/><circle cx="295" cy="80" r="3" fill="#1a1208"/>
          <path d="M260 100 L240 95 M260 105 L238 108 M260 110 L242 118" stroke="#f0e8d8" stroke-width="1"/>
          <path d="M300 100 L320 95 M300 105 L322 108 M300 110 L318 118" stroke="#f0e8d8" stroke-width="1"/>
        </svg>
      </div>

      <!-- Label -->
      <div class="species-label">
        <div class="species-name">{{ s.name }} <span class="latin">({{ s.latin }})</span></div>
        <div class="species-status">{{ s.status }}</div>
      </div>
    </div>

    <!-- Explanation box (bottom-right) -->
    <div class="explanation">
      <div class="explanation-title">Warum diese Geister?</div>
      <div class="explanation-text">
        Diese Arten — ausgestorben oder fast verschwunden —<br>
        erinnern uns, was auf dem Spiel steht.<br>
        KI hat ökologische Kosten. Unsere Entscheidungen zählen.
      </div>
    </div>
  </div>
</template>

<style scoped>
.extinction-overlay {
  position: absolute;
  inset: 0;
  pointer-events: none;
  z-index: 20;
  overflow: hidden;
}

.floating-species {
  position: absolute;
  display: flex;
  flex-direction: column;
  align-items: center;
  opacity: 0;
  animation:
    fade-in 1.5s ease-out var(--entry-delay) forwards,
    wander-x var(--x-dur) ease-in-out var(--entry-delay) infinite,
    wander-y var(--y-dur) ease-in-out var(--entry-delay) infinite;
}

.svg-wrap {
  width: 100%;
  filter: sepia(20%) contrast(95%) brightness(105%) drop-shadow(0 4px 12px rgba(0,0,0,0.15));
}

.svg-wrap.flip {
  transform: scaleX(-1);
}

.svg-wrap svg {
  width: 100%;
  height: 100%;
}

.species-label {
  margin-top: 4px;
  text-align: center;
  opacity: 0;
  animation: fade-in 1s ease-out calc(var(--entry-delay) + 2s) forwards;
}

.species-name {
  font-family: 'Raleway', sans-serif;
  font-size: 0.5rem;
  font-weight: 600;
  color: #555;
  letter-spacing: 0.02em;
}

.latin {
  font-weight: 400;
  font-style: italic;
  opacity: 0.8;
}

.species-status {
  font-family: 'Raleway', sans-serif;
  font-size: 0.5rem;
  font-weight: 500;
  letter-spacing: 0.08em;
  text-transform: uppercase;
  margin-top: 1px;
  color: #FFA500;
}

@keyframes fade-in {
  from { opacity: 0; transform: scale(0.85); }
  to { opacity: 1; transform: scale(1); }
}

@keyframes wander-x {
  0%    { translate: var(--x0) 0; }
  10%   { translate: var(--x1) 0; }
  20%   { translate: var(--x2) 0; }
  30%   { translate: var(--x3) 0; }
  40%   { translate: var(--x4) 0; }
  50%   { translate: var(--x5) 0; }
  60%   { translate: var(--x6) 0; }
  70%   { translate: var(--x7) 0; }
  80%   { translate: var(--x8) 0; }
  90%   { translate: var(--x9) 0; }
  100%  { translate: var(--x10) 0; }
}

@keyframes wander-y {
  0%    { margin-top: var(--y0); }
  10%   { margin-top: var(--y1); }
  20%   { margin-top: var(--y2); }
  30%   { margin-top: var(--y3); }
  40%   { margin-top: var(--y4); }
  50%   { margin-top: var(--y5); }
  60%   { margin-top: var(--y6); }
  70%   { margin-top: var(--y7); }
  80%   { margin-top: var(--y8); }
  90%   { margin-top: var(--y9); }
  100%  { margin-top: var(--y10); }
}

.explanation {
  position: absolute;
  bottom: 1.5rem;
  right: 1.5rem;
  text-align: right;
  max-width: 260px;
  opacity: 0;
  animation: fade-in 1.5s ease-out 4s forwards;
}

.explanation-title {
  font-family: 'Raleway', sans-serif;
  font-size: 0.65rem;
  font-weight: 600;
  color: #FFA500;
  letter-spacing: 0.08em;
  text-transform: uppercase;
  margin-bottom: 4px;
}

.explanation-text {
  font-family: 'Raleway', sans-serif;
  font-size: 0.6rem;
  font-weight: 400;
  color: #1a1a1a;
  line-height: 1.6;
}

@media (max-width: 768px) {
  .extinction-overlay { opacity: 0.35 !important; }
  .species-label, .explanation { display: none; }
}

@media (prefers-reduced-motion: reduce) {
  .floating-species { animation: fade-in 0.5s ease-out var(--entry-delay) forwards; }
}
</style>
