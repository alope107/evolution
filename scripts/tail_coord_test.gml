var points;

show_debug_message("TAIL COORD TEST");

points[0, 0] = 0;
points[0, 1] = 1;
points[1, 0] = 2;
points[1, 1] = 0;
points[2, 0] = -2;
points[2, 1] = -1;

tail = tail_coord(points);

show_debug_message("Expected: [-1, 0]");
show_debug_message("Actual: [" + string(tail[0]) + ", " + string(tail[1]) + "]");
