live_loop :loop do
    5.times do
        sample :glitch_robot1
        sleep 1.3
        sample :ambi_piano
        sleep 1.6
        sample :ambi_glass_hum
        sample :ambi_sauna, beat_stretch: 1.5, amp: 1
        sample :ambi_lunar_land
        sleep 1.5
        sample :ambi_swoosh, amp: 2
        sample :ambi_soft_buzz, amp: 1
        sleep 1.5
        sample :arovane_beat_e
        sample :bass_hard_c, beat_stretch: 11, amp: 1
        sleep 3
        sample :arovane_beat_a
    end
    stop
end