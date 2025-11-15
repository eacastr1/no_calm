--[[
    No Calm

    Author: Eddie Castro
    eacastr1@uno.edu

    The Ability class
    - Encapsulates ability data
    - Applies ability effects to a subject
    - Possibly triggers an "interaction" event for the player
]]

Ability = Class{}

--[[

]]
function Ability:init(def)
    self.name = def.name
    self.type = def.type

    self.damage = def.damage
    self.heal = def.heal
end