
#custom song project
# VARIABLES TO STORE SAMPLES
mylife = "C:/Users/romeo_pearson/Downloads/In My Life (Remastered 2009).wav"
letbe = "C:/Users/romeo_pearson/Downloads/The Beatles - Let it be (Isolated Vocals).wav"
pianoNotesList = [:e4,:g4,:e4,:g4,:g4,:b3,:g4,:b3,:c4,:e4,:c4,:e4,:a3,:e4,:a3,:d4,:e4,:g3,:e4,:g3,:g4,:b3,:g4,:b3]
index = 0
#define function
define :notesb3g4 do
  play :b3
  play :g4
end
#instrument
use_synth :piano
use_bpm 144
#let it be
live_loop :top do
  #mes1
  12.times do
    play pianoNotesList[index]
    index = index + 1
    play pianoNotesList[index]
    index = index + 1
    sleep 2
  end
  #mes7
  play :f4
  play :a4
  sleep 2
  play :e4
  play :g4
  sleep 1
  play :d4
  play :f4
  sleep 1
  sample letbe, amp: 6
  #mes8
  play :c4
  play :e4
  sleep 4
  stop
end
sleep 16
use_synth :sine
sineNotesList = [:c2,:g1,:f1,:c2,:g2,:g2]
sleepList = [4,4,4,3,0.5,0.5]
i = 0
amp = 8
6.times do
  play sineNotesList[i], amp: amp
  sleep sleepList[i]
  i = i + 1
  amp = amp - 1
end
#in my life mes1
live_loop :guitartop do
  use_synth :pluck
  use_bpm 103
  play :c4
  sleep 1
  play :a4
  sleep 1
  play :c4
  sleep 0.5
  play :d4
  sleep 0.5
  play :e4
  sleep 0.5
  notesb3g4
  sleep 0.5
  #mes2
  notesb3g4
  sleep 4
  #mes3
  play :c4
  sleep 1
  play :a4
  sleep 1
  play :c4
  sleep 0.5
  play :d4
  sleep 0.5
  play :e4
  sleep 0.5
  notesb3g4
  sleep 0.5
  stop
end
live_loop :guitarbotom do
  use_synth :pluck
  use_bpm 103
  #mes1
  play :a3
  sleep 4
  #mes2
  sleep 1
  play :e2
  sleep 1
  play :e3
  sleep 1
  play :e2
  sleep 1
  #mes3
  play :a2
  sleep 4
  stop
end
sleep 16
sample mylife, amp: 2
