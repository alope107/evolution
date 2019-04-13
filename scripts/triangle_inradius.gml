// Returns the inradius of a triangle given its coordinates.

var triangle, inradius, perimeter, area;

triangle = argument0;

area = triangle_area(triangle);
perimeter = triangle_perimeter(triangle);

return 2 * area / perimeter;
