
# Start of song
in_thread do
  use_synth :dark_ambience
  4.times do
    play_pattern chord((ring :g, :g, :c, :d).tick, :maj9), attack: 1, release: 3
  end
end

sleep 21

# Start of Chorus 1

in_thread do
  2.times do
    13.times do
      play chord((ring :g, :g, :g, :g, :c, :c, :c, :c, :d, :d, :d, :d, :g).tick, :maj9), attack: 0.25, release: 0.25
      sleep 0.5
    end
    play chord(:g, :minor7), attack: 0.25, release: 0.25
    sleep(0.5)
    play chord(:d, :maj9), attack: 0.25, release: 0.25
    sleep(0.5)
    play chord(:c, :maj9), attack: 0.25, release: 0.25
    sleep(0.5)
  end
end

sleep 8

in_thread do
  6.times do
    sleep 0.5
    sample :drum_snare_hard, attack: 0.25, release: 0.25
    sleep 0.5
  end
  sleep 0.25
  4.times do
    sample :drum_snare_hard, attack: 0.25, release: 0.25
    sleep 0.5
  end
end

sleep 8


in_thread do
  6.times do
    play chord((ring :c, :c, :d, :d, :e, :e,).tick, :maj9), attack: 0.25, release: 0.25
    sleep(0.5)
    sample :drum_snare_hard, attack: 0.25, release: 0.25
    sleep 0.5
  end
  play chord(:f, :maj9), attack: 0.25, release: 0.25
  sleep(0.5)
  play chord(:f, :maj9), attack: 0.25, release: 0.25
  sleep(0.5)
  play chord(:g, :maj9), attack: 0.25, release: 0.25
  sleep(0.5)
  play chord(:a, :maj9), attack: 0.25, release: 0.25
end

sleep 8

in_thread do
  16.times do
    play chord((ring :c, :c, :c, :c, :d, :d, :d, :d, :e, :e, :e, :e, :f, :f, :g, :a).tick, :maj9), attack: 0.25, release: 0.25
    sleep(0.5)
  end
end

sleep 8

# Start of Bridge 1

in_thread do
  12.times do
    play chord((ring :g, :g, :g, :g, :c, :c, :c, :c, :d, :d, :d, :d).tick, :maj9), attack: 0.25, release: 1
    sleep(1)
  end
  play_pattern chord(:g, :maj9), attack: 0.25, release: 1
  play_pattern chord(:g2, :major7), attack: 0.25, release: 1
end

sleep 16

in_thread do
  3.times do
    play chord((ring :g, :d, :c).tick, :maj9), attack: 1, release: 2
    sleep 2
  end
end

in_thread do
  3.times do
    sleep 1
    sample :drum_snare_hard, attack: 0.25, release: 0.25
    sleep 1
  end
end

sleep 6

in_thread do
  3.times do
    play_pattern chord((ring :c, :d, :e).tick, :maj9), attack: 0.25, release: 1
  end
end

in_thread do
  3.times do
    play chord((ring :c, :d, :e).tick, :maj9), attack: 0.25, release: 5
    sleep 5
  end
end

sleep 15

# Start of Chorus 2 -- includes "improv" and an aspect of randomness.

in_thread do
  2.times do
    13.times do
      play chord((ring :g, :g, :g, :g, :c, :c, :c, :c, :d, :d, :d, :d, :g).tick, :maj9).choose, attack: 0.25, release: 0.25
      sleep 0.5
    end
    play chord(:g, :minor7).choose, attack: 0.25, release: 0.25
    sleep(0.5)
    play chord(:d, :maj9).choose, attack: 0.25, release: 0.25
    sleep(0.5)
    play chord(:c, :maj9).choose, attack: 0.25, release: 0.25
    sleep(0.5)
  end
end

