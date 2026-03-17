
use_bpm 110
define :my_clap_ss do
  use_synth :sc808_clap
  play 50, amp: 4
end
use_synth :prophet
live_loop :drum do
  20.times do
    play :f4; sleep 0.5
    play :f4; sleep 0.25
    play :f4; sleep 0.25
  end
  stop
end
sleep 8


my_clap_ss
use_synth :prophet
play :eb3, sustain: 3
play :bb3, sustain: 3
sleep 3

my_clap_ss
use_synth :prophet
play :g3, sustain: 3
play :c3, sustain: 3
sleep 3

my_clap_ss
use_synth :prophet
play :bb3, sustain: 3
play :f2, sustain: 3
sleep 3

use_synth :prophet
live_loop :bass do
  2.times do
    play :f4, sustain: 2,  amp: 4
    sleep 1
    play :ab4, sustain: 1,  amp: 4
    sleep 4
    play :ab4, sustain: 1,  amp: 4
    sleep 1
    play :bb4, sustain: 1,  amp: 4
    sleep 4
    play :db, sustain: 1,  amp: 4
    sleep 1
    play :c4, sustain: 1,  amp: 4
    sleep 4
    play :c4, sustain: 1,  amp: 4
    sleep 1
    play :bb4, sustain: 1,  amp: 4
    sleep 4
  end
  stop
end
use_synth :prophet
16.times do
  play :ab2, amp: 4
  sleep 0.5
end
16.times do
  play :bb2, amp: 4
  sleep 0.5
end
16.times do
  play :db2, amp: 4
  sleep 0.5
end
16.times do
  play :c2, amp: 4
  sleep 0.5
end
16.times do
  play :bb2, amp: 4
  sleep 0.5
end
