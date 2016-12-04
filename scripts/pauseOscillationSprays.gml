///pauseOscillationSprays()
var currentTime = current_time;
for (var i = 0; i < oscillationArrayCount; i += 1) { 
    var map = oscillationArray[i];
    map[? "resumeOffset"] = currentTime - map[? "prevTime"];
}
