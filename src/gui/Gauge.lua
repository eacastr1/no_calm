--[[
    No Calm

    Author: Eddie Castro
    eacastr1@uno.edu

    The Gauge class is a way to visually measure and display a measurement 
    to the player. It can be used for a variety of stats, such as health or
    more. It is another GUI component. 
]]

Gauge = Class{}

--[[
    - The Gauge constructor
    - x: x-coordinate for rendering
    - y: y-coordinate for rendering
    - height: height for rendering
    - width: width for rendering
    - color: color of the gauge (RGB values inside a table)
    - background color: color of the background
    - max: max value of the gauge
    - current: current value of the gauge
]]

function Gauge:init(def)
    self.x = def.x
    self.y = def.y
    self.height = def.height
    self.width = def.width
    self.color = def.color
    self.backgroundColor = def.backgroundColor
    self.max = def.max
    self.current = def.current or self.max -- if no current specified, set current to max
end

function Gauge:setColor(color)
    self.color = color
end

function Gauge:setCurrent(current)
    self.current = current
end

function Gauge:setMax(max)
    self.max = max
end

function Gauge:render()
    -- Set the width of the rectangle from current and max ratio
    -- Set the color
    -- Check if current value is greater than 0
    -- If so, then draw a rectangle
    -- Draw outline around the rectangle
    -- Reset the color
    local width = (self.current / self.max) * self.width

    if self.backgroundColor ~= nil then
        love.graphics.setColor(self.backgroundColor.r, self.backgroundColor.g, self.backgroundColor.b, 1)
        love.graphics.rectangle('fill', self.x, self.y, self.width, self.height, 3)
    end

    if self.current > 0 then
        love.graphics.setColor(self.color.r, self.color.g, self.color.b, 1)
        love.graphics.rectangle('fill', self.x, self.y, width, self.height, 3)
    end

    love.graphics.setColor(0, 0, 0, 1)
    love.graphics.rectangle('line', self.x, self.y, self.width, self.height, 3)

    love.graphics.setColor(1, 1, 1, 1)
end



