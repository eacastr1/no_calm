Party = Class{}

--[[
    The Party constructor
    - party: a party of heroes for the player to control
    - active: the active hero controlled by the player
]]
function Party:init(def)
    self.party = def.party
    self.active = self.party[def.active]
end

--[[
    Method: changeActiveHero
]]
function Party:changeActiveHero(hero)
    self.active = self.party[hero]
end

--[[
    Method: add
------------------------
    Add a hero to the party (with a limit of 3)(?)
]]
function Party:add(hero)
    table.insert(self.party, hero)
end

--[[
    Method: remove
------------------------
    Remove a hero from the party 
]]

function Party:remove(hero)
    table.remove(self.party, hero)
end