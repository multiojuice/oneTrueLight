///scr_player_light_beam
image_speed = .5; 

//sprite control
switch (sprite_index) {
     case spr_fight_mode_right:
        sprite_index = spr_player_light_beam_right
        break;

    case spr_fight_mode_left:
        sprite_index = spr_player_light_beam_left
        break;  
        }
        
// Light Beam CREATION
if (image_index >= 2 and attacked == false) {
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
       instance_create(xx, yy, obj_light_beam)
        attacked = true;
        obj_player_stats.mana -= 1
        switch (sprite_index) {
            case spr_player_light_beam_right:
                obj_light_beam.spd = 3;
                break;
                
            case spr_player_light_beam_left:
                obj_light_beam.spd = -3;
                break;
                }
    }

