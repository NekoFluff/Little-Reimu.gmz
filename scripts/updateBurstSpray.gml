///updateBurstSpray()
for (var i = 0; i < burstArrayCount; i += 1) { 
    var map = burstArray[i];
    var numBursts = map[? "numBursts"]

    //Time variables
    var prevTime = map[? "prevTime"];
    var pauseTime = map[? "pauseTime"];
    var timePerBurst = map[? "timePerBurst"];
    
    var currentTime = current_time;
    var dTime = currentTime - prevTime;
    
    if (pauseTime > 0) {
        
        pauseTime -= dTime;
        map[? "pauseTime"] = pauseTime;
        
        prevTime = currentTime;
        map[? "prevTime"] = prevTime;
        
    } else if (numBursts > 0) { //While you still have bullets to shoot...
        
        //Check if it is the time to shoot.
        if (dTime >= timePerBurst) {
        
            //Create bullet burst
            var angleOffset = map[? "angleOffset"];
            var currentAngle = angleOffset;
            var bulletsPerBurst = map[? "bulletsPerBurst"];
            var angleBetweenBullets = 360/bulletsPerBurst;
            var bulletSpeed = map[? "bulletSpeed"];
            var bulletType = map[? "bulletType"];
            
            for (var a = 0; a < bulletsPerBurst; a += 1) {
                var bullet = instance_create(x,y, bulletType);
                bullet.sfxEnabled = true;
                bullet.direction = currentAngle;
                bullet.image_angle = currentAngle;
                currentAngle += angleBetweenBullets;
                
                bullet.speed = bulletSpeed;
                //bullet.image_xscale = 0.3;
                //bullet.image_yscale = 0.3;
            }
            
            if ((dTime - timePerBurst) >= 0.25 * timePerBurst) {
                prevTime = prevTime + dTime; 
            } else {
                prevTime = prevTime + timePerBurst; 
            }
            
            map[? "prevTime"] = prevTime;
            map[? "numBursts"] = (numBursts - 1);
            map[? "angleOffset"] = angleOffset + map[? "rotationPerBurst"];
        }
    } else {
        //Destroy the map and update the radialArray
        ds_map_destroy(burstArray[i]);
        for (var j = i;  j < burstArrayCount - 1; j += 1) {
            //Shift remaining maps
            burstArray[j] = burstArray[j+1];
            
            
        }
        //De-increment i;
        i -= 1;   
        
        //Subtract 1 from the count
        burstArrayCount -= 1;
    }
}
