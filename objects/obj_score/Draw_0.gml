/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 65EA8534
/// @DnDArgument : "var" "camera_score"
/// @DnDArgument : "value" "view_camera[0]"
var camera_score = view_camera[0];

/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 29B7479B
/// @DnDInput : 3
/// @DnDArgument : "var" "camera_x"
/// @DnDArgument : "value" "camera_get_view_x(camera_score)"
/// @DnDArgument : "var_1" "camera_y"
/// @DnDArgument : "value_1" "camera_get_view_y(camera_score)"
/// @DnDArgument : "var_2" "camera_w"
/// @DnDArgument : "value_2" "camera_get_view_width(camera_score)"
var camera_x = camera_get_view_x(camera_score);
var camera_y = camera_get_view_y(camera_score);
var camera_w = camera_get_view_width(camera_score);

/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 41FEA774
/// @DnDArgument : "font" "font_score"
/// @DnDSaveInfo : "font" "671e8bc7-e430-402f-bae2-7e85c253af0e"
draw_set_font(font_score);

/// @DnDAction : YoYo Games.Drawing.Set_Alignment
/// @DnDVersion : 1.1
/// @DnDHash : 089A520B
/// @DnDArgument : "halign" "fa_center"
/// @DnDArgument : "valign" "fa_middle"
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 6F831AE4
/// @DnDArgument : "color" "$FF0000FF"
draw_set_colour($FF0000FF & $ffffff);
draw_set_alpha(($FF0000FF >> 24) / $ff);

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 0BA6D394
/// @DnDArgument : "x" "camera_x + camera_w/2"
/// @DnDArgument : "y" "camera_y + 32"
/// @DnDArgument : "caption" ""Score: ""
/// @DnDArgument : "var" "thescore"
draw_text(camera_x + camera_w/2, camera_y + 32, string("Score: ") + string(thescore));