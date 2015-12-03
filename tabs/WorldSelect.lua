-- WorldSelect
-- FinalAppGroup5-2015

-- Created by: Justin Bronson
-- Created on: Nov 2015
-- Created for: ICS20
-- This scene is where you can choose a world to play in

WorldSelect = class()

function WorldSelect:init(x)
    -- you can accept and set parameters here
    local moveWorldOne
    local sky
    local moveBackMGame
end

function WorldSelect:draw()
    -- Codea does not automatically call this method
    sprite("Dropbox:Sky Background", 512, 384, 1024, 768)
    
    --sprite("Dropbox:Yellow Forward Button")
    --sprite("Dropbox:Yellow Back Circle Button")
    moveWorldOne = Button("Dropbox:Yellow Forward Button", vec2(204, HEIGHT/2))
    moveBackMGame = Button("Dropbox:Yellow Back Circle Button", vec2(100, 100))
    
    moveWorldOne:draw()
    moveBackMGame:draw()
end

function WorldSelect:touched(touch)
    -- Codea does not automatically call this method
    moveWorldOne:touched(touch)
    
    if(moveWorldOne.selected == true) then
        Scene.Change("Ice")
    end
    moveBackMGame:touched(touch)
    
    if(moveBackMGame.selected == true) then
        Scene.Change("MGame")
    end
end