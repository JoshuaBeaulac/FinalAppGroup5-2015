-- Credits
-- FinalAppGroup5-2015

-- Created by: Justin Bronson
-- Created on: Nov 2015
-- Created for: ICS20
-- This scene displays credit to the developers and designers of the app

Credits = class()

function Credits:init(x)
    -- you can accept and set parameters here
    local moveBackSettings
end

function Credits:draw()
    -- Codea does not automatically call this method
    background(111, 0, 255, 255)
    
    font("AmericanTypewriter-Bold")
    fontSize(30)
    fill(0, 0, 0, 255)
    
    text("Developers", 512, 650)
    text("Justin Bronson", 512, 600)
    text("Matthew Walsh", 512, 575)
    text("Anwyl Gabutero", 512, 550)
    text("Joshua Beaulac", 512, 525)
    
    text("Designers", 512, 425)
    text("Cameron", 512, 375)
    text("Vienna", 512, 350)
    text("Naomi", 512, 325)
    
    --sprite("Dropbox:Teal Back Circle Button")
    moveBackSettings = Button("Dropbox:Teal Back Circle Button", vec2( 100, 100))
    
    moveBackSettings:draw()
end

function Credits:touched(touch)
    -- Codea does not automatically call this method
    moveBackSettings:touched(touch)
    
    if(moveBackSettings.selected == true) then
        Scene.Change("Setting")
    end
end
