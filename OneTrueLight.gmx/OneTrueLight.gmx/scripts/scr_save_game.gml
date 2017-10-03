///scr_save_game();

// make sure your alive
if (obj_player_stats.hp <= 0) {
 show_message("You Cannot Save When You Are Dead");
 exit;

 }
// create the save data structsure
var save_data = ds_map_create();

with (obj_player_stats) { 
    save_data[? "room"] = previous_room;
    save_data[? "x"] = 0;
    save_data[? "y"] = 0;
    save_data[? "hp"] = hp;
    save_data[? "maxhp"] = maxhp;
    save_data[? "mana"] = mana;
    save_data[? "maxmana"] = maxmana;
    save_data[? "expr"] = expr;
    save_data[? "maxexpr"] = maxexpr;
    save_data[? "level"] = level;
    save_data[? "attack"] = attack;
}

var save_string = json_encode(save_data);
ds_map_destroy(save_data)
save_string = base64_encode(save_string);

var file = file_text_open_write(working_directory + "SavedGame.txt");
file_text_write_string(file, save_string);
file_text_close(file);

show_message("Game Saved");
