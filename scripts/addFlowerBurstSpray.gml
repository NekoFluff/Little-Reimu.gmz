///addFlowerBurstSpray(duration, numBursts, bulletsPerBurst, angleOffset, bulletSpeed, bulletType, pauseTime)
var newMap = ds_map_create(); //Create a new object (dictionary)

var duration = argument0;
var numBursts = argument1;
var bulletsPerBurst = argument2;
var angleOffset = argument3;
var bulletSpeed = argument4;
var bulletType = argument5;
var pauseTime = argument6;

var timePerBurst = duration/numBursts;


ds_map_add(newMap, "numBursts", numBursts);
ds_map_add(newMap, "bulletsPerBurst", bulletsPerBurst);
ds_map_add(newMap, "angleOffset", angleOffset);
ds_map_add(newMap, "prevTime", current_time);
ds_map_add(newMap, "timePerBurst", timePerBurst);
ds_map_add(newMap, "bulletSpeed", bulletSpeed);
ds_map_add(newMap, "bulletType", bulletType);
ds_map_add(newMap, "pauseTime", pauseTime);

flowerBurstArray[flowerBurstArrayCount] = newMap;
flowerBurstArrayCount += 1;

