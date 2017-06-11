/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 350E7634
/// @DnDArgument : "obj" "obj_player"
/// @DnDSaveInfo : "obj" "7b40174b-7246-4e9e-ae06-29409cbb2a1f"
var l350E7634_0 = false;
l350E7634_0 = instance_exists(obj_player);
if(l350E7634_0)
{
	/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
	/// @DnDVersion : 1
	/// @DnDHash : 574EDB6F
	/// @DnDParent : 350E7634
	/// @DnDArgument : "x" "obj_player.x"
	/// @DnDArgument : "y" "obj_player.y"
	direction = point_direction(x, y, obj_player.x, obj_player.y);

	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 007A9FF3
	/// @DnDParent : 350E7634
	/// @DnDArgument : "speed" "spd"
	speed = spd;
}

/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
/// @DnDVersion : 1
/// @DnDHash : 0B4D38CA
/// @DnDArgument : "angle" "direction"
image_angle = direction;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 24F0ECE0
/// @DnDArgument : "var" "hp"
/// @DnDArgument : "op" "3"
if(hp <= 0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3318BABF
	/// @DnDApplyTo : 2e0bf70e-bf6e-4269-9315-b261b41299fd
	/// @DnDParent : 24F0ECE0
	/// @DnDArgument : "expr" "10"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "thescore"
	with(obj_score) {
	thescore += 10;
	
	}

	/// @DnDAction : YoYo Games.Audio.Audio_Set_Pitch
	/// @DnDVersion : 1
	/// @DnDHash : 77EF66F2
	/// @DnDParent : 24F0ECE0
	/// @DnDArgument : "sound" "sound_death"
	/// @DnDArgument : "pitch" "random_range(0.8,1.2)"
	/// @DnDSaveInfo : "sound" "e0b48ccd-952e-4ee9-9207-1e91c454d613"
	audio_sound_pitch(sound_death, random_range(0.8,1.2));

	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 3EED87C4
	/// @DnDParent : 24F0ECE0
	/// @DnDArgument : "soundid" "sound_death"
	/// @DnDSaveInfo : "soundid" "e0b48ccd-952e-4ee9-9207-1e91c454d613"
	audio_play_sound(sound_death, 0, 0);

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 0A448484
	/// @DnDParent : 24F0ECE0
	instance_destroy();
}