///scr_player_light_beam
image_speed = .5; 

//sprite control
 switch (sprite_index) {
    case spr_fight_mode_right:
    case spr_player_ring_right:
    case spr_player_charged_punch_right:
    case spr_player_punch_right:
        sprite_index = spr_player_light_beam_right
        break;
    case spr_player_ring_left:
    case spr_player_charged_punch_left:
    case spr_player_punch_left:
    case spr_fight_mode_left:
        sprite_index = spr_player_light_beam_left
        break;  

        }
// Light Beam CREATION
if (image_index >= 5 and attacked == false and obj_player_stats.mana >= 1) {
    var xx = 0
    var yy = 0
    switch (sprite_index) { 
        case spr_player_light_beam_left:
        xx = x-30
        yy = y
       
             break;
        
        case spr_player_light_beam_right:
        xx = x+30
        yy = y

            break;
        }
       var dir = face;
       switch (dir) {
            case RIGHT:
            case LEFT:
                dir = face*90;
                break;
           
             case UP:
             case DOWN:
                switch (sprite_index) {
                    case spr_player_light_beam_right:
                        dir = RIGHT*90;
                        break;
                    case spr_player_light_beam_left:
                        dir = LEFT*90;
                        break;
                    }
                    
                break;
                
            }
        obj_player_stats.mana -= 2
        attacked = true;
       var p = instance_create(xx,yy, obj_light_beam);
       var xforce = lengthdir_x(35,dir);
       p.creator = id;
       with (p) {
        physics_apply_impulse(xx,yy,xforce,0)
        
       }
                }
    

