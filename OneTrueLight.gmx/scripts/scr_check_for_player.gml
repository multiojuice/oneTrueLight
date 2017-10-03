///scr_check_for_player();
if (instance_exists(obj_player)) {
    var dis = point_distance(x,y,obj_player.x,obj_player.y)
    if (dis < sight) {
        state = scr_enemy_chase
        targetx = obj_player.x
        targety = obj_player.y
        } else {
        scr_enemy_states();
        }
} else {
        scr_enemy_states();
        }
