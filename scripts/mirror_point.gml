//Mirrors a point across another.

var p1x, p1y, p2x, p2y, result;

p1x = argument0;
p1y = argument1;
p2x = argument2;
p2y = argument3;

dx = p2x - p1x;
dy = p2y - p1y;

result[0] = p2x + dx;
result[1] = p2y + dy

return result;


