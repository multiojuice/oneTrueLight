///scr_player_punch
image_speed = .5
//Sprites
 switch (sprite_index) {
    case spr_fight_mode_right:
    case spr_player_ring_right:
    case spr_player_charged_punch_right:
    case spr_player_light_beam_right:
        sprite_index = spr_player_punch_right
        break;
    case spr_player_ring_left:
    case spr_player_charged_punch_left:
    case spr_player_light_beam_left:
    case spr_fight_mode_left:
        sprite_index = spr_player_punch_left
        break;  

        }

// Damage box for punch
    if (image_index >= 2 && attacked == false)
        {
        var xx = 0
        var yy = 0
         switch (sprite_index) {
    case spr_player_punch_left:
    xx = x-20
    yy = y
        break;
         
    case spr_player_punch_right:
    xx = x+20
    yy = y
        break;
        }
        var damage = instance_create(xx,yy,obj_damage_punch)
        attacked = true;
         damage.creator = id;
         damage.damage = obj_player_stats.attack;
          
         }
        
