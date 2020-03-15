# Kendrick Lamar - Humble
use_bpm 150
use_synth :piano

live_loop :kick do
  sample :drum_bass_hard, amp: 2
  sleep 0.5
  sample :drum_bass_hard, amp: 2
  sleep 1
  sample :drum_bass_hard, amp: 2
  sleep 2
  sample :drum_bass_hard, amp: 2
  sleep 1
  sample :drum_bass_hard, amp: 2
  sleep 0.5
  sample :drum_bass_hard, amp: 2
  sleep 1.5
  sample :drum_bass_hard, amp: 2
  sleep 1.5
end

live_loop :snare do
  sleep 2
  sample :sn_dolf, amp: 1.2
  sample :perc_snap, amp: 1.5
  sleep 2
end

live_loop :hh do
  sample :drum_cymbal_closed, amp: 1.5
  sleep 1
end

second_octave = false

live_loop :melody do
  with_fx :level, amp: 2 do
    play :Eb2
    play :Eb3 if second_octave
    sleep 1
    play :Eb2
    play :Eb3 if second_octave
    sleep 2
    
    play :E2
    play :E3 if second_octave
    sleep 1
    
    play :Eb2
    play :Eb3 if second_octave
    sleep 1
    
    play :Ab1
    play :Ab2 if second_octave
    sleep 0.5
    play :Ab1
    play :Ab2 if second_octave
    sleep 1
    play :Ab1
    play :Ab2 if second_octave
    sleep 0.5
    
    play :E2
    play :E3 if second_octave
    sleep 1
  end
end


