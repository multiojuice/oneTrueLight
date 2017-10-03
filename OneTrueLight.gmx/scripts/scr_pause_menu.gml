///scr_pause_menu();

// dont let it leave the skills menu
if (room == rm_skills) exit;
if (room == rm_skills_secondary) exit;
if (room == rm_skills_basic) exit;
if (room == rm_skills_special) exit;

// pasue it
   if (room != rm_pause) {
        if (instance_exists(obj_player)) {
            obj_player.persistent = false;
            }
            previous_room = room;
            room_persistent = true;
            room_goto(rm_pause);
        } else {
            room_goto(previous_room);
        }
        obj_input.pause_key = false;

