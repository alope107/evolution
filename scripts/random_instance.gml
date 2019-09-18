// Selects a random instance of a given object type.
// Returns -1 if no instance of that type exist.

var type, idx, count;

type = argument0;
count = instance_number(type);
if (count == 0) {
    return -1;
}
idx = floor(random(count));
return instance_find(type,idx);
