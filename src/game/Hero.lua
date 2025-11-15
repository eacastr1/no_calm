--[[

    No Calm

    Author: Eddie Castro
    eacastr1@uno.edu
]]

Hero = Class{__includes = Entity}

--[[
    The Hero constructor
    - fear (number): fear value that has varying effects depending on the hero 
]]
function Hero:init(def)
    Entity.init(self, def)

    self.fear = def.fear
end

--[[
    Method: onNotify
------------------------
    Description: Notify the Hero object of an event.
]]
function Hero:onNotify()
    
end