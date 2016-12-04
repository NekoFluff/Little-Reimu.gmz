///resumeOscillationSprays()
var currentTime = current_time;
for (var i = 0; i < oscillationArrayCount; i += 1) { 
    var map = oscillationArray[i];
    map[? "prevTime"] = currentTime - map[? "resumeOffset"];
    //map[? "resumeOffset"] = 0; 
}
