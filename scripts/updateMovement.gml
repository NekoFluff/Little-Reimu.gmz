///updateMovement()
if (point_distance(x,y,targetXPos,targetYPos) > movementSpeed) {
    direction = point_direction(x, y, targetXPos, targetYPos);
    speed = movementSpeed;
} else {
    speed = 0;
}
