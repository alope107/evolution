// returns a value [0, 1] representing how similar the colors are of two objects
// each object must have hsv values
obj0 = argument0;
obj1 = argument1;

unit_length = power((255*255) + (255*255) + (255*255), .333);
r_comp = power(abs(obj0.r - obj1.r), 2);
g_comp = power(abs(obj0.g - obj1.g), 2);
b_comp = power(abs(obj0.b - obj1.b), 2);
color_dist = power(r_comp + g_comp + b_comp , .333);
color_sim = (unit_length - color_dist) / unit_length;

return color_sim;
