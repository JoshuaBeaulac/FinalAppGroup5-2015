-- MainScene
-- FinalAppGroup5-2015

-- Created by: Justin Bronson
-- Created on: Nov 2015
-- Created for: ICS20
-- This scene displays multiple buttons to change to different scenes

MainScene = class()

--global to this fill
local moveMainGame
local moveStore
local tutorial

function MainScene:init(x)
    --sprite("Dropbox:Yellow Move Scene Forward Button")
    --sprite("Dropbox:Red Move Scene Forward Button")
    --sprite("Dropbox:Purple Info Button")
    moveMainGame = Button("Dropbox:Blue Move Scene Forward Button", vec2(362, HEIGHT/2))
    moveStore = Button("Dropbox:Yellow Move Scene Forward Button", vec2(662, HEIGHT/2))
    tutorial = Button("Dropbox:Purple Info Button", vec2(924, 100))
end

function MainScene:draw()
    -- Codea does not automatically call this method
    
    background(0, 183, 255, 255)
    moveMainGame:draw()
    moveStore:draw()
    tutorial:draw()
    
    font("AmericanTypewriter-Bold")
    fill(255, 16, 0, 255)
    text("Main Game", 362, 450)
    text("Store", 662, 450)
    text("Tutorial", 924, 168)

end

function MainScene:touched(touch)
    -- Codea does not automatically call this method
    moveMainGame:touched(touch)
    
    if(moveMainGame.selected == true) then
        Scene.Change("MGame")
    end
    
    moveStore:touched(touch)
    
    if(moveStore.selected == true) then
        Scene.Change("Store")
    end
end
