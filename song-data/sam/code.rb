
use_bpm 177
drum_song ="C:/Users/Samuel_Villa/Downloads/lastdrum.mp3"

define :measure1 do
  play :bb3
  sleep 1
  play :bb3
  sleep 1
  play :g3
  sleep 1
  play :g3
  sleep 0.5
  play :g3
  sleep 0.5
end


define :measure2 do
  play :bb3
  sleep 0.5
  play :bb3
  sleep 1
  play :g3
  sleep 1
  play :g3
  sleep 0.5
  play :g3
  sleep 0.5
  play :g3
  sleep 0.5
end


define :measure3 do
  
  play :bb3
  sleep 1
  play :bb3
  sleep 1
  play :e3
  sleep 1
  play :e3
  sleep 0.5
  play :e3
  sleep 0.5
end

define :measure4 do
  
  play :bb3
  sleep 0.5
  play :bb3
  sleep 1
  play :e3
  sleep 1
  play :e3
  sleep 0.5
  play :e3
  sleep 0.5
  play :g3
  sleep 0.5
end


define :measure5 do
  
  play :bb3
  sleep 0.5
  play :bb3
  sleep 1
  play :e3
  sleep 1
  play :e3
  sleep 0.5
  play :e3
  sleep 0.5
  play :g3
  sleep 0.5
end

define :measure6 do
  
  play :bb3
  sleep 0.5
  play :bb3
  sleep 1
  play :e3
  sleep 1
  play :e3
  sleep 0.5
  play :e3
  sleep 0.5
  play :g3
  sleep 0.5
end



#24 beats total
live_loop :strokes do
  3.times do
    measure1
    measure2
    measure3
    measure4
    measure5
    measure6
    print ("looping")
  end
  stop
end

sleep 24

live_loop :drums do
  6.times do
    sample drum_song
    sleep 8
  end
  stop
end

sleep 24

live_loop :requirements do
  sample :ambi_drone, beat_stretch: 24, amp: 2
  sleep 24
  stop
end
