/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 054E9A0A
/// @DnDArgument : "xpos" "random(room_width)"
/// @DnDArgument : "ypos" "random(room_height)"
/// @DnDArgument : "objectid" "obj_enemyspawn"
/// @DnDArgument : "layer" ""Layer_Enemy""
/// @DnDSaveInfo : "objectid" "d9ac6892-ace3-408b-910f-9f8576ef49e1"
instance_create_layer(random(room_width), random(room_height), "Layer_Enemy", obj_enemyspawn);

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 58FF5E97
/// @DnDArgument : "steps" "spawnrate"
alarm_set(0, spawnrate);