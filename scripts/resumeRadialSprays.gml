///resumeRadialSprays()
var currentTime = current_time;
for (var i = 0; i < radialArrayCount; i += 1) { 
    var map = radialArray[i];
    map[? "prevTime"] = currentTime - map[? "resumeOffset"];
    //map[? "resumeOffset"] = 0; 
}
