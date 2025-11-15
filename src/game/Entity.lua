--[[
    No Calm

    Author: Eddie Castro
    eacastr1@uno.edu

    The Entity class is for the entities of the world that engage in
    turn-based combat. They all inherit from this Entity base class. 
]]

Entity = Class{}

--[[
    The Entity constructor
    - x: x-coordinate for rendering
    - y: y-coordinate for rendering
    - height: height for rendering
    - width: width for rendering
    - data: the data of the entity, such as stats and moves
    - health: the health of the entity, given by the external data
    - moves: the set of moves for the entity, given by the external data
]]

function Entity:init(def)
    self.x = def.x
    self.y = def.y
    self.width = def.width
    self.height = def.height
    self.data = def.data

    self.name = self.data.name
    self.health = self.data.health
    self.abilities = self.data.ABILITIES
    self.animations = self.data.animations
end

function Entity:update(dt)

end

function Entity:render()
    
end