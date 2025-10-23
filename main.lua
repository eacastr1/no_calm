--[[
    No Calm
    
    Author: Eddie Castro
    eacastr1@uno.edu
]]

require 'src/Dependencies'

function love.load()
    love.window.setTitle('No Calm')
    love.graphics.setDefaultFilter('nearest', 'nearest')
    math.randomseed(os.time())

    Push:setupScreen(VIRTUAL_WIDTH, VIRTUAL_HEIGHT, WINDOW_WIDTH, WINDOW_HEIGHT, {
        fullscreen = false,
        resizable = true,
        vsync = true
    })

    gStateStack = StateStack()
    gStateStack:push(FadeInState(
        {r = 1, g = 1, b = 1},
        1,
        function () 
            gStateStack:push(BattleMenuState({
                player = Player({
                    party = Party({
                        knife = Knife({
                            data = ENTITY_DEFS['knife']
                        })
                    })
                })
            }
            ))
            gStateStack:push(BattleMessageState("Testing..."))
            gStateStack:push(FadeOutState(
            {r = 1, g = 1, b = 1},
            1,
            function () end
        )) end
    ))

    love.keyboard.keysPressed = {}
end

function love.resize(w, h)
    Push:resize(w, h)
end

function love.keypressed(key)
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
    gStateStack:update(dt)
    -- Reset keys pressed after each frame
    love.keyboard.keysPressed = {} 

end

function love.draw()
    Push:start()
    -- love.graphics.setFont(gFonts['small'])
    -- love.graphics.printf('Hello World!', 0, VIRTUAL_HEIGHT / 2, VIRTUAL_WIDTH, 'center')
    gStateStack:render()
    Push:finish()
end