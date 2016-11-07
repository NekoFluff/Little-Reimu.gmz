///updateBurstSpray()
for (var i = 0; i < flowerBurstArrayCount; i += 1) { 
    var map = flowerBurstArray[i];
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
        if (dTime > timePerBurst) {
            
            if (!ds_map_exists(map, "previousXPosition")) {
                ds_map_add(map, "previousXPosition", obj_player.x);
                ds_map_add(map, "previousYPosition", obj_player.y);
            } else {
                var xPos = map[? "previousXPosition"];
                var yPos = map[? "previousYPosition"];
                 //Create bullet burst
                var angleOffset = map[? "angleOffset"];
                var currentAngle = angleOffset;
                var bulletsPerBurst = map[? "bulletsPerBurst"];
                var angleBetweenBullets = 360/bulletsPerBurst;
                var bulletSpeed = map[? "bulletSpeed"];
                var bulletType = map[? "bulletType"];
            
                for (var a = 0; a < bulletsPerBurst; a += 1) {
                    var flowerBurst = instance_create(xPos, yPos, obj_bulletFlower);
                    
                    
                    with(flowerBurst) {
                        self.bulletType = bulletType;
                        self.numBullets = bulletsPerBurst;
                        self.currentAngle = currentAngle;
                        self.angleBetweenBullets = angleBetweenBullets;
                        self.bulletSpeed = bulletSpeed;
                        event_user(0);
                    }
                    
                    
                }
                //Update position
                map[? "previousXPosition"] = obj_player.x;
                map[? "previousYPosition"] = obj_player.y;
                        
                prevTime = prevTime + timePerBurst; 
            
                map[? "prevTime"] = prevTime;
                map[? "numBursts"] = (numBursts - 1);
                map[? "angleOffset"] = angleOffset 
            }
            


        }
    } else {
        //Destroy the map and update the radialArray
        ds_map_destroy(flowerBurstArray[i]);
        for (var j = i;  j < flowerBurstArrayCount - 1; j += 1) {
            //Shift remaining maps
            flowerBurstArray[j] = flowerBurstArray[j+1];
            
            
        }
        //De-increment i;
        i -= 1;   
        
        //Subtract 1 from the count
        flowerBurstArrayCount -= 1;
    }
}
