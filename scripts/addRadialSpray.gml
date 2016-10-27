///addRadialSpray(duration (millisec), startAngel, endAngel, numberOfBullets)

var newMap = ds_map_create(); //Create a new object (dictionary)

var duration = argument0;
var currentAngle = argument1;
var endAngle = argument2;
var numBullets = argument3;
var pauseTime = argument4;

var timePerBullet = duration/numBullets;
var dAngle = (endAngle-currentAngle)/numBullets;

ds_map_add(newMap, "currentAngle", currentAngle);
ds_map_add(newMap, "timePerBullet", timePerBullet);
ds_map_add(newMap, "dAngle", dAngle);
ds_map_add(newMap, "prevTime", current_time);
ds_map_add(newMap, "numBullets", numBullets);
ds_map_add(newMap, "pauseTime", pauseTime);

radialArray[radialArrayCount] = newMap;
radialArrayCount += 1;

