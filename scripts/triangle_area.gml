// Returns the area of the triangle given the coordinates of its vertices.
var points;

points = argument0;

area = (points[0, 0] * (points[1, 1] - points[2, 1])) + 
       (points[1, 0] * (points[2, 1] - points[0, 1])) +
       (points[2, 0] * (points[0, 1] - points[1, 1]));
area /= 2;
area = abs(area);

return area;
