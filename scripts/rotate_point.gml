// Rotates a point by theta degrees.

var x_pt, y_pt, theta, rad, new_point;

x_pt = argument0;
y_pt = argument1;
theta = argument2; // How many degrees to rotate (counter-clockwise) by in degrees.

//show_debug_message("Theta (deg): " + string(theta) + "  X: " + string(x_pt) + " Y: " + string(y_pt));
rad = degtorad(theta);
//show_debug_message("Theta (rad): " + string(rad));

new_point[0] = x_pt * cos(rad) - y_pt * sin(rad);
new_point[1] = y_pt * cos(rad) + x_pt * sin(rad);

return new_point;
