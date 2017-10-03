///scr_enemy_states()
if (alarm[0] <= 0) {
    state = choose(scr_enemy_idle, scr_enemy_wander)
    alarm[0] = room_speed*irandom_range(2,5)
    targetx = random(room_width);
    targety = random(room_height); 
        }
        //stop sprite animation
    if (x = targetx) {
        image_speed = 0
        }   else {
                 image_speed = .25
                }
