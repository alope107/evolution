// Returns the perimeter of a triangle given its coordinates.

var triangle, sides, perimeter;

triangle = argument0;

sides = triangle_side_lengths(triangle);

perimeter = 0;

for (i = 0; i < 3; i++) {
    perimeter += sides[i];
}

return perimeter;
