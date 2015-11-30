-- Main
-- FinalAppGroup5-2015

-- Created by: Justin Bronson
-- Created on: Nov 2015
-- Created for: ICS20
-- This is the main tab

-- Use this function to perform your initial setup
function setup()
    
    supportedOrientations(LANDSCAPE_ANY)
    displayMode(FULLSCREEN)
    noFill()
    noSmooth()
    noStroke()
    pushStyle()
    
    --create the scenes
    Scene("CLogo", CompanyLogo)
    Scene("GLogo", GameLogo)
    Scene("MScene", MainScene)
    Scene("MGame", MainGame)
    Scene("Store", Store)
    Scene("WSelect", WorldSelect)
    Scene("Setting", Settings)
    Scene("Credits", Credits)
    
    Scene.Change("CLogo")
    
end

-- This function gets called once every frame
function draw()
    -- This sets a dark background color 
    background(40, 40, 50)
    
    Scene.Draw()
end

function touched(touch)
    
    Scene.Touched(touch)
end

