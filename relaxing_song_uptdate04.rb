# Welcome to Sonic Pi
tempo = 60

in_thread do
  use_synth :dark_ambience
  play_pattern chord(:g, :maj9), attack: 1, release: 3
  play_pattern chord(:g, :maj9), attack: 1, release: 3
  play_pattern chord(:c, :maj9), attack: 1, release: 3
  play_pattern chord(:d, :maj9), attack: 1, release: 3
end

sleep 21

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

in_thread do
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

sleep 15

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



