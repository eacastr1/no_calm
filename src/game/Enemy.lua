--[[

]]

Enemy = Class{__includes = Entity}

--[[
    Enemy is an Entity (health, move set, animations)

    Enemy behaviors:

    Enemy selects next action based on a heuristic and randomness (*)

    Enemy selects a move based on a heuristic and randomness

    Enemy can intrude on the player's turn based on a heuristic and randomness
]]

function Enemy:init(def)
    Entity.init(self, def)
end

function Enemy:decide()

end







