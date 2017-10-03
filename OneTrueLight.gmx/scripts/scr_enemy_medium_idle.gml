///scr_enemy_medium_idle();

sprite_index = spr_wolf;
image_speed = .45;
alarm[6] = room_speed*2;
//move
    targetx = obj_player.x
    targety = obj_player.y
    var dir = point_direction(x ,y, targetx, targety);
    // Move To player
    var hspd = lengthdir_x(.3, dir);
    var vspd = lengthdir_y(.3, dir);
    phy_position_x += hspd;
    phy_position_y += vspd;
    if (hspd != 0) face = sign(hspd);
    image_xscale = face;
if (alarm[6] <= 0) {
   state = scr_enemy_medium_combat;
   }
    
