-- Stormy
-- FinalAppGroup5-2015

-- Created by: Justin Bronson
-- Created on: Nov 2015
-- Created for: ICS20
-- This scene is where you can select witch level you want to play on Stormy

Stormy = class()

function Stormy:init(x)
    -- you can accept and set parameters here
    local moveBackSelect
end

function Stormy:draw()
    -- Codea does not automatically call this method
    
    --sprite("Dropbox:Blue Back Circle Button")
    moveBackSelect = Button("Dropbox:Blue Back Circle Button", vec2(100, 100))
    
    moveBackSelect:draw()
end

function Stormy:touched(touch)
    -- Codea does not automatically call this method
    moveBackSelect:touched(touch)
    
    if(moveBackSelect.selected == true) then
        Scene.Change("WSelect")
    end
end
