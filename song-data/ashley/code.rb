use_bpm 135
use_synth :piano

define :main1 do
  play :E3,amp: 0.125
  play :A2,amp: 0.125
  sleep 0.5
  play :E3,amp: 0.25
  play :A2,amp: 0.25
  sleep 0.5
  play :E3,amp: 0.75
  play :A2,amp: 0.75
  sleep 0.5
  play :E3,amp: 1.2
  play :A2,amp: 1.2
  sleep 0.5
end
define :first_part do |n1, n2, n3, n4|
  play n1
  play n2
  sleep 1
  
  play n3
  play n4
  sleep 1
end
# VARIABLES TO STORE SAMPLES
other_drums ="C:/Users/ashley_sutton/Downloads/finaldrums.mp3"
final_part = "C:/Users/ashley_sutton/Downloads/finalpart.wav"
live_loop :my_song do
  5.times do
    3.times do main1
      sleep 0.5
      play :g2
      play :c2
      sleep 0.5
      play :g2
      play :c2
      sleep 1
    end
    
    first_part(:D3, :G2, :F3, :B2)
    first_part(:C3, :F2, :B2, :E2)
  end
  stop
end
sleep 16
live_loop :drums do
  64.times do
    sample :drum_bass_soft
    sleep 1
  end
  stop
end
sleep 30
live_loop :second_drums do
  2.times do
    sample other_drums,amp: 3
    #sample_duration calculates how long my custom song is so now my live loop waits til the song ends.
    sleep sample_duration (other_drums)
  end
  stop
end
sleep 34
sample final_part, amp: 0.5
sleep 1
sample final_part, amp: 0.25
sleep 1
sample final_part, amp: 0.125
sleep 1
sample final_part, amp: 0.0625
sleep 1
