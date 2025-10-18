--[[
    No Calm

    Author: Eddie Castro
    eacastr1@uno.edu

    The Selection class processes items, allowing users to navigate and select from those items,
    it is used as a component for a GUI system.
]]

Selection = Class {}

--[[
    The Selection class must be given a definition during instantiation, which
    includes a set of items, x-y coordinates for position the selection within 
    the window, a font for the item text, and whether the user wants the orientation
    to be displayed as a list, inline, or a table. If the user wants an orientation 
    of a table they must specify the number of desired rows.
]]
function Selection:init(def)
    self.items = def.items
    self.x = def.x
    self.y = def.y

    self.height = def.height
    self.width = def.width
    self.font = def.font or gFonts['small']

    self.orientation = def.orientation or 'table'

    if self.orientation == 'list' then
        self.rows = #self.items
    elseif self.orientation == 'inline' then
        self.rows = 1
    else
        -- edge case, a single rowed table is an inline selection
        if def.rows == 1 then self.orientation = 'inline' end
        self.rows = def.rows
    end

    self.currentRow = 1
    self.currentColumn = 1

    self.columns = math.ceil(#self.items / self.rows)

    self.gapHeight = self.height / self.rows
    self.gapWidth = self.width / self.columns 
    self.current = 1
end

function Selection:update(dt)
    if love.keyboard.wasPressed('enter') or love.keyboard.wasPressed('space') or love.keyboard.wasPressed('return') then
        self.items[self.current].onSelect()
    end

    if self.orientation == 'list' or self.orientation == 'inline' then
        self:controls()
    else
        self:tableControls()
    end
end

function Selection:render()
    love.graphics.setFont(self.font)

    for row = 1, self.rows do
        for col = 1, self.columns do
            local index = (row - 1) * self.columns + col
            if index > #self.items then break end

            local item = self.items[index]
            local x = self.x + (col - 1) * self.gapWidth
            local y = self.y + (row - 1) * self.gapHeight

            -- center text vertically within each cell
            local textW = self.font:getWidth(item.text)
            local textH = self.font:getHeight()
            local textX = x + (self.gapWidth - textW) / 2
            local textY = y + (self.gapHeight - textH) / 2

            -- highlight if selected
            if index == self.current then
                love.graphics.setColor(1, 1, 1, 0.25)
                love.graphics.rectangle('fill', x, y, self.gapWidth, self.gapHeight, 4)
            end

            love.graphics.setColor(1, 1, 1, 1)
            love.graphics.print(item.text, textX, textY)
        end
    end
end


--[[
    List
-----------------
    The user presses up or down to navigate a list selection.
    The selection is navigated sequentially, up is incremental and
    down is decremental. If the user reaches the first item and presses up,
    they are taken to the final item. If the user reaches the last item and they
    press down, they are taken to the first item.

    Inline
-----------------
    The user presses left or right to navigate an inline selection.
    The selection is navigated sequentially, left is incremental and down is decremental.
    If the user reaches the leftmost item and presses left, they are taken to the
    rightmost item. If the user reaches the rightmost item and presses right,
    they are taken to the leftmost item.
]]

-- Controls for list and inline selections

function Selection:controls()
    if love.keyboard.wasPressed('up') or love.keyboard.wasPressed('left') then
        if self.current == 1 then
            self.current = #self.items
        else
            self.current = self.current - 1
        end
    elseif love.keyboard.wasPressed('down') or love.keyboard.wasPressed('right') then
        if self.current == #self.items then
            self.current = 1
        else
            self.current = self.current + 1
        end
    end 
end

--[[
    Information
-----------------    
    - orientation
    - # of rows
    - # of items per row derived by (items / rows)
    - item list, treated as a psuedo-2D array

    Table
-----------------
    The user can press left or right to navigate the rows of the selection, or
    up and down to navigate the columns of the selection. The selection, during
    horizontal navigation, is navigated sequentially and is based on the number of
    items per row. During vertical navigation, it is navigated through calculations
    based on the number of items per row, and the current position of the cursor within
    the row. 
]]

-- Special controls for a table selection
function Selection:tableControls()
    if love.keyboard.wasPressed('up') then
        -- decrement current row
        if self.currentRow == 1 then
            self.currentRow = self.rows
        else
            self.currentRow = self.currentRow - 1
        end
    elseif love.keyboard.wasPressed('down') then
        -- increment current row
        if self.currentRow == self.rows then
            self.currentRow = 1
        else
            self.currentRow = self.currentRow + 1
        end
    elseif love.keyboard.wasPressed('left') then
        -- decrement current column
        if self.currentColumn == 1 then
            self.currentColumn = self.columns
        else
            self.currentColumn = self.currentColumn - 1
        end
    elseif love.keyboard.wasPressed('right') then
        -- increment current column
        if self.currentColumn == self.columns then
            self.currentColumn = 1
        else
            self.currentColumn = self.currentColumn + 1
        end
    end

    self.current = (self.currentRow - 1) * self.columns + self.currentColumn
    self.current = math.min(self.current, #self.items)
end

