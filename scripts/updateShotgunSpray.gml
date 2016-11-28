///updateShotgunSpray()
for (var i = 0; i < shotgunArrayCount; i += 1) { 
    var map = shotgunArray[i];
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
        if ((dTime >= timePerBurst) && instance_exists(obj_player)) {
        
            //Create shotgun burst
            var bulletsPerBurst = map[? "bulletsPerBurst"];
            var angleBetweenBullets = 3;
            var currentAngle = point_direction(x,y, obj_player.x, obj_player.y) - (angleBetweenBullets * bulletsPerBurst/2)
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
        }
    } else {
        //Destroy the map and update the radialArray
        ds_map_destroy(shotgunArray[i]);
        for (var j = i;  j < shotgunArrayCount - 1; j += 1) {
            //Shift remaining maps
            shotgunArray[j] = shotgunArray[j+1];
            
            
        }
        //De-increment i;
        i -= 1;   
        
        //Subtract 1 from the count
        shotgunArrayCount -= 1;
    }
}
