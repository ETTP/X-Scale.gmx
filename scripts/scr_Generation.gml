//Starting Heiht & Alternnt Height.
var sh,ah;

//Snapping to a 32x32 grid.
sh = (room_height/2) - floor(random(room_height/3));
sh = (sh/32) * 32;;
var ah = sh;

//Layers l=Layers
var levelDirt, levelStone, l;

for(xx = 0; xx < room_width; xx += 32){
    instance_create(xx, ah, obj_Grass);
    
    //Init Levels to grid.
    levelDirt = ((room_height - ah) / 32) * 32;
    levelStone = ((room_height) / 32) * 32;
    
    //Dirt Level.
    for(yy = ah; yy < levelDirt; yy += 32){
        instance_create(xx, yy + 32, obj_Dirt);
        l = yy
    }
    
    //Stone Level
    for(yy = l; yy < levelStone; yy += 32){
        if(yy >= ah){
            instance_create(xx, yy + 32, obj_Stone);
        } else {
            instance_create(xx, yy, obj_Water);
        }
    }
    ah += choose(32, -32, 0);
}
