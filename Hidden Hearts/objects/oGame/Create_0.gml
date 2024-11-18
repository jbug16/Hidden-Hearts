// Macros
#macro s show_debug_message

// Globals
global.shards_collected = 0;

// Start transition
instance_create_layer(x, y, "Transitions", oTransition);