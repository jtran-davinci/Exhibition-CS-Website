#Passionfruit by Drake
passion = "C:/Users/auria_moore/Documents/Audacity/Passionfruit.wav"

use_bpm 120

highNotes = [:fs5, :cs5, :b4, :fs5, :as4, :as4, :gs4]
i = 0

lowNotes = [:es3, :b4, :cs4, :cs3, :b4, :cs4,]
i = 0

highSleep = [1, 5, 2, 1, 4, 1, 2]
i = 0

lowSleep = [0.75, 0.25, 0.5, 0.5, 0.75, 0.25, 0.5, 0.5]
i = 0

define :high_notes do
  #total sleep = 16
  play :fs5, amp: 4
  sleep 1
  play :cs5, amp: 4
  sleep 5
  play :b4, amp: 4
  sleep 2
  play :fs5, amp: 4
  sleep 1
  play :as4, amp: 4
  sleep 4
  play :as4, amp: 4
  sleep 1
  play :gs4, amp: 4
  sleep 2
end

define :low_notes do |changing_note|
  #total sleep = 16
  4.times do
    play :es3, amp: 4
    sleep 0.75
    play :b4, amp: 4
    sleep 0.25
    sleep 0.5
    play :cs4, amp: 4
    sleep 0.5
  end
  4.times do #:cs3 is the changing note
    play changing_note, amp: 4
    sleep 0.75
    play :b4, amp: 4
    sleep 0.25
    sleep 0.5
    play :cs4, amp: 4
    sleep 0.5
  end
end

define :background_noise do
  use_synth :dark_ambience
  with_fx :reverb, mix: 0.6, room: 0.9 do
    play chord(:bb3, :minor), sustain: 4, release: 4, amp: 4
    sleep 4
    play chord(:gb3, :major), sustain: 4, release: 4, amp: 4
    sleep 4
    play chord(:ab3, :major), sustain: 4, release: 4, amp: 4
    sleep 4
    sample :ambi_choir, rate: 0.3, amp: 1.5, attack: 2
    sleep 4
  end
end

notes = 21
high_note = 108
use_synth :piano



#-------------------------music starts here-------------------------#

background_noise
87.times do
  play high_note
  sleep 0.125
  high_note = high_note - 1
end

high_notes
sleep 0.25
low_notes :cs3


sample passion

live_loop :aura do
  4.times do
    background_noise
  end
  stop
end

4.times do
  high_notes
  sleep 0.25
  low_notes :cs3
end

play :c2, sustain: 3
play :e2, sustain: 4
play :g2, sustain: 2
play :b2, sustain: 2

stop