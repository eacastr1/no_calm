--[[
    No Calm
    
    Author: Eddie Castro
    eacastr1@uno.edu

    ... (Description)
]]

require 'src/Dependencies'

local square = {}

function love.load()
    love.window.setTitle('No Calm')
    love.graphics.setDefaultFilter('nearest', 'nearest')

    square.x = 100
    square.y = 100
    square.length = 50
    square.width = 50
    square.color = {1, 0, 0}

    Timer.tween(0.5, {
        [square] = {x = 300, y = 300}
    })

    love.keyboard.keysPressed = {}
end

function love.keysPressed(key)
    -- Quit the game if escape is pressed, for debugging, remove later...
    if key == 'escape' then
        love.event.quit()
    end

    love.keyboard.keysPressed[key] = true
end

function love.keyboard.wasPressed(key)
    return love.keyboard.keysPressed[key]
end

function love.update(dt)

    Timer.update(dt)
    -- Reset keys pressed after each frame
    love.keyboard.keysPressed = {} 

end

function love.draw()
    -- love.graphics.printf('Hello World!', 0, love.graphics.getHeight() / 2, love.graphics.getWidth(), 'center')
    love.graphics.setColor(square.color)
    love.graphics.rectangle('fill', square.x, square.y, square.length, square.width)

    if square.x == 300 and square.y == 300 then
        love.graphics.setColor(1, 1, 1)
        love.graphics.printf('Done!', 0, love.graphics.getHeight() / 2, love.graphics.getWidth(), 'center')
    end
end