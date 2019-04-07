var points;

show_debug_message("TRIANGLE INCENTER TEST");

points[0, 0] = 15;
points[0, 1] = 15;
points[1, 0] = 47;
points[1, 1] = 40;
points[2, 0] = 65;
points[2, 1] = 20;

incenter = triangle_incenter(points);

show_debug_message("Expected: (46, 27)")
show_debug_message("Actual: (" + string(incenter[0]) + ", " + string(incenter[1]) + ")");
