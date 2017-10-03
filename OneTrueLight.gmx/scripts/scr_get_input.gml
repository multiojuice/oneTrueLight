///scr_get_input();
//estabilish keys
up_key = (keyboard_check(ord("W")))
down_key = (keyboard_check(ord("S")))
right_key = (keyboard_check(ord("D")))
left_key = (keyboard_check(ord("A")))
mode_switch_key = (keyboard_check_pressed(ord("F")))
pause_key = (keyboard_check_pressed(vk_escape))
skills_key = (keyboard_check_pressed(vk_tab))
punch_key = (mouse_check_button_pressed(mb_left))
move_1_key = (keyboard_check_pressed(ord("1")))
move_2_key = (keyboard_check_pressed(ord("2")))
move_3_key = (keyboard_check_pressed(ord("3")))
// asxis
xaxis = (right_key - left_key) ;
yaxis =  (down_key - up_key) ;
