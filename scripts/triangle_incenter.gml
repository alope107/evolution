// Returns the incenter of the triangle.

var triangle, sides, perimeter, incenter;

triangle = argument0;

sides = triangle_side_lengths(triangle);

incenter[0] = 0;
incenter[1] = 0;

perimeter = 0;
for (i = 0; i < 3; i++) {
    perimeter += sides[i];
    for (j = 0; j < 2; j++) {
        incenter[j] += triangle[i, j] * sides[i];
    }
}

incenter[0] /= perimeter;
incenter[1] /= perimeter;

return incenter;


