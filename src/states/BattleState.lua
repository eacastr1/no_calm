BattleState = Class{__includes = BaseState}

function BattleState:init(def)
    self.player = def.player
    self.enemy = def.enemy
end

function BattleState:enter()
    -- Push in a BattleMenuState or a BattleMessageState (?)
end

function BattleState:update(dt)
    
end

function BattleState:render()
    
end