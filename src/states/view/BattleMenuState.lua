--[[
    No Calm

    Author: Eddie Castro
    eacastr1@uno.edu
]]

BattleMenuState = Class{__includes = BaseState}

--[[
    The Battle Menu State constructor
    - moves (table): the moves of the active character 
]]
function BattleMenuState:init(def)
    local items = {}

    for k,v in pairs(def.moves) do
        items[k] = v
    end

    self.battleMenu = Menu {
        x = 0,
        y = VIRTUAL_HEIGHT - 64,
        width = VIRTUAL_WIDTH,
        height = 64,
        items = {
            {
                text = "Slash",
                onSelect = function() end
            },
            {
                text = "Blood Ritual",
                onSelect = function() end
            },
            {
                text = "Rapid Slash",
                onSelect = function() end
            },
            {
                text = "Blood Sacrifice", 
                onSelect = function() end
            },
            {
                text = "Blood Drain", 
                onSelect = function() 
                    gStateStack:push(BattleMessageState('LOL...'))  
                end
            },
            {
                text = "Stab",
                onSelect = function() 
                    gStateStack:push(BattleMessageState('LOL...'))
                end
            }
        },
        orientation = 'table',
        rows = 3
    }
end

function BattleMenuState:update(dt)
    self.battleMenu:update(dt)
end

function BattleMenuState:render()
    self.battleMenu:render()
end