# Marc Rebillet - Reach Out
use_bpm 133

# Notes -----

# Cm7
def cm7
  play :C4
  play :Eb4
  play :G4
  play :Bb4
  play :C5
end

# Bbm7
def bbm7
  play :Bb4
  play :Db4
  play :F4
  play :Ab4
  play :Bb5
end

# Fm7
def fm7
  play :F4
  play :Ab4
  play :C4
  play :Eb4
  play :F5
end

# ---------


live_loop :kick do
  sample :bd_klub, amp: 2
  sleep 1
end

live_loop :snare do
  sleep 1
  sample :sn_dolf
  sample :perc_snap
  sleep 1
end

live_loop :hh do
  2.times do
    sleep 0.5
    sample :drum_cymbal_closed
    sleep 0.5
  end
  sleep 0.5
  sample :drum_cymbal_closed
  sleep 0.25
  sample :drum_cymbal_closed
  sleep 0.75
  sample :drum_cymbal_closed
  sleep 0.5
end

live_loop :bg do
  use_synth :growl
  cm7
  sleep 4
  
  bbm7
  sleep 4
  
  2.times do
    fm7
    sleep 4
  end
end

live_loop :melody do
  use_synth :piano
  
  5.times do
    cm7
    sleep 0.75
  end
  sleep 0.25
  
  5.times do
    bbm7
    sleep 0.75
  end
  sleep 0.25
  
  2.times do
    5.times do
      fm7
      sleep 0.75
    end
    sleep 0.25
  end
end

live_loop :bass do
  use_synth :fm
  
  5.times do
    play :C3
    sleep 0.75
  end
  sleep 0.25
  
  5.times do
    play :Bb3
    sleep 0.75
  end
  sleep 0.25
  
  2.times do
    5.times do
      play :F3
      sleep 0.75
    end
    sleep 0.25
  end
end



