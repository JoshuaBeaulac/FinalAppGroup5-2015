-- Store
-- FinalAppGroup5-2015

-- Created by: Josh beaulac
-- Created on: Nov 2015
-- Created for: ICS20
-- This program is where you can get extra hints
Store = class()
local buying1hint
local buying2hints
local buying3hints

function Store:init()
    buying1hint = Button("Dropbox:Star@-2k", vec2(300, 500, 100, 200))
    buying2hints = Button("Dropbox:Star@-2k", vec2(300, 160, 100, 100))
    buying3hints= Button("Dropbox:Star@-2k", vec2(300, 330, 100, 100))
    
    font("ArialRoundedMTBold")
    fontSize(150)
    fill(255, 8, 0, 255)
    
    text("Hi", 500, 400)
    
end


function Store:draw()
    
    buying1hint:draw()
    buying2hints:draw()
    buying3hints:draw()
    
    
    
    text("Store", 500, 668)
    
    fill(42, 22, 247, 255)
    fontSize(50)
    font("Arial-ItalicMT")
    text("Buy 1 Hint 5 Stars", 580, 500)
    
    
    
    fill(67, 0, 255, 255)
    fontSize(50)
    font("Arial-ItalicMT")
    text("Buy 2 Hints 10 Stars", 590, 325)
    
    
    fill(33, 0, 255, 255)
    fontSize(50)
    font("Arial-ItalicMT")
    text("Buy 3 Hints 15 Stars", 590, 150)
    
    
    fill(255, 0, 220, 255)
    fontSize(50)
    font("Arial-BoldItalicMT")
    text("Stars", 800, 700)
    
    fill(225, 0, 220, 225)
    font("Arial-ItalicMT")
    fontSize(50)
    print(stars)
    text(stars, 900, 700)
end

function Store:touched(touch)
    
    buying1hint:touched(touch)
    buying2hints:touched(touch)
    buying3hints:touched(touch)
    
    if(buying1hint.selected == true) then
        
    end
    
    if(buying2hints.selected == true) then
        
        
     if(buying3hints.selected ==true) then 
            
        end
        
    end 
end  