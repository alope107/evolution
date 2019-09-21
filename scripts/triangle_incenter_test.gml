var points, sides;

show_debug_message("TRIANGLE INCENTER TEST");

points[0, 0] = 15;
points[0, 1] = 15;
points[1, 0] = 47;
points[1, 1] = 40;
points[2, 0] = 65;
points[2, 1] = 20;

sides[0] = 26.91;
sides[1] = 50.25;
sides[2] = 40.61;

incenter = triangle_incenter(points, sides);

show_debug_message("Expected: (46, 27)")
show_debug_message("Actual: (" + string(incenter[0]) + ", " + string(incenter[1]) + ")");
