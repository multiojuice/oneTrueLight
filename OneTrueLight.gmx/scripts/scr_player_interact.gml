///scr_player_interact()
image_speed = .5;
switch (sprite_index) {
    case spr_player_move_right1:
        sprite_index = spr_player_interact_right
        break;

    case spr_player_move_left1:
        sprite_index = spr_player_interact_left
        break;  
    case spr_player_idle_left:
        sprite_index = spr_player_interact_left
        break;
    case spr_player_idle_right:
        sprite_index = spr_player_interact_right
        break;
        }

// Damage box for punch
    if (attacked == false)
        {
        var xx = 0
        var yy = 0
         switch (sprite_index) {
    case spr_player_interact_left:
    xx = x-20
    yy = y
        break;
         
    case spr_player_interact_right:
    xx = x+20
    yy = y
        break;
        }
        var damage = instance_create(xx,yy,obj_interact_box)
        attacked = true; 
         }
        
