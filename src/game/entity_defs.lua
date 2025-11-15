ENTITY_IDS = {
    KNIFE = 'knife',
    SHOTGUN = 'shotgun',
    CURSED_WOMAN = 'cursed woman'
}

ABILITY_TYPE = {
    DAMAGE = 'damage',
    HEAL = 'heal',
    BUFF = 'buff'
}

ENTITY_DEFS = {
    ['knife'] = {
        name = 'Knife',
        health = 50,
        fear = 50,

        ABILITIES = {
            ['slash'] = {
                name = "Slash",
                damage = 0,
                status = true,
                type = ABILITY_TYPE.DAMAGE
            },
            ['rapid slash'] = {
                name = "Rapid Slash",
                damage = 0,
                status = false,
                type = ABILITY_TYPE.DAMAGE
            },
            ['stab'] = {
                name = "Stab",
                damage = 0,
                status = true,
                type = ABILITY_TYPE.DAMAGE
            },
            ['blood ritual'] = {
                name = "Blood Ritual",
                damage = 0,
                status = true,
                type = ABILITY_TYPE.DAMAGE
            },
            ['blood sacrifice']= {
                name = "Blood Sacrifice",
                damage = 0,
                status = false,
                type = ABILITY_TYPE.DAMAGE
            },
            ['blood absorption'] = {
                name = "Blood Absorption",
                heal = 0,
                status = false,
                type = ABILITY_TYPE.HEAL
            },
            ['sharpen'] = {
                name = "Sharpen",
                damage = 0,
                status = false,
                type = ABILITY_TYPE.BUFF
            }
        }
    },
    ['shotgun'] = {
        health = 100, 
        ABILITIES = {}
    },
    ['cursed woman'] = {
        health = 75,
        ABILITIES = {
            ['downward slash'] = {
                name = 'Downward Slash',
                damage = 15,
                status = true,
                type = ABILITY_TYPE.DAMAGE
            }
        }
    }
}