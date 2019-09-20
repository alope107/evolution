// Returns the chaser that was clicked. If none was clicked, returns -1.
// If more than one was clicked, returns one of them arbitrarily.
var inst, i, clicked;

for (i = 0; i < instance_number(chaser_obj); i++) {
    inst = instance_find(chaser_obj, i);
    with (inst) {
        if (!variable_instance_exists(id, "rotated_body")) {
            continue;
        }
        clicked = point_in_triangle(mouse_x, mouse_y,
                          x + rotated_body[0, 0], y + rotated_body[0, 1],
                          x + rotated_body[1, 0], y + rotated_body[1, 1],
                          x + rotated_body[2, 0], y + rotated_body[2, 1]);
        if (clicked) {
            return inst;
        }
    }
}

return -1;
