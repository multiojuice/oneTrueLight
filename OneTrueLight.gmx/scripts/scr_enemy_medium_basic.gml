///scr_enemy_medium_basic();
image_speed = .25
last_state = scr_enemy_medium_basic;
sprite_index = spr_boxer_water_basic;

// get directions
target_x = obj_player.x
target_y = obj_player.y
if (target_x > x) {
     face = 1
    } else {
     face = -1
     }
     
     
// punch damage CREATION
if (image_index >= 3) {
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
        
       var p = instance_create(xx,yy, obj_damage_punch);
       p.creator = id;
       
                }
    









