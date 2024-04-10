# The gen 1 and 2 Cry Library with CryEd.

Basically, all Pokemon Gen 1 & 2 cries are included.  To make new ones, homebrew app CryEd is also included.  To make new cries all you need is the RGBDS assembler to build the ROM.

# Cry Structure

Each cry contains 3 words of data: base, pitch, and tempo.  The base is the sound ID of which the sound engine pulls from to play a certain set of sounds.  Pitch serves as a starter $e6 command to the sound engine (pitch offset).  Finally, tempo serves as a starter $da command to the sound engine.

# How to use CryEd:

CryEd is the ultimate way to testing out custom cry data.  For making new bases, or new music, build the ROM yourself following the instructions in the original README.

Option one: Cry bases.  Now in the form of a word, meaning 16-bit (14-bit?) iDs are now supported.

Options two and three: Pitch and Tempo.  It is recommended the pitch stays within $000-$7ff as that's the full range of pitch.

Option four: Play sound effects

Option five: Play music

The controls to navigate this menu is shown at the bottom of the screen.

In the select menu, you can import cries from GSC as well as custom Equinto cries from Pokemon Ray/Shade, save cries of your own, view tracks from various fanmade games as they play, and even switch between monaural and stereo sound.

# Miscellaneous

For additional information about CryEd refer to the original readme and the in-ROM information.

Credits go to DevEd for the original app as well as chaos-lord for providing the base data for this project.  More credits included in `credits.txt`