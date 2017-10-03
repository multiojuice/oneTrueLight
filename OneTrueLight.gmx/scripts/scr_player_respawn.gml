///scr_player_respawn
if (keyboard_check_pressed(vk_space)) {
    instance_create(250,250,obj_player)
    state = scr_player_move
    }
