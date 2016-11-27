///addBurstSpray(duration, numBursts, bulletsPerBurst, bulletSpeed, bulletType, pauseTime)
var newMap = ds_map_create(); //Create a new object (dictionary)

var duration = argument0;
var numBursts = argument1;
var bulletsPerBurst = argument2;
var bulletSpeed = argument3;
var bulletType = argument4;
var pauseTime = argument5;

var timePerBurst = duration/numBursts;

ds_map_add(newMap, "prevTime", current_time);
ds_map_add(newMap, "timePerBurst", timePerBurst);
ds_map_add(newMap, "numBursts", numBursts);
ds_map_add(newMap, "bulletsPerBurst", bulletsPerBurst);
ds_map_add(newMap, "bulletSpeed", bulletSpeed);
ds_map_add(newMap, "bulletType", bulletType);
ds_map_add(newMap, "pauseTime", pauseTime);

shotgunArray[shotgunArrayCount] = newMap;
shotgunArrayCount += 1;

