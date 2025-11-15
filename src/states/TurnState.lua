--[[
    No Calm

    Author: Eddie Castro
    eacastr1@uno.edu
]]

TurnState = Class{__includes = BaseState}

function TurnState:init(def)
    self.battleState = def.battleState
    self.playerSelectedAbility = def.playerSelectedAbility
    self.enemySelectedAbility = nil
end

function TurnState:enter()
    self:processAbility()
end

function TurnState:update(dt)

end

function TurnState:render()

end

function TurnState:processAbility()
    -- if ability is an attack ability
    -- attack the target (?)
    if self.playerSelectedAbility.type == ABILITY_TYPE.DAMAGE then
        -- damage the enemy (?)
        -- for now, simply push in a BattleMessageState
        gStateStack:pop()
        gStateStack:push(BattleMessageState(
            self.playerSelectedAbility.name .. '...'
        ))
    end
end