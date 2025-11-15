--[[
    No Calm

    Author: Eddie Castro
    eacastr1@uno.edu
]]

BattleMenuState = Class { __includes = BaseState }

--[[
    The Battle Menu State constructor
    - battleState (table)
]]
function BattleMenuState:init(def)
    self.battleState = def
    self.player = self.battleState.player
    self.party = self.player.party
    self.currentCharacter = self.party.active
    self.items = {}

    for _, v in ipairs(self.currentCharacter.abilities) do
        table.insert(self.items, {
            text = v.name,
            onSelect = function() 
                -- Push TurnState, passing in the selected ability
                gStateStack:push(TurnState(
                    {
                        battleState = self.battleState,
                        playerSelectedAbility = v
                    }
                ))
            end
        })
    end


    self.battleMenu = Menu {
        x = 0,
        y = VIRTUAL_HEIGHT - 64,
        width = VIRTUAL_WIDTH,
        height = 64,
        items = self.items,
        orientation = 'table',
        rows = 2
    }
end

function BattleMenuState:update(dt)
    self.battleMenu:update(dt)
end

function BattleMenuState:render()
    self.battleMenu:render()
end