in_thread do
  2.times do
    3.times do
      play chord((ring :g3, :c3, :d3).tick, :maj9), attack: 0.25, release: 1.5
      sleep(2)
    end
    play chord(:g3, :maj9), attack: 0.25, release: 0.4
    sleep(0.5)
    play chord(:g3, :minor7), attack: 0.25, release: 0.4
    sleep(0.5)
    play chord(:d3, :maj9), attack: 0.25, release: 0.4
    sleep(0.5)
    play chord(:c3, :maj9), attack: 0.25, release: 0.4
    sleep(0.5)
  end
end

in_thread do
  12.times do
    sample :drum_snare_hard, attack: 0.25, release: 0.25
    sleep 0.25
    sample :drum_snare_hard, attack: 0.25, release: 0.25
    sleep 0.75
  end
  sleep 0.25
  4.times do
    sample :drum_snare_hard, attack: 0.25, release: 0.25
    sleep 0.5
  end
end

sleep 8

in_thread do
  12.times do
    sleep 0.5
    sample :drum_snare_hard, attack: 0.25, release: 0.25
  end
  sleep 0.25
  4.times do
    sample :drum_snare_hard, attack: 0.25, release: 0.25
    sleep 0.5
  end
end

sleep 8

# Start of Bridge 2 -- different than the first, and introduces slower elements

in_thread do
  2.times do
    4.times do
      play (ring :a4, :fs4, :b3, :g3).tick, release: 0.25
      play (ring :a3, :fs4, :b2, :g3).look, release: 0.25
      sleep 0.25
    end
  end
  4.times do
    play (ring :a4, :fs4, :b3, :g3).tick, release: 0.5
    play (ring :a3, :fs3, :b2, :g2).look, release: 0.25
    sleep 0.5
  end
  2.times do
    4.times do
      play (ring :a4, :fs4, :b3, :g3).tick, release: 0.25
      play (ring :a4, :fs3, :b3, :g2).look, release: 0.25
      sleep 0.25
    end
  end
  4.times do
    play (ring :a4, :fs4, :b3, :g3).choose, release: 0.25
    play (ring :a4, :fs4, :b3, :g3).choose, release: 0.25
    sleep 0.5
  end
end


sleep 8

in_thread do
  hold = 1
  6.times do
    play_pattern chord((ring :c, :d, :e, :f, :g, :a).tick, :major7), release: hold
    hold += 1
  end
end

sleep 24

in_thread do
  use_synth :dark_ambience
  4.times do
    play_pattern chord((ring :g, :g, :c, :d).tick, :maj9), attack: 1, release: 3
  end
end

sleep 21

in_thread do
  use_synth :dark_ambience
  12.times do
    play chord((ring :g, :g, :g, :g, :c, :c, :c, :c, :d, :d, :d, :d).tick, :maj9), attack: 1, release: 3
    sleep(2)
  end
  play_pattern chord(:g, :maj9), attack: 0.25, release: 2
  play_pattern chord(:g2, :major7), attack: 0.25, release: 2
end

in_thread do
  use_synth :dark_ambience
  12.times do
    play chord((ring :g, :g, :g, :g, :c, :c, :c, :c, :d, :d, :d, :d).tick, :maj9).choose, attack: 0.25, release: 2
    sleep(2)
  end
  play_pattern chord(:g2, :maj9), attack: 0.25, release: 2
  play_pattern chord(:g3, :major7), attack: 0.25, release: 2
end

sleep 32

in_thread do
  use_synth :dark_ambience
  12.times do
    play (ring :g3, :b3, :fs4, :a4, :c, :e, :g, :b, :d3, :a4, :cs5, :fs5).tick, attack: 1, release: 6
    sleep 2
  end
end
sleep 26

# Start of Chorus 3 -- more reflective of the first chorus, but incorportates more depth of sound

in_thread do
  2.times do
    13.times do
      play chord((ring :g, :g, :g, :g, :c, :c, :c, :c, :d, :d, :d, :d, :g).tick, :maj9), attack: 0.25, release: 0.25
      sleep 0.5
    end
    play chord(:g, :minor7), attack: 0.25, release: 0.25
    sleep(0.5)
    play chord(:d, :maj9), attack: 0.25, release: 0.25
    sleep(0.5)
    play chord(:c, :maj9), attack: 0.25, release: 0.25
    sleep(0.5)
  end
