# Author: Lydia Pitts
# CSCI 3725: Computational Creativity
# Mission 6: Poetry Slam
# Last Edited: Nov 28, 2020
# 
# The purpose of this project is to write a song that will supplement a calming video
# to help CSCI 1101 students prepare for their exam by helping them relax and/or focus.
# 
# This file contains all of the code that plays a piece that is ~5 min in length
# which is intended to help focus students. The music varies between peppy, and
# relatively predictable choruses, and bridges that slow the song down. There 
# is some intentional "improv," but the piece is good to study to because it
# is upbeat in a predictable way so it isn't too distracting, but there is 
# enough variation that keeps it engaging.
# 
# Potential bugs: The piece is too long to play in one file on the Sonic Pi GUI.
# I saved it in one file, but to play on the GUI it needs to be broken into
# two files and played one right after another, or played using the filepath
# by calling run_file "/path/to/buffer.rb"

# Start/Intro of Song

in_thread do
  use_synth :dark_ambience
  4.times do
    play_pattern chord((ring :g, :g, :c, :d).tick, :maj9), attack: 1, release: 4
    sleep 2
  end
end

sleep 30

# Start of Chorus 1

in_thread do
  2.times do
    13.times do
      play chord((ring :g, :g, :g, :g, :c, :c, :c, :c, :d, :d, :d, :d, :g).tick(:part_one), :maj9), attack: 0.25, release: 0.25
      sleep 0.5
    end
    3.times do
      play chord((ring :g, :d, :c).tick(:part_two), (ring :minor7, :maj9, :maj9).tick(:part_three)), attack: 0.25, release: 0.25
      sleep(0.5)
    end
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
    play chord((ring :c, :c, :d, :d, :e, :e,).tick(:part_one), :maj9), attack: 0.25, release: 0.25
    sleep(0.5)
    sample :drum_snare_hard, attack: 0.25, release: 0.25
    sleep 0.5
  end
  4.times do
    play chord((ring :f, :f, :g, :a).tick(:part_two), :maj9), attack: 0.25, release: 0.25
    sleep(0.5)
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
      play chord((ring :g, :g, :g, :g, :c, :c, :c, :c, :d, :d, :d, :d, :g).tick(:part_one), :maj9).choose, attack: 0.25, release: 0.25
      sleep 0.5
    end
    3.times do
      play chord((ring :g, :d, :c).tick(:part_two), (ring :minor7, :maj9, :maj9).tick(:part_three)).choose, attack: 0.25, release: 0.25
      sleep(0.5)
    end
  end
end

in_thread do
  2.times do
    3.times do
      play chord((ring :g3, :c3, :d3).tick(:part_one), :maj9), attack: 0.25, release: 1.5
      sleep(2)
    end
    4.times do
      play chord((ring :g3, :g3, :d3, :c3).tick(:part_two), (ring :maj9, :minor7, :maj9, :maj9).tick(:part_three)), attack: 0.25, release: 0.4
      sleep(0.5)
    end
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
      play chord((ring :g, :g, :g, :g, :c, :c, :c, :c, :d, :d, :d, :d, :g).tick(:part_one), :maj9), attack: 0.25, release: 0.25
      play chord((ring :g3, :g3, :g3, :g3, :c3, :c3, :c3, :c3, :d3, :d3, :d3, :d3, :g3).tick(:part_one1), :maj9), attack: 0.25, release: 0.25
      sleep 0.5
    end
    3.times do
      play chord((ring :g, :d, :c).tick(:part_two), (ring :minor7, :maj9, :maj9).tick(:part_three)), attack: 0.25, release: 0.25
      play chord((ring :g3, :d3, :c3).tick(:part_two1), (ring :minor7, :maj9, :maj9).tick(:part_three1)), attack: 0.25, release: 0.25
      sleep(0.5)
    end
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
    play chord((ring :c, :c, :d, :d, :e, :e,).tick(:part_one), :maj9), attack: 0.25, release: 0.25
    sleep(0.5)
    sample :drum_snare_hard, attack: 0.25, release: 0.25
    sleep 0.5
  end
  4.times do
    play chord((ring :f, :f, :g, :a).tick(:part_two), :maj9), attack: 0.25, release: 0.25
    sleep(0.5)
  end
end

in_thread do
  2.times do
    3.times do
      play chord((ring :c3, :d3, :e3).tick(:part_one), :maj9), attack: 0.25, release: 1.5
      sleep(2)
    end
    4.times do
      play chord((ring :f3, :f3, :g3, :a3).tick(:part_two), :maj9), attack: 0.25, release: 0.4
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
  24.times do
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

# Song Finished
