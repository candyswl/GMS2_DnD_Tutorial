/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 4CB94BCF
/// @DnDArgument : "expr" "10"
/// @DnDArgument : "var" "spawnrate1"
spawnrate1 = 10;

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 524B6BF7
/// @DnDArgument : "steps" "spawnrate1"
/// @DnDArgument : "alarm" "1"
alarm_set(1, spawnrate1);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 00BC6800
/// @DnDArgument : "var" "enemy_count"
enemy_count = 0;