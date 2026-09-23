 -- 092126 [basic square moving around]
 function _init()
    ply = { x = 64, y = 64, spr = 1, flipx = true}
    boxy = {bx = rnd(120), by = rnd(120)}
    
    move = 4
    --set variables to make player flip depending on input


 end

 function _update() --square movement
    if btn(0) then 
        ply.x -= move
        ply.flipx = true
     --move left

    elseif btn(1) then
    ply.x += move
    ply.flipx = false
    
    end   --move right

    if btn(2) then
        ply.y -= move
    end  --move up

    if btn(3) then
        ply.y += move
    end   --move down 

    ply.x = mid(ply.x, 0, 120) --setting parameters for edge of the room/walls
    ply.y = mid(ply.y, 0, 120)
 end

 function _draw()
    cls(1)
    rectfill(boxy.bx, boxy.by, boxy.bx, boxy.by, 8) --drawn in order, will be behind the sprite

    spr(ply.spr, ply.x, ply.y, 1, 1, ply.flipx, false) --make this guy flip [instead of doing this, I could've made another sprite for the other direction]
    
 end

 

 



 -- yayy moving square!!
-- 092126 19:28 Goal: Set up collisions, make spr eat small squares
