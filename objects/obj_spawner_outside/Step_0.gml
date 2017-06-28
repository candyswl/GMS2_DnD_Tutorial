/// @DnDAction : YoYo Games.Instances.Instance_Get_Count
/// @DnDVersion : 1
/// @DnDHash : 269A8134
/// @DnDArgument : "var" "enemy_count"
/// @DnDArgument : "object" "obj_enemyspawn"
/// @DnDSaveInfo : "object" "d9ac6892-ace3-408b-910f-9f8576ef49e1"
enemy_count = instance_number(obj_enemyspawn);

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 58650A2B
/// @DnDArgument : "var" "enemy_count"
/// @DnDArgument : "value" "5"
if(enemy_count == 5)
{
	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 6BF7A995
	/// @DnDParent : 58650A2B
	/// @DnDArgument : "steps" "300"
	/// @DnDArgument : "alarm" "1"
	alarm_set(1, 300);
}