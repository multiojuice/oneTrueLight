///scr_player_fight
if (obj_input.mode_switch_key) {
    state = scr_player_move;
}
// starting sprite
switch sprite_index {
        case spr_player_move_right1:
        sprite_index = spr_fight_mode_right
        break;
        case spr_player_move_left1:
        sprite_index = spr_fight_mode_left
        break;
}
//Move
hspd = obj_input.xaxis*Fspd;
vspd = obj_input.yaxis*Fspd;

//Acquire direction
dir = point_direction(0,0,obj_input.xaxis,obj_input.yaxis);

//Length
if (obj_input.xaxis == 0 and obj_input.yaxis == 0) 
    {
    len = 0;
    }
        else
        {
        len = Fspd;
        scr_player_face();
        }
        // Get hspd and vspd
hspd = lengthdir_x(len,dir);
vspd = lengthdir_y(len,dir);

//move
phy_position_x += hspd;
phy_position_y += vspd;

//control the sprite
image_speed = sign(len)*.1;
if (len = 0) image_index = 0;

//Animations for Walking
switch (face) {
        
    case LEFT:
        sprite_index = spr_fight_mode_left
        break;
        
    case RIGHT:
        sprite_index = spr_fight_mode_right
        break;
        
}
// FROM HERE: ALLL PLAYER MOVESSSS


// Punch MOVE

if (obj_input.punch_key){
    image_index = 0
    state = obj_player_stats.b_attack
}

//  move 1 key
if (obj_input.move_1_key) {
    image_index = 0
    state = obj_player_stats.move_1
    }
    //  move 2 key
if (obj_input.move_2_key) {
    image_index = 0
    state = obj_player_stats.move_2
    }
    //  move 3 key
if (obj_input.move_3_key) {
    image_index = 0
    state = obj_player_stats.move_3
    }



