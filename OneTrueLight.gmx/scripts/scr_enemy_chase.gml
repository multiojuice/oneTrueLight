///scr_enemy_chase()
scr_check_for_player();
image_speed = .25
//get dir
var dir = point_direction(x ,y, targetx, targety);
// Move To player
var hspd = lengthdir_x(cspd, dir);
var vspd = lengthdir_y(cspd, dir);
phy_position_x += hspd;
phy_position_y += vspd;
if (hspd != 0) image_xscale = sign(hspd);

