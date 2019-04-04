// Rotates a point by theta degrees.

x_pt = argument0;
y_pt = argument1;
theta = argument2; // How many degrees to rotate by in degrees.

rad = degtorad(theta);

// Tried flippin x because of gamemaker dumbness but didn't work
new_point[0] = x_pt * cos(rad) + y_pt * sin(rad);
new_point[1] = -1 * y_pt * cos(rad) + x_pt * sin(rad);

return new_point;
