
# Welcome to Sonic Pi

#variables
heartintro = "C:/Users/Mina_Cooper/Downloads/heartintro.wav"
r1end = "C:/Users/Mina_Cooper/Downloads/end.wav"

use_synth :pretty_bell
a = 1

notes = [:cs4, :bs4, :cs4]
n = 0

define :bgnotes do
  play notes[n], amp: a
  sleep 2
end

live_loop :thirdrow do
  5.times do
    5.times do
      bgnotes
    end
    a = a - 0.25
    n = n + 1
  end
  stop
end

play :b4, sustain: 2, amp: 0.5
sleep 1
play :e4, sustain: 2, amp: 0.5
sleep 1
play :b4, sustain: 2, amp: 0.7
sleep 1
play :g4, sustain: 2, amp: 0.7
sleep 1
play :e4, sustain: 2, amp: 0.7
sleep 2

sample heartintro
sleep 4

use_bpm 96
use_synth :pretty_bell

live_loop :firstrow do
  3.times do
    #third measure
    play :e5
    play :c5
    play :g4
    sleep 1
    
    play :d5
    sleep 1
    
    play :c5
    sleep 1
    
    play :b4
    sleep 1
    
    play :a4
    sleep 1
    
    play :g4
    sleep 1
    
    play :a4
    sleep 1
    
    play :b4
    sleep 1
    
    #fourth measure
    play :b4
    sleep 1
    
    play :g4
    sleep  1
    
    play :g4
    sleep  1
    
    play :bs4
    sleep 1
    
    play :bs4
    sleep 1
    
    play :c5
    sleep 1
    
    play :d5
    sleep 1
    
    play :bs4
    sleep 1
  end
  stop
end

sleep 16

live_loop :secondrow do
  3.times do
    #third measure
    play :e4, sustain: 2
    play :cs4, sustain: 2
    play :a3, sustain: 2
    sleep 2
    
    play :e4, sustain: 0.5
    play :cs4, sustain: 0.5
    play :a3, sustain: 0.5
    sleep 0.5
    
    play :cs4, sustain: 1.5
    play :gs3, sustain: 1.5
    play :d3, sustain: 1.5
    sleep 1.5
    
    #fourth measure
    play :f4
    play :b3
    play :gs3
    sleep 1
    
    play :gs3
    sleep 1
    
    play :f4
    play :b3
    play :gs3
    sleep 1
    
    play :gs3
    sleep 1
  end
  stop
end

sleep 30
sample r1end
