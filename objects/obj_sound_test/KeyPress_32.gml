/// @DnDAction : YoYo Games.Audio.Audio_Set_Pitch
/// @DnDVersion : 1
/// @DnDHash : 711E1B22
/// @DnDArgument : "sound" "sound_swipe"
/// @DnDArgument : "pitch" "random_range(0.8,1.2)"
/// @DnDSaveInfo : "sound" "b8e1590b-a765-4a65-84f6-c52bcf95ac87"
audio_sound_pitch(sound_swipe, random_range(0.8,1.2));

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1
/// @DnDHash : 13624FD9
/// @DnDArgument : "soundid" "sound_swipe"
/// @DnDSaveInfo : "soundid" "b8e1590b-a765-4a65-84f6-c52bcf95ac87"
audio_play_sound(sound_swipe, 0, 0);