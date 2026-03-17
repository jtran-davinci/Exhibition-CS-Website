
# B2b
#my code is not DRY yet!

# 1 sleep = 1 beat = 1

# define samples
bwow_main = "C:/Users/lindsey_giron/Downloads/b2b_bwow1.wav"
start = "C:/Users/lindsey_giron/Downloads/b2b_start.wav"
clap = "C:/Users/lindsey_giron/Downloads/clap.wav"

# define functions

use_bpm 60
# starting note
sample start, beat_stretch: 1
sleep 1

#live_loop :clap do
# sample :drum_heavy_kick
#sleep 1
#sample clap
#sleep 1
#end

# main
live_loop :bwow do
  4.times do
    sample bwow_main
    sleep sample_duration bwow_main
    sample bwow_main
    sleep sample_duration bwow_main
    sample bwow_main
    sleep sample_duration bwow_main
    sample bwow_main
    sleep sample_duration bwow_main
    sample bwow_main
    sleep sample_duration bwow_main
    sample bwow_main
    sleep 0.1
  end
  stop
end

sleep 6.75

# vocals
use_synth :saw
# Db = 73 #dsaw #winwood_lead
amp = 0.1

4.times do
  play :fs4, amp: amp
  sleep 0.3
  amp = amp + 0.05
  play :fs4, amp: amp
  sleep 0.2
  amp = amp + 0.05
end


3.times do
  play :fs4
  sleep 0.3
  play :fs4
  sleep 0.2
end

live_loop :back2 do
  play :fs4
  sleep 0.15
  
  play :B
  sleep 0.15
  play 73
  sleep 0.15
  play :Bb
  sleep 0.3
  
  5.times do
    play :fs4
    sleep 0.15
  end
  sleep 0.1
  
  play :Ab
  sleep 0.2
  play :Bb
  sleep 0.25
  play :Db
  sleep 0.15
  play :Eb
  sleep 0.1
  play :Bb
  sleep 0.4
  
  5.times do
    play :fs4
    sleep 0.15
  end
  sleep 0.1
  
  play :Ab
  sleep 0.2
  play :Bb
  sleep 0.2
  play :fs4
  sleep 0.2
  play :Ab
  sleep 0.4
  
  5.times do
    play :fs4
    sleep 0.15
  end
  sleep 0.1
  
  play :Ab
  sleep 0.15
  play :Bb
  sleep 0.15
  play :F
  sleep 0.3
  play :F
  sleep 0.15
  play :Fs4
  sleep 0.5
end
sleep 0.5

# backbackbackback

# beat drop
