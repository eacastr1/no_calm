ENTITY_IDS = {
    'knife', 'shotgun', 'cursed woman'
}

ENTITY_DEFS = {
    ['knife'] = {
        health = 50,
        fear = 0,

        MOVE_IDS = {
            'slash', 'stab', 'blood ritual', 
            'blood sacrifice', 'blood absorption', 'sharpen'
        },
        MOVES = {
            ['slash'] = {
                name = 'Slash',
                damage = 0,
                status = true
            },
            ['rapid slash'] = {
              name = 'Rapid Slash',
              damage = 0,
              status = false
            },
            ['stab'] = {
                name = 'Stab',
                damage = 0,
                status = true
            },
            ['blood ritual'] = {
                name = 'Blood Ritual',
                damage = 0,
                status = true
            },
            ['blood sacrifice'] = {
                name = 'Blood Sacrifice',
                damage = 0,
                status = false
            },
            ['blood absorption'] = {
                name = 'Blood Absorption',
                damage = 0,
                status = false
            },
            ['sharpen'] = {
                name = 'Sharpen',
                damage = 0,
                status = false
            }
        }
    },
    ['shotgun'] = {
        health = 100, 

        MOVE_IDS = {
            'hipfire', 'molotov', 'reload', 'focus',
        }

    },
    ['cursed woman'] = {
        health = 75,

        MOVES = {
            ['downward stab'] = {
                name = 'Downward Stab',
                damage = 0,
                status = true
            }
        }
    }
}