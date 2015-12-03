-- Store
-- FinalAppGroup5-2015

-- Created by: Justin Bronson
-- Created on: Nov 2015
-- Created for: ICS20
-- This scene is where you can get extra hints

Store = class()

function Store:init(x)
    -- you can accept and set parameters here
    local moveBackMScene
end

function Store:draw()
    -- Codea does not automatically call this method
    background(255, 159, 0, 255)
    
    --sprite("Dropbox:Red Back Rectangle Button")
    moveBackMScene = Button("Dropbox:Red Back Rectangle Button", vec2(100, 100))
    
    moveBackMScene:draw()
end

function Store:touched(touch)
    -- Codea does not automatically call this method
    moveBackMScene:touched(touch)
    
    if(moveBackMScene.selected == true) then
        Scene.Change("MScene")
    end
end
