-- Settings
-- FinalAppGroup5-2015

-- Created by: Justin Bronson
-- Created on: Nov 2015
-- Created for: ICS20
-- This scene is where you can change your settings to your preference

Settings = class()

function Settings:init(x)
    -- you can accept and set parameters here
    local moveCredits
    local moveBackMGame
    local musicButtonOff
    local musicButtonOn
    local resetButton
end

function Settings:draw()
    -- Codea does not automatically call this method
    background(0, 222, 255, 255)
    
    font("Copperplate-Bold")
    fontSize(20)
    fill(0, 0, 0, 255)
    
    text("Credits", 512, 175)
    text("Reset", 512, 325)
    
    --sprite("Dropbox:Red Info Button")
    --sprite("Dropbox:Red Back Circle Button")
    --sprite("Dropbox:Star Gold")
    --sprite("Dropbox:Star Black")
    moveCredits = Button("Dropbox:Red Info Button", vec2(WIDTH/2, 100))
    moveBackMGame = Button("Dropbox:Red Back Circle Button", vec2(100, 100))
    resetButton = Button("Dropbox:Star Gold", vec2(WIDTH/2, 250))
    
    moveCredits:draw()
    moveBackMGame:draw()
    resetButton:draw()
end

function Settings:touched(touch)
    -- Codea does not automatically call this method
    moveCredits:touched(touch)
    
    if(moveCredits.selected == true) then
        Scene.Change("Credits")
    end
    moveBackMGame:touched(touch)
    
    if(moveBackMGame.selected == true) then
        Scene.Change("MGame")
    end
    resetButton:touched(touch)
    
    if(resetButton.selected == true) then
        stars = nil
        hints = nil
        highscore = nil
    end
end
