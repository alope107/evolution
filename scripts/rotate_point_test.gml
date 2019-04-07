show_debug_message("ROTATE POINT TEST")
pts = rotate_point(1, 1, 60);
show_debug_message("Expected: (-.366, 1.37)");
show_debug_message("Actual: (" + string(pts[0]) + ", " + string(pts[1]) + ")");

show_debug_message(" ");

pts = rotate_point(98, 32, 760);
show_debug_message("Expected: (54.5, 87.5)");
show_debug_message("Actual: (" + string(pts[0]) + ", " + string(pts[1]) + ")");
