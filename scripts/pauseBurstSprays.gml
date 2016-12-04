///pauseBurstSprays()
var currentTime = current_time;
for (var i = 0; i < burstArrayCount; i += 1) { 
    var map = burstArray[i];
    map[? "resumeOffset"] = currentTime - map[? "prevTime"];
}