end

in_thread do
  2.times do
    13.times do
      play chord((ring :g3, :g3, :g3, :g3, :c3, :c3, :c3, :c3, :d3, :d3, :d3, :d3, :g3).tick, :maj9), attack: 0.25, release: 0.25
      sleep 0.5
    end
    play chord(:g3, :minor7), attack: 0.25, release: 0.25
    sleep(0.5)
    play chord(:d3, :maj9), attack: 0.25, release: 0.25
    sleep(0.5)
    play chord(:c3, :maj9), attack: 0.25, release: 0.25
    sleep(0.5)
  end
end
sleep 8
in_thread do
  6.times do
    sleep 0.5
    sample :drum_snare_hard, attack: 0.25, release: 0.25
    sleep 0.5
  end
  sleep 0.25
  4.times do
    sample :drum_snare_hard, attack: 0.25, release: 0.25
    sleep 0.5
  end
end

sleep 8

in_thread do
  6.times do
    play chord((ring :c, :c, :d, :d, :e, :e,).tick, :maj9), attack: 0.25, release: 0.25
    sleep(0.5)
    sample :drum_snare_hard, attack: 0.25, release: 0.25
    sleep 0.5
  end
  play chord(:f, :maj9), attack: 0.25, release: 0.25
  sleep(0.5)
  play chord(:f, :maj9), attack: 0.25, release: 0.25
  sleep(0.5)
  play chord(:g, :maj9), attack: 0.25, release: 0.25
  sleep(0.5)
  play chord(:a, :maj9), attack: 0.25, release: 0.25
end

in_thread do
  2.times do
    play chord(:c3, :maj9), attack: 0.25, release: 1.5
    sleep(2)
    play chord(:d3, :maj9), attack: 0.25, release: 1.5
    sleep(2)
    play chord(:e3, :maj9), attack: 0.25, release: 1.5
    sleep(2)
    4.times do
      play chord((ring :f3, :f3, :g3, :a3).tick, :maj9), attack: 0.25, release: 0.4
      sleep(0.5)
    end
  end
end

sleep 8

in_thread do
  16.times do
    play chord((ring :c, :c, :c, :c, :d, :d, :d, :d, :e, :e, :e, :e, :f, :f, :g, :a).tick, :maj9), attack: 0.25, release: 0.25
    sleep(0.5)
  end
end

sleep 8

# Start of Bridge 3 -- the ending

in_thread do
  12.times do
    play chord((ring :g, :g, :g, :g, :c, :c, :c, :c, :d, :d, :d, :d).tick, :maj9), attack: 0.25, release: 1
    sleep(1)
  end
  12.times do
    play chord((ring :g, :g, :g, :g, :c, :c, :c, :c, :d, :d, :d, :d).tick, :maj9), attack: 0.25, release: 1
    sleep(1)
  end
  play_pattern chord(:g, :maj9), attack: 0.25, release: 1
  play_pattern chord(:g2, :major7), attack: 0.25, release: 1
end
in_thread do
  3.times do
    play_pattern chord((ring :g3, :c3,:d3).tick, :major7), attack: 0.25, release: 1
  end
  3.times do
    play_pattern chord((ring :g3, :c3,:d3).tick, :major7).reverse, attack: 0.25, release: 1
  end
  play_pattern chord(:g, :maj9), attack: 0.25, release: 1
  play_pattern chord(:g2, :major7), attack: 0.25, release: 1
end
sleep 28
in_thread do
  3.times do
    play chord((ring :g, :d, :c).tick, :maj9), attack: 1, release: 2
    sleep 2
  end
end
in_thread do
  3.times do
    sleep 1
    sample :drum_snare_hard, attack: 0.25, release: 0.25
    sleep 1
  end
end
sleep 6
in_thread do
  3.times do
    play chord((ring :c, :d, :e).tick, :maj9).choose
    sleep 5
  end
end
in_thread do
  3.times do
    play chord((ring :c, :d, :e).tick, :maj9), attack: 0.25, release: 5
    sleep 5
  end
end