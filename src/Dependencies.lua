Class   = require 'lib/class'
Event   = require 'lib/knife.event'
Timer   = require 'lib/knife.timer'
Push    = require 'lib/push'

require 'src/constants'

require 'src/gui/Menu'
require 'src/gui/Panel'
require 'src/gui/Selection'
require 'src/gui/Textbox'

require 'src/StateMachine'
require 'src/StateStack'
require 'src/states/BaseState'

require 'src/states/view/FadeInState'
require 'src/states/view/FadeOutState'
require 'src/states/view/BattleMessageState'
require 'src/states/view/BattleMenuState'

gFonts = {
    ['small']   = love.graphics.newFont('fonts/Silver.ttf', 18),
    ['medium']  = love.graphics.newFont('fonts/Silver.ttf', 24),
    ['large']   = love.graphics.newFont('fonts/Silver.ttf', 36)
}