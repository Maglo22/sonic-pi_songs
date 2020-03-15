# New Order - Blue Monday
use_bpm 130

fill = false

# Drum kick
live_loop :kick do
  if fill then
    2.times do
      2.times do
        sample :bd_ada, res: 1, rate: 1, amp: 2
        sample :drum_cymbal_open, finish: 0.120
        sleep 0.7
      end
      sample :bd_ada, res: 1, rate: 1, amp: 2
      sample :drum_cymbal_open, finish: 0.120
      sleep 1
      sample :bd_ada, res: 1, rate: 1, amp: 2
      sample :drum_cymbal_open, finish: 0.120
      sleep 1.5
    end
    fill = false
  else
    sample :bd_ada, res: 1, rate: 1, amp: 2
    sleep 1
    sample :bd_ada, res: 1, rate: 1, amp: 2
    sleep 1
    8.times do
      sample :bd_ada, res: 1, rate: 1, amp: 2
      sleep 0.250
    end
    4.times do
      sample :bd_ada, res: 1, rate: 1, amp: 2
      sleep 1
    end
  end
end

# Hi-hats
live_loop :hh do
  with_fx :level, amp: 1 do
    sleep 0.5
    2.times do
      sample :drum_cymbal_closed
      sleep 0.250
    end
    sample :drum_cymbal_closed
  end # fx end
end # loop end

# Snare
live_loop :sn do
  sleep 1
  sample :sn_dolf, rate: 1.1, amp: 1
  sleep 1
end

# Melody
live_loop :melody do
  use_synth :hoover
  3.times do
    play :F3, amp: 0.7
    sleep 0.5
  end
  
  play :G3, amp: 0.7
  sleep 0.5
  
  3.times do
    play :C3, amp: 0.7
    sleep 0.5
  end
  
  2.times do
    play :D3, amp: 0.7
    sleep 0.5
  end
  
  sleep 0.5 # silence note
  
  2.times do
    play :D3, amp: 0.7
    sleep 0.5
  end
  
  sleep 0.5 # silence note
  
  3.times do
    play :D3, amp: 0.7
    sleep 0.5
  end
end # loop end

# Main synth
g = false # control the change of note for main riff
live_loop :synth do
  use_synth :dsaw
  with_fx :slicer, mix: 0.6 do
    if g then
      2.times do
        play :G2, amp: 1
        sleep 0.5
        play :G3, amp: 1
        sleep 0.5
      end
    else
      2.times do
        play :F2, amp: 1
        sleep 0.5
        play :F3, amp: 1
        sleep 0.5
      end
    end
    
    2.times do
      play :C2, amp: 1
      sleep 0.5
      play :C3, amp: 1
      sleep 0.5
    end
    
    4.times do
      play :D2, amp: 1
      sleep 0.5
      play :D3, amp: 1
      sleep 0.5
    end
  end # fx end
  g = !g
end # loop end

# Bass
live_loop :bass do
  use_synth :fm
  with_fx :level, amp: 1.5 do
    if g then
      2.times do
        play :G2
        sleep 0.5
        play :G3
        sleep 0.5
      end
    else
      2.times do
        play :F2
        sleep 0.5
        play :F3
        sleep 0.5
      end
    end
    
    2.times do
      play :C2
      sleep 0.5
      play :C3
      sleep 0.5
    end
    
    4.times do
      play :D2
      sleep 0.5
      play :D3
      sleep 0.5
    end
  end # fx end
end # loop end















