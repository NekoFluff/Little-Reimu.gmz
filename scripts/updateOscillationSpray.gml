///updateRadialSpray()
for (var i = 0; i < oscillationArrayCount; i += 1) { 
    var map = oscillationArray[i];
    var prevTime = map[? "prevTime"]
    var numBullets = map[? "numBullets"];    
    var pauseTime = map[? "pauseTime"];
    
    var currentTime = current_time;
    var dTime = currentTime - prevTime;
    
    if (pauseTime > 0) {
        
        pauseTime -= dTime;
        map[? "pauseTime"] = pauseTime;
        
        prevTime = currentTime;
        map[? "prevTime"] = prevTime;
        
    } else if (numBullets > 0) { //While you still have bullets to shoot...
        
        //Check if it is the time to shoot.
        var timePerBullet = map[? "timePerBullet"]
        if (dTime >= timePerBullet) {
            
            //Retrieve required values
            var initialAngle = map[? "initialAngle"];
            var bulletSpeed = map[? "bulletSpeed"];
            var bulletType = map[? "bulletType"];    
            var initialTime = map[? "initialTime"];
            var timePerOscillation = map[? "timePerOscillation"]
            var range = map[? "range"]; //Degrees in each direction
            
            var totalAngle = (currentTime - initialTime)/(timePerOscillation)*2*pi
            var newDirection = initialAngle + sin(totalAngle)*range
            
            //Create bullet
            var bullet = instance_create(x,y, bulletType);
            bullet.sfxEnabled = true;
            bullet.direction = newDirection;
            bullet.image_angle = newDirection;
            bullet.speed = bulletSpeed;
            //bullet.image_xscale = 0.3;
            //bullet.image_yscale = 0.3;
            
            if ((dTime - timePerBullet) >= 0.25 * timePerBullet) {
                prevTime = prevTime + dTime; 
            } else {
                prevTime = prevTime + timePerBullet; 
            }
            
            numBullets -= 1;
            
            map[? "prevTime"] = prevTime;
            map[? "numBullets"] = numBullets;
        }
    } else {
        //Destroy the map and update the radialArray
        ds_map_destroy(oscillationArray[i]);
        for (var j = i;  j < oscillationArrayCount - 1; j += 1) {
            //Shift remaining maps
            oscillationArray[j] = oscillationArray[j+1];
            
              
        }
        //De-increment i;
        i -= 1; 
        
        //Subtract 1 from the count
        oscillationArrayCount = oscillationArrayCount - 1;
        show_debug_message("Oscillation Array Count: " + string(oscillationArrayCount));
    }
}
