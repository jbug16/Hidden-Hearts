instance_destroy();

global.shards_collected++;
s(global.shards_collected);

if (other.yspd > 0) other.yspd = -5;

// show arrow
if (layer_exists("Arrow")) layer_set_visible("Arrow", true);