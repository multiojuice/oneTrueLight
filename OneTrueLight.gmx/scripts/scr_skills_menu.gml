///scr_skills_menu();
if (room = rm_pause) exit;
switch (room) {
    case rm_skills_basic:
        room_goto(rm_skills)
        exit;
        break;
        
    case rm_skills_secondary:
        room_goto(rm_skills)
        exit;
        break;
        
    case rm_skills_special:
        room_goto(rm_skills)
        exit;
        break;
    }
             
if (room != rm_skills) {
        if (instance_exists(obj_player)) {
            obj_player.persistent = false;
            }
            previous_room = room;
            room_persistent = true;
            room_goto(rm_skills);
        } else {
            room_goto(previous_room);
        }
        obj_input.skills_key = false;
