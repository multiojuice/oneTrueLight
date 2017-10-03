///scr_get_input();
//estabilish keys
up_key = (keyboard_check(ord("W")))
down_key = (keyboard_check(ord("S")))
right_key = (keyboard_check(ord("D")))
left_key = (keyboard_check(ord("A")))
mode_switch_key = (keyboard_check_pressed(ord("F")))
pause_key = (keyboard_check_pressed(vk_escape))
punch_key = (mouse_check_button_pressed(mb_left))
light_beam_key = (keyboard_check_pressed(ord("Q")))
// asxis
xaxis = (right_key - left_key) ;
yaxis =  (down_key - up_key) ;
