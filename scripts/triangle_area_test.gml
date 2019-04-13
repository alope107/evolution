var points;

show_debug_message("INNER ANGLES TEST");

points[0, 0] = 5;
points[0, 1] = 1;
points[1, 0] = 2;
points[1, 1] = 9;
points[2, 0] = 5;
points[2, 1] = 3;

area = triangle_area(points);

show_debug_message("Expected: 3");
show_debug_message("Actual: " + string(area));
