
tempo = 60



in_thread do
  play_pattern chord(:c, :maj9), attack: 0.25, release: 1
  play_pattern chord(:d, :maj9), attack: 0.25, release: 1
  play_pattern chord(:e, :maj9), attack: 0.25, release: 1
end

in_thread do
  play chord(:c, :maj9), attack: 0.25, release: 5
  sleep 5
  play chord(:d, :maj9), attack: 0.25, release: 5
  sleep 5
  play chord(:e, :maj9), attack: 0.25, release: 5
end

sleep 15


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

in_thread do
  2.times do
    play chord(:g3, :maj9), attack: 0.25, release: 1.5
    sleep(2)
    play chord(:c3, :maj9), attack: 0.25, release: 1.5
    sleep(2)
    play chord(:d3, :maj9), attack: 0.25, release: 1.5
    sleep(2)
    play chord(:g3, :maj9), attack: 0.25, release: 0.5
    sleep(0.5)
    play chord(:g3, :minor7), attack: 0.25, release: 0.5
    sleep(0.5)
    play chord(:d3, :maj9), attack: 0.25, release: 0.5
    sleep(0.5)
    play chord(:c3, :maj9), attack: 0.25, release: 0.5
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









