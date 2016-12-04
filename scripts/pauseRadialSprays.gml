///pauseRadialSprays()
var currentTime = current_time;
for (var i = 0; i < radialArrayCount; i += 1) { 
    var map = radialArray[i];
    map[? "resumeOffset"] = currentTime - map[? "prevTime"];
}
