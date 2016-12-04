///resumeBurstSprays
var currentTime = current_time;
for (var i = 0; i < burstArrayCount; i += 1) { 
    var map = burstArray[i];
    map[? "prevTime"] = currentTime - map[? "resumeOffset"];
    //map[? "resumeOffset"] = 0; 
}
