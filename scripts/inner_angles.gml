// Returns the inner angles of a triangle (in degrees) given the coordinates.
// The coordinates oughta be passed as a 2D array.
var triangle, sides, i, j, angles, numerator, denominator;

triangle = argument0;

// Get the side lengths.
for (i = 0; i < 3; i++) {
    j = (i + 1) mod 3;
    sides[i] = point_distance(triangle[i, 0], triangle[i, 1], 
                              triangle[j, 0], triangle[j, 1]);
}

// Use the sides to get the angles.
for (i = 0; i < 3; i++) {
    // Selects each of the 3 sides, but cycles the order.
    a = sides[i]
    b = sides[(i + 1) mod 3];
    c = sides[(i + 2) mod 3];
    
    numerator = b*b + c*c - a*a
    denominator = 2*b*c;
    angles[i] = darccos(numerator / denominator);
    angles[i] = normalize_degrees(angles[i]);
}

return angles;
