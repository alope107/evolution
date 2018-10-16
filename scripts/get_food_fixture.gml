radius = argument0;

density = .1;
restitution = .1;
linear_damping = .1;
angular_damping = .1;
fric = .2;


fix = physics_fixture_create();
physics_fixture_set_density(fix, density);
physics_fixture_set_restitution(fix, restitution);
physics_fixture_set_linear_damping(fix, linear_damping);
physics_fixture_set_angular_damping(fix, angular_damping);
physics_fixture_set_circle_shape(fix, radius);

return fix;
