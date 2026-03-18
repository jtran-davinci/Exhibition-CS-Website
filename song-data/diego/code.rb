use_bpm 30
live_loop :custom_song do
  sample :ambi_glass_hum, beat_stretch: 15
 
  sleep 3.5
 
  live_loop :back do
    sample :loop_drone_g_97, beat_stretch: 16, amp: 1
    sleep 16
  end
 
  sleep 2
 
  live_loop :background do
    sample :bass_hard_c, beat_stretch: 3, amp: 1
    sleep 6
  end
 
  sleep 2
 
  live_loop :beat do
    sample :bd_haus
    sleep 1
    sample :elec_ping
    sleep 1
    sample :perc_impact1
    sleep 1
    sample :bass_hit_c
    sleep 1
  end
 
  sleep 2
 
  live_loop :drum do
    sample :drum_cymbal_closed, amp: 2
    sleep 0.5
    sample :drum_bass_hard
    sleep 1
    sample :drum_cymbal_closed, amp: 2
    sleep 0.5
    sample :drum_bass_hard
    sleep 2
  end
 
  sleep 4

  live_loop :melody do
    sample :loop_electric, beat_stretch: 2
    sleep 2
    sample :loop_mika
    sleep 0.5
    sample :loop_perc2
    sleep 0.5
    sample :loop_electric, beat_stretch: 1
    sleep 1
  end
  stop
  sleep 9
end