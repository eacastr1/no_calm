--[[

]]

Knife = Class{__includes = Hero}

function Knife:init(def)
    Hero.init(self, def)

    self.abilities = {
        Ability(self.abilities['slash']),
        Ability(self.abilities['stab']),
        Ability(self.abilities['blood ritual'])
    }
end
