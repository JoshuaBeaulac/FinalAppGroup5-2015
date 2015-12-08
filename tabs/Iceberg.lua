-- Iceberg
-- FinalAppGroup5-2015

-- Created by: Justin Bronson
-- Created on: Nov 2015
-- Created for: ICS20
-- This scene is where you can select witch level you want to play on IceBurg

Iceberg = class()

function Iceberg:init(x)
    -- you can accept and set parameters here
    local moveBackSelect
end

function Iceberg:draw()
    -- Codea does not automatically call this method
    sprite("Dropbox:iceberg", 512, 384, 1024, 768)
    
    --sprite("Dropbox:Teal Back Circle Button")
    moveBackSelect = Button("Dropbox:Teal Back Circle Button", vec2(100, 100))
    
    moveBackSelect:draw()
end

function Iceberg:touched(touch)
    -- Codea does not automatically call this method
    moveBackSelect:touched(touch)
    
    if(moveBackSelect.selected == true) then
        Scene.Change("WSelect")
    end
end
