///scr_text(new);

if (instance_exists(obj_textbox)) {
   if obj_textbox.str = argument0 {
   exit;
   } else {
     with (obj_textbox) {
     instance_destroy();
      }
   }
}
var new = argument0;
instance_create(x,y,obj_textbox);
obj_textbox.str = new;
with (obj_textbox) alarm[0] = room_speed*5;


