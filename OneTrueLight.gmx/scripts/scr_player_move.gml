///scr_player_move
if (obj_input.mode_switch_key) {
    state = scr_player_fight;   
}
// starting sprite
switch sprite_index {
        case spr_player_interact_right:
        case spr_fight_mode_right:
        sprite_index = spr_player_move_right1
        break;
        case spr_fight_mode_left:
        case spr_player_interact_left:
        sprite_index = spr_player_move_left1
        break;
}

//Move
hspd = obj_input.xaxis*spd;
vspd = obj_input.yaxis*spd;

//Acquire direction
dir = point_direction(0, 0, obj_input.xaxis, obj_input.yaxis);

//Length
if (obj_input.xaxis == 0 and obj_input.yaxis == 0) 
    {
    len = 0;
    }
        else
        {
        len = spd;
        scr_player_face();
        }
        // Get hspd and vspd
hspd = lengthdir_x(len,dir);
vspd = lengthdir_y(len,dir);

//move
phy_position_x += hspd;
phy_position_y += vspd;

//control the sprite
image_speed = sign(len)*.25;
if (len = 0) {
    switch (face) {
    case LEFT:
        sprite_index = spr_player_idle_left
        image_speed = .10
        break;
        
    case RIGHT:
        sprite_index = spr_player_idle_right
        image_speed = .10
        break;
        
    case UP:
    case DOWN:
        if (sprite_index = spr_player_move_left1) sprite_index = spr_player_idle_left
        if (sprite_index = spr_player_move_right1) sprite_index = spr_player_idle_right
        image_speed = .10
        break;

    
    }
}
//Animations for Walking
if (len != 0) {
    switch (face) {
        
    case LEFT:
        sprite_index = spr_player_move_left1
        break;
        
    case RIGHT:
        sprite_index = spr_player_move_right1
        break;
        
    case UP:
    case DOWN:
        if (sprite_index = spr_player_idle_left) sprite_index = spr_player_move_left1
        if (sprite_index = spr_player_idle_right) sprite_index = spr_player_move_right1
        break;
  
        }

}

//interact Thing
if (mouse_check_button_pressed(mb_left)){
    image_index = 0
    state = scr_player_interact
}


