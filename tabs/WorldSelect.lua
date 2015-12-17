-- WorldSelect
-- FinalAppGroup5-2015

-- Created by: Justin Bronson
-- Created on: Nov 2015
-- Created for: ICS20
-- This scene is where you can choose a world to play in

WorldSelect = class()

function WorldSelect:init(x)
    -- you can accept and set parameters here
    local moveIceberg
    local moveCandyland
    local moveStormy
    local movePeachy
    local moveStargaze
    local sky
    local moveBackMGame
end

function WorldSelect:draw()
    -- Codea does not automatically call this method
    sprite("Dropbox:Sky Background", 512, 384, 1024, 768)
    
    --sprite("Dropbox:Red Forward Button")
    --sprite("Dropbox:Blue Forward Button")
    --sprite("Dropbox:Green Forward Button")
    --sprite("Dropbox:Purple Forward Button")
    --sprite("Dropbox:Teal Forward Button")
    --sprite("Dropbox:Yellow Back Circle Button")
    moveIceberg = Button("Dropbox:Teal Forward Button", vec2(170, HEIGHT/2))
    moveCandyland = Button("Dropbox:Red Forward Button", vec2(340, HEIGHT/2))
    moveStormy = Button("Dropbox:Blue Forward Button", vec2(510, HEIGHT/2))
    movePeachy = Button("Dropbox:Yellow Forward Button", vec2(680, HEIGHT/2))
    moveStargaze = Button("Dropbox:Purple Forward Button", vec2(850, HEIGHT/2))
    moveBackMGame = Button("Dropbox:Yellow Back Circle Button", vec2(100, 100))
    
    moveIceberg:draw()
    moveCandyland:draw()
    moveStormy:draw()
    movePeachy:draw()
    moveStargaze:draw()
    moveBackMGame:draw()
end

function WorldSelect:touched(touch)
    -- Codea does not automatically call this method
    moveIceberg:touched(touch)
    
    if(moveIceberg.selected == true) then
        Scene.Change("Ice")
    end
    moveCandyland:touched(touch)
    
    if(moveCandyland.selected == true) then
        Scene.Change("Candy")
    end
    moveStormy:touched(touch)
    
    if(moveStormy.selected == true) then
        Scene.Change("Storm")
    end
    movePeachy:touched(touch)
    
    if(movePeachy.selected == true) then
        Scene.Change("Peach")
    end
    moveStargaze:touched(touch)
    
    if(moveStargaze.selected == true) then
        Scene.Change("Star")
    end
    moveBackMGame:touched(touch)
    
    if(moveBackMGame.selected == true) then
        Scene.Change("MGame")
    end
end