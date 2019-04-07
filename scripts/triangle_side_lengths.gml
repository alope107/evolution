// Returns the side length of a triangle given its points.
// The sides are ordered based on the point they are opposite.

var triangle, sides;

triangle = argument0;

// Get the side lengths.
for (i = 0; i < 3; i++) {
    // Get the two points that aren't point i.
    a = (i + 1) mod 3;
    b = (i + 2) mod 3;
    
    sides[i] = point_distance(triangle[a, 0], triangle[a, 1], 
                              triangle[b, 0], triangle[b, 1]);
}

return sides;
