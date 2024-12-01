layer_set_visible("Collisions", false);
layer_set_visible("Spikes", false);
if (layer_exists("Arrow")) layer_set_visible("Arrow", false);

shards_at_room_start = global.shards_collected;

if (layer_exists("Transitions") and (room == rTown or room == rSchool or room == rPark or room == rSummit)) instance_create_layer(0, 0, "Transitions", oTransitionBegin);
else if (layer_exists("Transitions")) instance_create_layer(0, 0, "Transitions", oTransitionDeath);