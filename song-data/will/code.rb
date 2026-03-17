#Billie Jean beginning by Micheal Jackson
use_bpm 117
use_synth :piano

#Variable storage
heehee = "C:/Users/William_Murphy III/Desktop/HeeHee.wav"
#Array
pianoNotes = [:fs2,:cs2,:e2,:fs2,:e2,:cs2,:b1,:cs2]
p = 0


#FUNCTION
define :billienotes do
  
end

#VARIABLE with CUSTOM SAMPLE and AMP
a = 1
4.times do
  sample heehee, amp: a
  sleep 1.5
  a = a - 0.3
end



live_loop :billie_jean do
  8.times do
    play(pianoNotes[p])
    sleep 0.5
    p = p + 1
  end
  p = 0
end

sleep 8

live_loop :drums do
  sample :drum_cymbal_closed
  sleep 2
end

sleep 8

live_loop :drums2 do
  sample :drum_snare_hard
  sleep 4
end