-- CandyLand
-- FinalAppGroup5-2015

-- Created by: Justin Bronson
-- Created on: Nov 2015
-- Created for: ICS20
-- This scene is where you can select witch level you want to play on CandyLand

CandyLand = class()

function CandyLand:init(x)
    -- you can accept and set parameters here
    local moveBackSelect
end

function CandyLand:draw()
    -- Codea does not automatically call this method
    
    --sprite("Dropbox:Red Back Circle Button")
    moveBackSelect = Button("Dropbox:Red Back Circle Button", vec2(100, 100))
    
    moveBackSelect:draw() 
end

function CandyLand:touched(touch)
    -- Codea does not automatically call this method
    moveBackSelect:touched(touch)
    
    if(moveBackSelect.selected == true) then
        Scene.Change("WSelect")
    end
end
