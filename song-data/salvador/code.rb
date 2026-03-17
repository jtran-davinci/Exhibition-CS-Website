
# El Primer Tonto
# Welcome to Sonic Pi

use_bpm 120
define :measure1 do
  play :a2, sustain: 1
  sleep 1
  play :e2, sustain: 0.5
  sleep 0.5
  play :a2, sustain: 2
  sleep 2
  play :cs4, sustain: 1
  sleep 0.5
  play :a3, release: 0.3
  sleep 0.5
  play :b3, release: 0.3
  sleep 0.5
  play :a3, release: 0.15
  sleep 0.25
  play :gs3, release: 0.15
  sleep 0.25
  play :fs2, sustain: 1
  sleep 1
  play :cs2, sustain: 0.5
  sleep 0.5
  play :fs2, sustain: 2
  sleep 1
end

define :measure2 do
  play :d4, sustain: 1
  sleep 1.5
  play :b3, release: 0.3
  sleep 0.5
  play :cs4, sustain: 1
  sleep 1
  play :d2, sustain: 2
  sleep 2
  play :e2, sustain: 2
  sleep 1
  play :fs3, release: 0.3
  sleep 0.33
  play :a3, release: 0.3
  sleep 0.33
  play :d4, release: 0.3
  sleep 0.34
  play :e3, release: 0.3
  sleep 0.33
  play :gs3, release: 0.3
  sleep 0.33
  play :d4, release: 0.3
  sleep 0.34
end

i = 0

array_notes = [:a2, :cs4, :a3, :b3, :a3, :gs3]
array_sleep = [2, 1.5, 0.5, 0.5, 0.25, 0.25]

i = i + 1

define :array do
  
  array_notes.length.times do |i|
    play array_notes[i], release: 0.3
    sleep array_sleep[i]
  end
end

  live_loop :bass do
    use_synth :bass_foundation
    measure1
  end
  
  sleep 8
  
  live_loop :piano do
    use_synth :piano
    measure2
    stop
  end
  
  sleep 8
  
  live_loop :bell do
    use_synth :dull_bell
    array
  end
  
  sleep 8
  
  live_loop :guitar do
    guitar_sample = "C:/Users/salvador_rojas/Documents/guitar_sample.wav"
    sample guitar_sample, amp: 0.7
    sleep 4
  end
  
  sleep 8
  
amp_level = 1

7.times do
  sample :ambi_choir, amp: amp_level
  amp_level = amp_level - 0.1
  sleep 1
end
