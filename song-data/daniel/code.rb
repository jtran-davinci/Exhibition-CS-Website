
# Welcome to Sonic Pi
#sample "C:/Users/daniel_silva/Downloads/After Dark (Instrumental).mp3"
define :bass_pattern do
  play :c2
  sleep 0.5
  play :c2
  sleep 0.5
  play :r # rest
  sleep 0.5
  play :g2
  sleep 0.5
  play :gs2
  sleep 0.5
  play :d3
  sleep 0.5
  play :g2
  sleep 0.5
  play :g2
  sleep 0.5
end

use_bpm 122
use_synth :piano
sample "C:/Users/daniel_silva/Downloads/After Dark (Instrumental).mp3"

sleep 58

live_loop :minha_musica do
  bass_pattern
end

sleep 18

live_loop :pulse_kick do
  sample :bd_tek, amp: 0.8, lpf: 90
  sleep 1
end

sleep 28

sample  "C:/Users/daniel_silva/Downloads/After Darktreis.mp3"

sleep 28

live_loop :minha_musica2 do
  sample "C:/Users/daniel_silva/Downloads/Music.mp3"
  sleep 58
end

sleep 58

live_loop :pulse_kick do
  sample :bd_tek, amp: 0.8, lpf: 90
  sleep 1
end
