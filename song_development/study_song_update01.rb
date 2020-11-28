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
    4.times do
      play chord(:g, :maj9), attack: 0.25, release: 0.25
      sleep(0.5)
    end
    4.times do
      play chord(:c, :maj9), attack: 0.25, release: 0.25
      sleep(0.5)
    end
    4.times do
      play chord(:d, :maj9), attack: 0.25, release: 0.25
      sleep(0.5)
    end
    play chord(:g, :maj9), attack: 0.25, release: 0.25
    sleep(0.5)
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
  sample :drum_snare_hard, attack: 0.25, release: 0.25
  sleep 0.5
  sample :drum_snare_hard, attack: 0.25, release: 0.25
  sleep 0.5
  sample :drum_snare_hard, attack: 0.25, release: 0.25
  sleep 0.5
  sample :drum_snare_hard, attack: 0.25, release: 0.25
  sleep 0.5
end


sleep 8
in_thread do
  2.times do
    play chord(:c, :maj9), attack: 0.25, release: 0.25
    sleep(0.5)
    sample :drum_snare_hard, attack: 0.25, release: 0.25
    sleep 0.5
  end
  2.times do
    play chord(:d, :maj9), attack: 0.25, release: 0.25
    sleep(0.5)
    sample :drum_snare_hard, attack: 0.25, release: 0.25
    sleep 0.5
  end
  2.times do
    play chord(:e, :maj9), attack: 0.25, release: 0.25
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
  4.times do
    play chord(:c, :maj9), attack: 0.25, release: 0.25
    sleep(0.5)
  end
  4.times do
    play chord(:d, :maj9), attack: 0.25, release: 0.25
    sleep(0.5)
  end
  4.times do
    play chord(:e, :maj9), attack: 0.25, release: 0.25
    sleep(0.5)
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
  4.times do
    play chord(:c, :maj9), attack: 0.25, release: 0.25
    sleep(0.5)
  end
  4.times do
    play chord(:d, :maj9), attack: 0.25, release: 0.25
    sleep(0.5)
  end
  4.times do
    play chord(:e, :maj9), attack: 0.25, release: 0.25
    sleep(0.5)
  end
  play chord(:f, :maj9), attack: 0.25, release: 0.25
  sleep(0.5)
  play chord(:f, :maj9), attack: 0.25, release: 0.25
  sleep(0.5)
  play chord(:g, :maj9), attack: 0.25, release: 0.25
  sleep(0.5)
  play chord(:a, :maj9), attack: 0.25, release: 0.25
end





