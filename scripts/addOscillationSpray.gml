///addOscillationSpray(duration, initialAngle, range, timePerOscillation, numberOfBullets, bulletSpeed, bulletType, pauseTime)

var newMap = ds_map_create(); //Create a new object (dictionary)

var duration = argument0;
var initialAngle = argument1;
var range = argument2;
var timePerOscillation = argument3;
var numBullets = argument4;
var bulletSpeed = argument5;
var bulletType = argument6;
var pauseTime = argument7;

var timePerBullet = duration/numBullets;


ds_map_add(newMap, "initialAngle", initialAngle);
ds_map_add(newMap, "range", range);
ds_map_add(newMap, "timePerBullet", timePerBullet);
ds_map_add(newMap, "timePerOscillation", timePerOscillation);
ds_map_add(newMap, "initialTime", current_time + pauseTime);
ds_map_add(newMap, "prevTime", current_time);
ds_map_add(newMap, "numBullets", numBullets);
ds_map_add(newMap, "bulletSpeed", bulletSpeed);
ds_map_add(newMap, "bulletType", bulletType);
ds_map_add(newMap, "pauseTime", pauseTime);

oscillationArray[oscillationArrayCount] = newMap;
oscillationArrayCount += 1;

