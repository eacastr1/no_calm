--[[
    No Calm

    Author: Eddie Castro
    eacastr1@uno.edu
]]

Class   = require 'lib/class'
Event   = require 'lib/knife.event'
Timer   = require 'lib/knife.timer'
Push    = require 'lib/push'

require 'src/constants'

require 'src/gui/Menu'
require 'src/gui/Panel'
require 'src/gui/Selection'
require 'src/gui/Textbox'
require 'src/gui/Gauge'

require 'src/StateMachine'
require 'src/StateStack'

require 'src/states/BaseState'
require 'src/states/FadeInState'
require 'src/states/FadeOutState'
require 'src/states/BattleState'
require 'src/states/BattleMessageState'
require 'src/states/BattleMenuState'
require 'src/states/TurnState'


require 'src/game/Player'
require 'src/game/Party'
require 'src/game/entity_defs'
require 'src/game/Entity'
require 'src/game/Enemy'
require 'src/game/Hero'
require 'src/game/Knife'
require 'src/game/Ability'

gFonts = {
    ['small']   = love.graphics.newFont('fonts/Silver.ttf', 18),
    ['medium']  = love.graphics.newFont('fonts/Silver.ttf', 24),
    ['large']   = love.graphics.newFont('fonts/Silver.ttf', 36)
}