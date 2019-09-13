// Return the coordinates of where the creature is interested in going.

var targets, t_coord;

t_coord[0] = 0;
t_coord[1] = 0;

targets[0] = food_obj
if (global.cannibals) {
    targets[1] = chaser_obj;
}

// For each type of item that can be eaten
for (i = 0; i < array_length_1d(targets); i++) {
    // Inspect every instance of that type
    for (j = 0; j < instance_number(targets[i]); j++) {
        target = instance_find(targets[i], j);
        
        if (targets[i] == chaser_obj) {
            // If we're going to be concerned with a creature, it should be 
            // initialized and either small enough to eat or big enough to eat us.
            if (!target.initialized ||
                !(target.area < area/2 || target.area > area * 2))
                {
                    continue;
                }
        }
        
        dist = point_distance(x, y, target.x, target.y);
        color_des = m[? "color_pref"] * color_similarity(self, target);
        desirability = (-1 * dist) + color_des;
        
        if (collision_line(x, y, target.x, target.y, wall_obj, false, true)) {
            desirability -= m[? "wall_discouragement"];
        }
        if (desirability > max_desirability) {
            max_desirability = desirability;
            t_coord[0] = target.x;
            t_coord[1] = target.y;
            // If we're in fear for our life.
            if (targets[i] == chaser_obj && target.area > area * 2) {
                // Go away from the scary
                flipped = mirror_point(t_coord[0], t_coord[1], x, y);
                t_coord[0] = flipped[0];
                t_coord[1] = flipped[1];
            }
        }
    }
}

return t_coord;



