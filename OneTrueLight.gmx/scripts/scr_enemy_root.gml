///scr_enemy_root();
image_speed = 0;
var original_color = image_blend
image_blend = (c_white)
x = x
y = y
var l_damp = phy_linear_damping
phy_linear_damping = 100000;
alarm[9] = room_speed*5
if (alarm[9] <= 0) {
    phy_linear_damping = l_damp
    image_blend = original_color
    state = scr_check_for_player    
}


