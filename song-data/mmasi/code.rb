
# no_surprises
sample "C:/Users/faNet/Downloads/interstellar2.mp3"

use_synth :fm
live_loop :bass do
  play :f2, release: 2, amp: 0.5
  sleep 2
  play :f2, release: 2, amp: 0.5
  sleep 0.5
  play :f2, release: 2, amp: 0.5
  sleep 1.5
  play :f2, release: 2, amp: 0.5
  sleep 0.5
  play :bb2, release: 1, amp: 0.5
  sleep 0.5
  play :bb2, release: 1, amp: 0.5
  sleep 1
  play :a2, release: 1, amp: 0.5
  sleep 1
  play :f2, release: 2, amp: 0.5
  sleep 2
  play :f2, release: 2, amp: 0.5
  sleep 2
  play :f2, release: 2, amp: 0.5
  sleep 0.5
  play :f2, release: 2, amp: 0.5
  sleep 1.5
  
end
use_transpose +5
use_synth :blade
live_loop :main do
  play :A, sustain: 0.01
  sleep 1
  play :C, sustain: 0.01
  sleep 1
  play :F, sustain: 0.01
  sleep 1
  play :C, sustain: 0.01
  sleep 1
  play :A, sustain: 0.01
  sleep 1
  play :C, sustain: 0.01
  sleep 1
  play :F, sustain: 0.01
  sleep 1
  play :C, sustain: 0.01
  sleep 1
  play :A, sustain: 0.01
  sleep 1
  play :C, sustain: 0.01
  sleep 1
  play :F, sustain: 0.01
  sleep 1
  play :C, sustain: 0.01
  sleep 1
  play :bb4, sustain: 0.01
  sleep 1
  play :db, sustain: 0.01
  sleep 1
  play :F, sustain: 0.01
  sleep 1
  play :G, sustain: 0.01
  sleep 1
  play :A, sustain: 0.01
  sleep 1
  play :C, sustain: 0.01
  sleep 1
  play :F, sustain: 0.01
  sleep 1
  play :C, sustain: 0.01
  sleep 1
end
sleep 16
use_synth :prophet
use_transpose +5
live_loop :backing do
  play :F
  sleep 0.5
  play :F
  sleep 0.5
  play :C, amp: 1
  play :F, amp: 1
  play :G, amp: 1
  sleep 1
 
end
