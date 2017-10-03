///scr_water_boxer_special1();
last_state = scr_water_boxer_special1;
image_speed = .1
sprite_index = spr_boxer_water_special1
target_x = obj_player.x
target_y = obj_player.y
if (target_x > x) {
     face = 1
    } else {
     face = -1
     }
// Water Whip CREATION
if (image_index >= 4) {
    var xx = 0
    var yy = 0
    var dir = 0;
    if (face = 1) { 
        image_xscale = 1
        xx = x+30
        yy = y
       dir = 0
        } else {
       image_xscale = -1
       dir = 180
        xx = x-30
        yy = y
        }
        
        attacked = true;
       var p = instance_create(xx,yy, obj_water_whip);
       p.creator = id;
       
                }
    





