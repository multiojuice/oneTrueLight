///scr_enemy_medium_block(); 
last_state = scr_enemy_medium_block;
sprite_index = spr_player_move_left1;
var dis = point_distance(x,y,obj_player.x,obj_player.y)  
if (dis < 90) {
    image_speed = .25
    //sprite direction and change
    sprite_index = spr_boxer_water_block;
    if (targetx > x) { 
        image_xscale = -1;
    } else {
        image_xscale = 1;
    }
    obj_player_stats.attack *= .5

} else {
    state = scr_enemy_medium_combat;
}

