///scr_enemy_medium_counter();
last_state = scr_enemy_medium_counter;
sprite_index = spr_boxer_water_counter;

// DO THE BLOCK THEN PUNCH  
if (image_index <=4) {
    // take half damage

}   else {
    // do double damage on basic attack
    var xx = 0
    var yy = 0
    var dir = 0;
    if (face == 1) { 
        image_xscale = 1
        xx = x+30
        yy = y

        } else {
       image_xscale = -1

        xx = x-30
        yy = y
        }
        
       var p = instance_create(xx,yy, obj_enemy_damage_counter);
       p.creator = id;
       
                }
    





