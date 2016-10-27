///addBurstSpray(duration, numBursts, bulletsPerBurst, rotationPerBurst, angleOffset, pauseTime)
var newMap = ds_map_create(); //Create a new object (dictionary)

var duration = argument0;
var numBursts = argument1;
var bulletsPerBurst = argument2;
var rotationPerBurst = argument3;
var angleOffset = argument4;
var pauseTime = argument5;

var timePerBurst = duration/numBursts;


ds_map_add(newMap, "numBursts", numBursts);
ds_map_add(newMap, "bulletsPerBurst", bulletsPerBurst);
ds_map_add(newMap, "angleOffset", angleOffset);
ds_map_add(newMap, "prevTime", current_time);
ds_map_add(newMap, "timePerBurst", timePerBurst);
ds_map_add(newMap, "rotationPerBurst", rotationPerBurst);
ds_map_add(newMap, "pauseTime", pauseTime);

burstArray[burstArrayCount] = newMap;
burstArrayCount += 1;

