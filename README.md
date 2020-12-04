# Hakuna_Fermata
Computational Creativity Mission 8: Hakuna Fermata. The purpose of this project is to write a song that will supplement a calming video to help CSCI 1101 students prepare for their exam by helping them relax and/or focus. 

## study_song.rb
This file contains all of the code that plays a piece that is ~5 min in length which is intended to help focus students. The music varies between peppy, and relatively predictable choruses, and bridges that slow the song down. There is some intentional "improv," but the piece is good to study to because it is upbeat in a predictable way so it isn't too distracting, but there is enough variation that keeps it engaging.

### Start/Intro
This is the start of the song. This section utilizes the synth dark_ambiance and the chord progression of g major 9, c major 9 and d major 9. It's slow, and has a dreamy quality.

### Chorus 1
The tempo of the song increases in this section. It starts with the chord progression of  g major 9, c major 9 and d major 9 and then moves into c major 9, d major 9, e major 9. This beat/melody is seen throughout the song in a range of variations. 

### Bridge 1
The tempo of the song slows in this section, not quite to the speed of the intro. It breaks the repeditive pattern of the chorus and takes the listener on a slightly slower more lyrical journey. This beet/melody is seen thoughout the song in a range of variations.

### Chorus 2
This section utilizes the same melody and beat of Chorus 1, but introduces an aspect of randomness. Using notes from the chord progression, the system chooses randomly within the chords what note to play. This is overlayed onto the same beat/melody as Chorus 1. This section is shorter than Chorus 1, and only incorporates the chord progression of g major 9, c major 9 and d major 9 and does not move to c major 9, d major 9, e major 9.

### Bridge 2
Again, the tempo eventually slows in this section and the beat and melody change. Differently than Bridge 1, it starts with a whimsicle transition before slowing. It eventually slows to the pace of the Intro to the song, and utilizes the synth dark_ambiance. 

### Chorus 3
This section utilizes the same beat and melody as Chorus 1, but incorporates more depth of sound. After the journey of Bridge 2, the intention of introducing familar sounds with some variation was to increase the tempo and make the song more cohesive while allowing the user to be comfortable and interested.

### Bridge 3
This is the end of the song. This section utilizes much of the same beat and melody as Bridge 1 --I did so for similar reasons described in Chorus 3. The tempo slows, and all of the sounds are wrapped up to end the song.

## study_song_recording.wav
Recording from running study_song.rb.

## How To Run The Code
Download and Open Sonic Pi onto your computer. Download information can be found at this link: https://sonic-pi.net/. Open study_song.rb in a buffer on the GUI. Press play in the top left corner. If the maximum number of characters in the buffer is exceeded, do one of three things. 1) Type the command run_file "/file/path/study_song.rb" into the buffer with the appropriate file path that study_song.rb was saved to. 2) In the terminal navigate to where yoy saved the project file and run ruby study_song.rb. 3) Cut and paste from "Start of Bridge 3 -- the ending" to the end and paste it in another buffer. Press play on the first buffer, wait until the last note of that buffer is played, and hit start on the second buffer.

## Discussion


