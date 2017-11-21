/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
/// @DnDVersion : 1
/// @DnDHash : 31673F3E
/// @DnDArgument : "key" "vk_up"
var l31673F3E_0;
l31673F3E_0 = keyboard_check_pressed(vk_up);
if (l31673F3E_0)
{
	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 60E8B212
	/// @DnDParent : 31673F3E
	/// @DnDArgument : "speed" "4"
	/// @DnDArgument : "type" "2"
	vspeed = 4;
}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
/// @DnDVersion : 1
/// @DnDHash : 2B6298A7
/// @DnDArgument : "key" "vk_down"
var l2B6298A7_0;
l2B6298A7_0 = keyboard_check_pressed(vk_down);
if (l2B6298A7_0)
{
	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 4FAFD6F3
	/// @DnDParent : 2B6298A7
	/// @DnDArgument : "speed" "-4"
	/// @DnDArgument : "type" "2"
	vspeed = -4;
}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
/// @DnDVersion : 1
/// @DnDHash : 3F6B4B7B
/// @DnDArgument : "key" "vk_left"
var l3F6B4B7B_0;
l3F6B4B7B_0 = keyboard_check_pressed(vk_left);
if (l3F6B4B7B_0)
{
	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 364D33E4
	/// @DnDParent : 3F6B4B7B
	/// @DnDArgument : "speed" "-4"
	/// @DnDArgument : "type" "1"
	hspeed = -4;
}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
/// @DnDVersion : 1
/// @DnDHash : 0297D733
/// @DnDApplyTo : 3cacb86e-736d-4feb-a1cf-103aa2dcd0c5
/// @DnDArgument : "key" "vk_right"
var l0297D733_0;
with(playerObj) l0297D733_0 = keyboard_check_pressed(vk_right);
if (l0297D733_0)
{
	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 11740898
	/// @DnDParent : 0297D733
	/// @DnDArgument : "speed" "4"
	/// @DnDArgument : "type" "1"
	hspeed = 4;
}