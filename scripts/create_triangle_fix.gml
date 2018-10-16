// Creates a physics fixture in the shape of a right isoceles triangle.
// The tip is pointing in direction 0.
// The lower base corner is at (-h/2, b/2).
// The upper base corner is at (-h/2, -b/2).
// The tip is at (h/2, 0).
base = argument0;
height = argument1;

fix = physics_fixture_create();
physics_fixture_set_polygon_shape(fix);
physics_fixture_add_point(fix, -1 * height/2, base/2);
physics_fixture_add_point(fix, -1 * height/2, -1 * base/2);
physics_fixture_add_point(fix, height/2, 0);

return fix;

