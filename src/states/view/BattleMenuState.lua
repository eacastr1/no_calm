--[[
    No Calm

    Author: Eddie Castro
    eacastr1@uno.edu
]]

BattleMenuState = Class{__includes = BaseState}

function BattleMenuState:init()
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

    self.gauge = Gauge {
        x = 0,
        y = 0,
        width = 128,
        height = 32,
        color = {
            r = 1,
            g = 0,
            b = 0
        },
        backgroundColor = {
            r = 0,
            g = 0,
            b = 1
        },
        max = 100,
        current = 50
    }

    self.health = 50
end

function BattleMenuState:update(dt)
    self.battleMenu:update(dt)
end

function BattleMenuState:render()
    self.battleMenu:render()
    self.gauge:render()
end