--[[

]]

Player = Class{}

--[[
    The Player constructor
    - party: Party of heroes (party class?)
    - items: Items of the player (inventory class?)
]]
function Player:init(def) 
    self.party = def.party
end

function Player:onNotify()

end