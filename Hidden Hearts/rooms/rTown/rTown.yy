{
  "$GMRoom":"v1",
  "%Name":"rTown",
  "creationCodeFile":"",
  "inheritCode":false,
  "inheritCreationOrder":false,
  "inheritLayers":false,
  "instanceCreationOrder":[
    {"name":"inst_7581069B","path":"rooms/rTown/rTown.yy",},
    {"name":"inst_463DE706","path":"rooms/rTown/rTown.yy",},
    {"name":"inst_6425BD16","path":"rooms/rTown/rTown.yy",},
    {"name":"inst_2BF688FD","path":"rooms/rTown/rTown.yy",},
    {"name":"inst_15FA7A49","path":"rooms/rTown/rTown.yy",},
    {"name":"inst_27690881","path":"rooms/rTown/rTown.yy",},
    {"name":"inst_1F3B4FBB","path":"rooms/rTown/rTown.yy",},
    {"name":"inst_58F8A907","path":"rooms/rTown/rTown.yy",},
    {"name":"inst_40CACD22","path":"rooms/rTown/rTown.yy",},
    {"name":"inst_6C44E7FD","path":"rooms/rTown/rTown.yy",},
  ],
  "isDnd":false,
  "layers":[
    {"$GMRInstanceLayer":"","%Name":"Transitions","depth":0,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[],"layers":[],"name":"Transitions","properties":[],"resourceType":"GMRInstanceLayer","resourceVersion":"2.0","userdefinedDepth":false,"visible":true,},
    {"$GMRInstanceLayer":"","%Name":"UI","depth":100,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[],"layers":[],"name":"UI","properties":[],"resourceType":"GMRInstanceLayer","resourceVersion":"2.0","userdefinedDepth":false,"visible":true,},
    {"$GMRLayer":"","%Name":"FX","depth":200,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[
        {"$GMREffectLayer":"","%Name":"BW","depth":300,"effectEnabled":true,"effectType":"_filter_colourise","gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"name":"BW","properties":[
            {"name":"g_Intensity","type":0,"value":"1",},
            {"name":"g_TintCol","type":1,"value":"#FF000000",},
          ],"resourceType":"GMREffectLayer","resourceVersion":"2.0","userdefinedDepth":false,"visible":true,},
        {"$GMREffectLayer":"","%Name":"Leaves","depth":400,"effectEnabled":true,"effectType":"_effect_windblown_particles","gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"name":"Leaves","properties":[
            {"name":"param_sprite","type":2,"value":"sLeaf",},
            {"name":"param_num_particles","type":0,"value":"2",},
            {"name":"param_particle_spawn_time","type":0,"value":"100",},
            {"name":"param_particle_spawn_all_at_start","type":0,"value":"1",},
            {"name":"param_warmup_frames","type":0,"value":"0",},
            {"name":"param_particle_mass_min","type":0,"value":"0.005",},
            {"name":"param_particle_mass_max","type":0,"value":"0.01",},
            {"name":"param_particle_start_sprite_scale","type":0,"value":"1",},
            {"name":"param_particle_end_sprite_scale","type":0,"value":"1",},
            {"name":"param_particle_col_1","type":1,"value":"#FFFFFFFF",},
            {"name":"param_particle_col_alt_1","type":1,"value":"#FFFFFFFF",},
            {"name":"param_particle_col_2","type":1,"value":"#FFFFFFFF",},
            {"name":"param_particle_col_alt_2","type":1,"value":"#FFFFFFFF",},
            {"name":"param_particle_col_2_pos","type":0,"value":"0.33",},
            {"name":"param_particle_col_enabled_2","type":0,"value":"0",},
            {"name":"param_particle_col_3","type":1,"value":"#FFFFFFFF",},
            {"name":"param_particle_col_alt_3","type":1,"value":"#FFFFFFFF",},
            {"name":"param_particle_col_3_pos","type":0,"value":"0.66",},
            {"name":"param_particle_col_enabled_3","type":0,"value":"0",},
            {"name":"param_particle_col_4","type":1,"value":"#FFFFFFFF",},
            {"name":"param_particle_col_alt_4","type":1,"value":"#FFFFFFFF",},
            {"name":"param_particle_initial_velocity_range_x_min","type":0,"value":"-100",},
            {"name":"param_particle_initial_velocity_range_x_max","type":0,"value":"100",},
            {"name":"param_particle_initial_velocity_range_y_min","type":0,"value":"-100",},
            {"name":"param_particle_initial_velocity_range_y_max","type":0,"value":"100",},
            {"name":"param_particle_initial_rotation_min","type":0,"value":"0",},
            {"name":"param_particle_initial_rotation_max","type":0,"value":"360",},
            {"name":"param_particle_rot_speed_min","type":0,"value":"-360",},
            {"name":"param_particle_rot_speed_max","type":0,"value":"360",},
            {"name":"param_particle_align_vel","type":0,"value":"1",},
            {"name":"param_particle_lifetime_min","type":0,"value":"100",},
            {"name":"param_particle_lifetime_max","type":0,"value":"100",},
            {"name":"param_particle_update_skip","type":0,"value":"1",},
            {"name":"param_particle_spawn_border_prop","type":0,"value":"0.25",},
            {"name":"param_particle_src_blend","type":0,"value":"5",},
            {"name":"param_particle_dest_blend","type":0,"value":"6",},
            {"name":"param_trails_only","type":0,"value":"0",},
            {"name":"param_trail_chance","type":0,"value":"0",},
            {"name":"param_trail_lifetime_min","type":0,"value":"0.5",},
            {"name":"param_trail_lifetime_max","type":0,"value":"1",},
            {"name":"param_trail_thickness_min","type":0,"value":"0.15",},
            {"name":"param_trail_thickness_max","type":0,"value":"0.15",},
            {"name":"param_trail_col_1","type":1,"value":"#19FFFFFF",},
            {"name":"param_trail_col_alt_1","type":1,"value":"#3FFFFFFF",},
            {"name":"param_trail_col_2","type":1,"value":"#19FFFFFF",},
            {"name":"param_trail_col_alt_2","type":1,"value":"#3FFFFFFF",},
            {"name":"param_trail_col_2_pos","type":0,"value":"0.5",},
            {"name":"param_trail_col_enabled_2","type":0,"value":"1",},
            {"name":"param_trail_col_3","type":1,"value":"#19FFFFFF",},
            {"name":"param_trail_col_alt_3","type":1,"value":"#3FFFFFFF",},
            {"name":"param_trail_col_3_pos","type":0,"value":"0.66",},
            {"name":"param_trail_col_enabled_3","type":0,"value":"0",},
            {"name":"param_trail_col_4","type":1,"value":"#00FFFFFF",},
            {"name":"param_trail_col_alt_4","type":1,"value":"#00FFFFFF",},
            {"name":"param_trail_min_segment_length","type":0,"value":"20",},
            {"name":"param_trail_src_blend","type":0,"value":"5",},
            {"name":"param_trail_dest_blend","type":0,"value":"6",},
            {"name":"param_num_blowers","type":0,"value":"0",},
            {"name":"param_blower_size_min","type":0,"value":"0.2",},
            {"name":"param_blower_size_max","type":0,"value":"0.6",},
            {"name":"param_blower_speed_min","type":0,"value":"0.2",},
            {"name":"param_blower_speed_max","type":0,"value":"0.5",},
            {"name":"param_blower_rot_speed_min","type":0,"value":"-180",},
            {"name":"param_blower_rot_speed_max","type":0,"value":"180",},
            {"name":"param_blower_force_min","type":0,"value":"5",},
            {"name":"param_blower_force_max","type":0,"value":"15",},
            {"name":"param_blower_camvec_scale","type":0,"value":"-1",},
            {"name":"param_force_grid_sizex","type":0,"value":"8",},
            {"name":"param_force_grid_sizey","type":0,"value":"8",},
            {"name":"param_wind_vector_x","type":0,"value":"-4",},
            {"name":"param_wind_vector_y","type":0,"value":"-1",},
            {"name":"param_dragcoeff","type":0,"value":"6",},
            {"name":"param_grav_accel","type":0,"value":"300",},
            {"name":"param_debug_grid","type":0,"value":"0",},
          ],"resourceType":"GMREffectLayer","resourceVersion":"2.0","userdefinedDepth":false,"visible":true,},
      ],"name":"FX","properties":[],"resourceType":"GMRLayer","resourceVersion":"2.0","userdefinedDepth":false,"visible":true,},
    {"$GMRLayer":"","%Name":"Objs","depth":500,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[
        {"$GMRInstanceLayer":"","%Name":"Player","depth":600,"effectEnabled":true,"effectType":null,"gridX":16,"gridY":16,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[
            {"$GMRInstance":"v1","%Name":"inst_7581069B","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"name":"inst_7581069B","objectId":{"name":"oCamera","path":"objects/oCamera/oCamera.yy",},"properties":[],"resourceType":"GMRInstance","resourceVersion":"2.0","rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":0.0,"y":-16.0,},
            {"$GMRInstance":"v1","%Name":"inst_27690881","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"name":"inst_27690881","objectId":{"name":"oPlayer","path":"objects/oPlayer/oPlayer.yy",},"properties":[],"resourceType":"GMRInstance","resourceVersion":"2.0","rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":32.0,"y":256.0,},
          ],"layers":[],"name":"Player","properties":[],"resourceType":"GMRInstanceLayer","resourceVersion":"2.0","userdefinedDepth":false,"visible":true,},
        {"$GMRInstanceLayer":"","%Name":"Arrow","depth":700,"effectEnabled":true,"effectType":null,"gridX":16,"gridY":16,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[
            {"$GMRInstance":"v1","%Name":"inst_6C44E7FD","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"name":"inst_6C44E7FD","objectId":{"name":"oArrow","path":"objects/oArrow/oArrow.yy",},"properties":[],"resourceType":"GMRInstance","resourceVersion":"2.0","rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":912.0,"y":224.0,},
          ],"layers":[],"name":"Arrow","properties":[],"resourceType":"GMRInstanceLayer","resourceVersion":"2.0","userdefinedDepth":false,"visible":true,},
        {"$GMRInstanceLayer":"","%Name":"Interactables","depth":800,"effectEnabled":true,"effectType":null,"gridX":16,"gridY":16,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[
            {"$GMRInstance":"v1","%Name":"inst_2BF688FD","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"name":"inst_2BF688FD","objectId":{"name":"oSecretNote","path":"objects/oSecretNote/oSecretNote.yy",},"properties":[],"resourceType":"GMRInstance","resourceVersion":"2.0","rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":842.0,"y":256.0,},
          ],"layers":[],"name":"Interactables","properties":[],"resourceType":"GMRInstanceLayer","resourceVersion":"2.0","userdefinedDepth":false,"visible":true,},
        {"$GMRInstanceLayer":"","%Name":"NPCs","depth":900,"effectEnabled":true,"effectType":null,"gridX":16,"gridY":16,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[
            {"$GMRInstance":"v1","%Name":"inst_15FA7A49","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"name":"inst_15FA7A49","objectId":{"name":"oNPC1","path":"objects/oNPC1/oNPC1.yy",},"properties":[],"resourceType":"GMRInstance","resourceVersion":"2.0","rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":144.0,"y":256.0,},
            {"$GMRInstance":"v1","%Name":"inst_40CACD22","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"name":"inst_40CACD22","objectId":{"name":"oNPC1","path":"objects/oNPC1/oNPC1.yy",},"properties":[],"resourceType":"GMRInstance","resourceVersion":"2.0","rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":544.0,"y":256.0,},
          ],"layers":[],"name":"NPCs","properties":[],"resourceType":"GMRInstanceLayer","resourceVersion":"2.0","userdefinedDepth":false,"visible":true,},
        {"$GMRInstanceLayer":"","%Name":"Collisions","depth":1000,"effectEnabled":true,"effectType":null,"gridX":16,"gridY":16,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[
            {"$GMRInstance":"v1","%Name":"inst_463DE706","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"name":"inst_463DE706","objectId":{"name":"oWall","path":"objects/oWall/oWall.yy",},"properties":[],"resourceType":"GMRInstance","resourceVersion":"2.0","rotation":0.0,"scaleX":61.0,"scaleY":1.0,"x":0.0,"y":256.0,},
            {"$GMRInstance":"v1","%Name":"inst_6425BD16","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"name":"inst_6425BD16","objectId":{"name":"oWall","path":"objects/oWall/oWall.yy",},"properties":[],"resourceType":"GMRInstance","resourceVersion":"2.0","rotation":0.0,"scaleX":1.0,"scaleY":17.0,"x":-16.0,"y":0.0,},
            {"$GMRInstance":"v1","%Name":"inst_58F8A907","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"name":"inst_58F8A907","objectId":{"name":"oWall","path":"objects/oWall/oWall.yy",},"properties":[],"resourceType":"GMRInstance","resourceVersion":"2.0","rotation":0.0,"scaleX":1.0,"scaleY":14.0,"x":960.0,"y":0.0,},
            {"$GMRInstance":"v1","%Name":"inst_1F3B4FBB","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"name":"inst_1F3B4FBB","objectId":{"name":"oDoor","path":"objects/oDoor/oDoor.yy",},"properties":[],"resourceType":"GMRInstance","resourceVersion":"2.0","rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":960.0,"y":224.0,},
          ],"layers":[],"name":"Collisions","properties":[],"resourceType":"GMRInstanceLayer","resourceVersion":"2.0","userdefinedDepth":false,"visible":false,},
      ],"name":"Objs","properties":[],"resourceType":"GMRLayer","resourceVersion":"2.0","userdefinedDepth":false,"visible":true,},
    {"$GMRTileLayer":"","%Name":"GroundDecor","depth":1100,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"name":"GroundDecor","properties":[],"resourceType":"GMRTileLayer","resourceVersion":"2.0","tiles":{"SerialiseHeight":17,"SerialiseWidth":60,"TileCompressedData":[
          -903,-2147483648,4,1168,-2147483648,-2147483648,1165,-4,-2147483648,1,1162,-3,-2147483648,1,1163,-7,
          -2147483648,1,1166,-5,-2147483648,2,1160,1164,-14,-2147483648,1,1165,-4,-2147483648,2,1163,1168,-5,-2147483648,
          1,1162,-62,-2147483648,
        ],"TileDataFormat":1,},"tilesetId":{"name":"tsBackground","path":"tilesets/tsBackground/tsBackground.yy",},"userdefinedDepth":false,"visible":true,"x":0,"y":0,},
    {"$GMRTileLayer":"","%Name":"Ground","depth":1200,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"name":"Ground","properties":[],"resourceType":"GMRTileLayer","resourceVersion":"2.0","tiles":{"SerialiseHeight":17,"SerialiseWidth":60,"TileCompressedData":[-960,-2147483648,1,1439,-58,1440,1,1441,],"TileDataFormat":1,},"tilesetId":{"name":"tsBackground","path":"tilesets/tsBackground/tsBackground.yy",},"userdefinedDepth":false,"visible":true,"x":0,"y":0,},
    {"$GMRBackgroundLayer":"","%Name":"HousesFront","animationFPS":30.0,"animationSpeedType":0,"colour":4294967295,"depth":1300,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"hspeed":0.0,"htiled":true,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"name":"HousesFront","properties":[],"resourceType":"GMRBackgroundLayer","resourceVersion":"2.0","spriteId":{"name":"sHousesFront","path":"sprites/sHousesFront/sHousesFront.yy",},"stretch":false,"userdefinedAnimFPS":false,"userdefinedDepth":false,"visible":true,"vspeed":0.0,"vtiled":false,"x":0,"y":-14,},
    {"$GMRTileLayer":"","%Name":"Fences","depth":1400,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"name":"Fences","properties":[],"resourceType":"GMRTileLayer","resourceVersion":"2.0","tiles":{"SerialiseHeight":17,"SerialiseWidth":60,"TileCompressedData":[
          -911,-2147483648,-2,288,1,289,-8,-2147483648,3,287,288,288,-10,-2147483648,-2,0,-4,-2147483648,-2,288,
          1,289,-8,-2147483648,3,286,288,288,-65,-2147483648,
        ],"TileDataFormat":1,},"tilesetId":{"name":"tsBackground","path":"tilesets/tsBackground/tsBackground.yy",},"userdefinedDepth":false,"visible":true,"x":0,"y":0,},
    {"$GMRBackgroundLayer":"","%Name":"TreesFront","animationFPS":30.0,"animationSpeedType":0,"colour":4294967295,"depth":1500,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"hspeed":0.0,"htiled":true,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"name":"TreesFront","properties":[],"resourceType":"GMRBackgroundLayer","resourceVersion":"2.0","spriteId":{"name":"sTreesFront","path":"sprites/sTreesFront/sTreesFront.yy",},"stretch":false,"userdefinedAnimFPS":false,"userdefinedDepth":false,"visible":true,"vspeed":0.0,"vtiled":false,"x":0,"y":-14,},
    {"$GMRBackgroundLayer":"","%Name":"TreesMid","animationFPS":30.0,"animationSpeedType":0,"colour":4294967295,"depth":1600,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"hspeed":0.0,"htiled":true,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"name":"TreesMid","properties":[],"resourceType":"GMRBackgroundLayer","resourceVersion":"2.0","spriteId":{"name":"sTreesMid","path":"sprites/sTreesMid/sTreesMid.yy",},"stretch":false,"userdefinedAnimFPS":false,"userdefinedDepth":false,"visible":true,"vspeed":0.0,"vtiled":false,"x":0,"y":-14,},
    {"$GMRBackgroundLayer":"","%Name":"HousesBack","animationFPS":30.0,"animationSpeedType":0,"colour":4294967295,"depth":1700,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"hspeed":0.0,"htiled":true,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"name":"HousesBack","properties":[],"resourceType":"GMRBackgroundLayer","resourceVersion":"2.0","spriteId":{"name":"sHousesBack","path":"sprites/sHousesBack/sHousesBack.yy",},"stretch":false,"userdefinedAnimFPS":false,"userdefinedDepth":false,"visible":true,"vspeed":0.0,"vtiled":false,"x":0,"y":-14,},
    {"$GMRBackgroundLayer":"","%Name":"TreesBack","animationFPS":30.0,"animationSpeedType":0,"colour":4294967295,"depth":1800,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"hspeed":0.0,"htiled":true,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"name":"TreesBack","properties":[],"resourceType":"GMRBackgroundLayer","resourceVersion":"2.0","spriteId":{"name":"sTreesBack","path":"sprites/sTreesBack/sTreesBack.yy",},"stretch":false,"userdefinedAnimFPS":false,"userdefinedDepth":false,"visible":true,"vspeed":0.0,"vtiled":false,"x":0,"y":-14,},
    {"$GMRBackgroundLayer":"","%Name":"Mountains","animationFPS":30.0,"animationSpeedType":0,"colour":4294967295,"depth":1900,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"hspeed":0.0,"htiled":true,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"name":"Mountains","properties":[],"resourceType":"GMRBackgroundLayer","resourceVersion":"2.0","spriteId":{"name":"sMountains","path":"sprites/sMountains/sMountains.yy",},"stretch":false,"userdefinedAnimFPS":false,"userdefinedDepth":false,"visible":true,"vspeed":0.0,"vtiled":false,"x":0,"y":-14,},
    {"$GMRLayer":"","%Name":"Clouds","depth":2000,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[
        {"$GMRBackgroundLayer":"","%Name":"Clouds2","animationFPS":30.0,"animationSpeedType":0,"colour":4294967295,"depth":2100,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"hspeed":0.0,"htiled":true,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"name":"Clouds2","properties":[],"resourceType":"GMRBackgroundLayer","resourceVersion":"2.0","spriteId":{"name":"sCloud2","path":"sprites/sCloud2/sCloud2.yy",},"stretch":false,"userdefinedAnimFPS":false,"userdefinedDepth":false,"visible":true,"vspeed":0.0,"vtiled":false,"x":0,"y":60,},
        {"$GMRBackgroundLayer":"","%Name":"Clouds1","animationFPS":30.0,"animationSpeedType":0,"colour":4294967295,"depth":2200,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"hspeed":0.0,"htiled":true,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"name":"Clouds1","properties":[],"resourceType":"GMRBackgroundLayer","resourceVersion":"2.0","spriteId":{"name":"sCloud1","path":"sprites/sCloud1/sCloud1.yy",},"stretch":false,"userdefinedAnimFPS":false,"userdefinedDepth":false,"visible":true,"vspeed":0.0,"vtiled":false,"x":0,"y":40,},
      ],"name":"Clouds","properties":[],"resourceType":"GMRLayer","resourceVersion":"2.0","userdefinedDepth":false,"visible":true,},
    {"$GMRBackgroundLayer":"","%Name":"Sky","animationFPS":30.0,"animationSpeedType":0,"colour":4294967295,"depth":2300,"effectEnabled":true,"effectType":"none","gridX":16,"gridY":16,"hierarchyFrozen":false,"hspeed":0.0,"htiled":true,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"name":"Sky","properties":[],"resourceType":"GMRBackgroundLayer","resourceVersion":"2.0","spriteId":{"name":"sSky","path":"sprites/sSky/sSky.yy",},"stretch":true,"userdefinedAnimFPS":false,"userdefinedDepth":false,"visible":true,"vspeed":0.0,"vtiled":false,"x":0,"y":0,},
  ],
  "name":"rTown",
  "parent":{
    "name":"Rooms",
    "path":"folders/Rooms.yy",
  },
  "parentRoom":null,
  "physicsSettings":{
    "inheritPhysicsSettings":false,
    "PhysicsWorld":false,
    "PhysicsWorldGravityX":0.0,
    "PhysicsWorldGravityY":10.0,
    "PhysicsWorldPixToMetres":0.1,
  },
  "resourceType":"GMRoom",
  "resourceVersion":"2.0",
  "roomSettings":{
    "Height":270,
    "inheritRoomSettings":false,
    "persistent":false,
    "Width":960,
  },
  "sequenceId":null,
  "views":[
    {"hborder":32,"hport":540,"hspeed":-1,"hview":135,"inherit":false,"objectId":null,"vborder":32,"visible":true,"vspeed":-1,"wport":960,"wview":240,"xport":0,"xview":0,"yport":0,"yview":135,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
  ],
  "viewSettings":{
    "clearDisplayBuffer":true,
    "clearViewBackground":true,
    "enableViews":true,
    "inheritViewSettings":false,
  },
  "volume":1.0,
}