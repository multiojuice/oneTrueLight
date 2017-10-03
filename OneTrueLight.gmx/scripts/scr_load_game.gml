 ///scr_load_game();

var file = file_text_open_read(working_directory+"SavedGame.txt");
var save_string = file_text_read_string(file); 
file_text_close(file);
save_string = base64_decode(save_string);
var save_data = json_decode(save_string);

// find room
var save_room = save_data[? "room"];
if (room != save_room) {
room_goto(save_room)
}
// find all other stuff 
with (obj_player_stats) {
    player_xstart = save_data[? "x"]
    player_ystart = save_data[? "y"]
    if (instance_exists(obj_player)) {
    obj_player.x = player_xstart;
    obj_player.y = player_ystart; 
    obj_player.phy_position_x = player_xstart;
    obj_player.phy_position_y = player_ystart;
    } else {
        instance_create(player_xstart, player_ystart, obj_player);
    }
    hp = save_data[? "hp"];
    maxhp = save_data[? "maxhp"];
    mana = save_data[? "mana"];
    maxmana = save_data[? "maxmana"];
    expr = save_data[? "expr"];
    level = save_data[? "level"];
    attack = save_data[? "attack"];
    b_attack = save_data[? "Set Basic Attack"];
    s_attack = save_data[? "Set Secondary Attack"];
    move_1 = save_data[? "Set Special Attack 1"];
    move_2 = save_data[? "Set Special Attack 2"];
    move_3 = save_data[? "Set Special Attack 3"];
    
    
    
}

ds_map_destroy(save_data);




