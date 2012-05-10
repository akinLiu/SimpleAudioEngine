#SimpleAudioEngine
=================

#file
## IMPORTANT
There are 3 different ways of using CocosDenshion. Depending on which you choose you
will need to include different files and frameworks.

#SimpleAudioEngine
This is recommended for basic audio requirements. If you just want to play some sound fx
and some background music and have no interest in learning the lower level workings then
this is the interface to use.

Requirements:

- Firmware: OS 2.2 or greater
- Files: SimpleAudioEngine.*, CocosDenshion.*
- Frameworks: OpenAL, AudioToolbox, AVFoundation

#CDAudioManager
CDAudioManager is basically a thin wrapper around an AVAudioPlayer object used for playing
background music and a CDSoundEngine object used for playing sound effects. It manages the
audio session for you deals with audio session interruption. It is fairly low level and it
is expected you have some understanding of the underlying technologies. For example, for
many use cases regarding background music it is expected you will work directly with the
backgroundMusic AVAudioPlayer which is exposed as a property.

Requirements:

  - Firmware: OS 2.2 or greater
  - Files: CDAudioManager.*, CocosDenshion.*
  - Frameworks: OpenAL, AudioToolbox, AVFoundation

# CDSoundEngine
CDSoundEngine is a sound engine built upon OpenAL and derived from Apple's oalTouch
example. It can playback up to 32 sounds simultaneously with control over pitch, pan
and gain.  It can be set up to handle audio session interruption automatically.  You
may decide to use CDSoundEngine directly instead of CDAudioManager or SimpleAudioEngine
because you require OS 2.0 compatibility.

Requirements:

  - Firmware: OS 2.0 or greater
  - Files: CocosDenshion.*
  - Frameworks: OpenAL, AudioToolbox
