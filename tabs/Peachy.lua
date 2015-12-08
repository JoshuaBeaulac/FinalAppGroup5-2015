-- Peachy
-- FinalAppGroup5-2015

-- Created by: Justin Bronson
-- Created on: Nov 2015
-- Created for: ICS20
-- This scene is where you can select witch level you want to play on Peachy

Peachy = class()

function Peachy:init(x)
    -- you can accept and set parameters here
    local moveBackSelect
end

function Peachy:draw()
    -- Codea does not automatically call this method
    sprite("Dropbox:peachy", 512, 384, 1024, 768)
    
    --sprite("Dropbox:Yellow Back Circle Button")
    moveBackSelect = Button("Dropbox:Yellow Back Circle Button", vec2(100, 100)) 
    
    moveBackSelect:draw() 
end

function Peachy:touched(touch)
    -- Codea does not automatically call this method
    moveBackSelect:touched(touch)
    
    if(moveBackSelect.selected == true) then
        Scene.Change("WSelect")
    end
end
