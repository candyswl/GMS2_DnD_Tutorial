/// @DnDAction : YoYo Games.Instances.Sprite_Scale
/// @DnDVersion : 1
/// @DnDHash : 3E26FF4C
/// @DnDArgument : "xscale" "0.02"
/// @DnDArgument : "xscale_relative" "1"
/// @DnDArgument : "yscale" "0.02"
/// @DnDArgument : "yscale_relative" "1"
image_xscale += 0.02;
image_yscale += 0.02;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 05C03182
/// @DnDArgument : "var" "image_xscale"
/// @DnDArgument : "op" "4"
/// @DnDArgument : "value" "1"
if(image_xscale >= 1)
{
	/// @DnDAction : YoYo Games.Instances.Sprite_Scale
	/// @DnDVersion : 1
	/// @DnDHash : 6AFBC3BF
	/// @DnDParent : 05C03182
	image_xscale = 1;
	image_yscale = 1;

	/// @DnDAction : YoYo Games.Instances.Change_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 7E5F3702
	/// @DnDParent : 05C03182
	/// @DnDArgument : "objind" "obj_enemy"
	/// @DnDSaveInfo : "objind" "006001e4-4950-487e-8c06-7a783c3376ac"
	instance_change(obj_enemy, true);

	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 1D3DBDAA
	/// @DnDParent : 05C03182
	/// @DnDArgument : "soundid" "sound_spawn"
	/// @DnDSaveInfo : "soundid" "a4705979-5b9a-4a32-824d-bc9a9c60002c"
	audio_play_sound(sound_spawn, 0, 0);
}