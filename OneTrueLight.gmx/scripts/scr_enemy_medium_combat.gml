///scr_enemy_medium_combat();
// RETURBNING VALUES

if (last_state == scr_enemy_medium_block/* or scr_enemy_medium_counter*/) obj_player_stats.attack *= 2

sprite_index = spr_boxer_water
if (instance_exists(obj_player)) {
    var dis = point_distance(x,y,obj_player.x,obj_player.y)  
    
    if (dis > 50) {
//get dir
    targetx = obj_player.x
    targety = obj_player.y
    var dir = point_direction(x ,y, targetx, targety);
    // Move To player
    var hspd = lengthdir_x(spd, dir);
    var vspd = lengthdir_y(spd, dir);
    phy_position_x += hspd;
    phy_position_y += vspd;
    if (hspd != 0) face = sign(hspd);
    image_xscale = face;
} else {    
    //choosing waht to do
    var basic = scr_enemy_medium_basic; //33%
    var blocks = choose(scr_enemy_medium_block,scr_enemy_medium_counter); //16.5%
    var special = choose(scr_enemy_medium_idle,scr_water_boxer_special1/*,scr_enemy_medium_special2*/); //11%
    var future = choose(basic,blocks,special)
    state = future;
    targetx = obj_player.x
    targety = obj_player.y
    image_xscale = face;
}
}

