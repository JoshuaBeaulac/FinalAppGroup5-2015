-- Tutorial
-- FinalAppGroup5-2015

-- Created by: Justin Bronson
-- Created on: Nov 2015
-- Created for: ICS20
-- This scene displays how to play the game to the user

Tutorial = class()

function Tutorial:init(x)
    -- you can accept and set parameters here
    local exitTutorial
end

function Tutorial:draw()
    -- Codea does not automatically call this method
    background(0, 78, 255, 255)
    
    --sprite("Dropbox:Purple Cancel Button")
    exitTutorial = Button("Dropbox:Purple Cancel Button", vec2(100, 668))
    
    exitTutorial:draw()
end

function Tutorial:touched(touch)
    -- Codea does not automatically call this method
    exitTutorial:touched(touch)
    
    if(exitTutorial.selected == true) then
        Scene.Change("MScene")
    end
end
