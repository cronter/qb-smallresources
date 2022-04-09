Config = {}
Config.MaxWidth = 5.0
Config.MaxHeight = 5.0
Config.MaxLength = 5.0
Config.DamageNeeded = 100.0
Config.IdleCamera = true
Config.EnableProne = false
Config.JointEffectTime = 60
Config.RemoveWeaponDrops = true
Config.RemoveWeaponDropsTimer = 25
Config.DefaultPrice = 20 -- carwash
Config.DirtLevel = 0.1 --carwash dirt level
Config.MPHspeed = 20

Config.Bikes = {
    'dyne',
    'SANCHEZ01',
    'HAKUCHOU2',
	'manchez2',
	'zombiea',
	'zombieb',
	'daemon',
	'chimera',
	'cliffhanger',
	'hexer',
	'ratbike',
	'daryl',
	'HAMSTER',
	'softail2',
	'trig',
	'117',
	'enduro',
}


ConsumeablesEat = {
    ["sandwich"] = math.random(35, 54),
    ["tosti"] = math.random(40, 50),
    ["twerks_candy"] = math.random(35, 54),
    ["snikkel_candy"] = math.random(40, 50),
}

ConsumeablesDrink = {
    ["water_bottle"] = math.random(35, 54),
    ["kurkakola"] = math.random(35, 54),
    ["coffee"] = math.random(40, 50),
}

ConsumeablesAlcohol = {
    ["whiskey"] = math.random(20, 30),
    ["beer"] = math.random(30, 40),
    ["vodka"] = math.random(20, 40),
}

Config.BlacklistedScenarios = {
    ['TYPES'] = {
        "WORLD_VEHICLE_MILITARY_PLANES_SMALL",
        "WORLD_VEHICLE_MILITARY_PLANES_BIG",
        "WORLD_VEHICLE_AMBULANCE",
        "WORLD_VEHICLE_POLICE_NEXT_TO_CAR",
        "WORLD_VEHICLE_POLICE_CAR",
        "WORLD_VEHICLE_POLICE_BIKE",
    },
    ['GROUPS'] = {
        2017590552,
        2141866469,
        1409640232,
        `ng_planes`,
    }
}

Config.BlacklistedVehs = {
    [`VORTEX`] = true,
    [`STRYDER`] = true,
    [`SHOTARO`] = true,
    [`SANCTUS`] = true,
    [`OPPRESOR`] = true,
    [`NIGHTBLADE`] = true,
    [`LECTRO`] = true,
    [`INNOVATION`] = true,
    [`HAKUCHOU2`] = true,
    [`HAKUCHOU`] = true,
    [`GARGOYLE`] = true,
    [`FAGGIO`] = true,
    [`DOUBLE`] = true,
    [`DIABLOUS`] = true,
    [`DIABLOUS2`] = true,
    [`DEATHBIKE3`] = true,
    [`DEATHBIKE2`] = true,
    [`DEFILER`] = true,
    [`CHIMERA`] = true,
    [`CARBONRS`] = true,
    [`BF400`] = true, --maybe
    [`BATI2`] = true,
    [`BATI`] = true,
    [`AVARUS`] = true, --maybe
    [`ZION`] = true,
    [`ZION2`] = true,
    [`WINDSOR`] = true,
    [`WINDSOR2`] = true,
    [`SENTINEL2`] = true,
    [`ORACLE2`] = true,
    [`ORACLE`] = true,
    [`JACKAL`] = true,
    [`felon2`] = true,
    [`F620`] = true,
    [`EXEMPLAR`] = true,
    [`COGCABRIO`] = true,
    [`PRAIRIE`] = true,
    [`ISSI2`] = true,
    [`ISSI7`] = true,
    [`KANJO`] = true,
    [`ASBO`] = true,
    [`blista`] = true,
    [`BRIOSO`] = true,
    [`SHAMAL`] = true,
    [`LUXOR`] = true,
    [`LUXOR2`] = true,
    [`JET`] = true,
    [`LAZER`] = true,
    [`BUZZARD`] = true,
    [`BUZZARD2`] = true,
    [`ANNIHILATOR`] = true,
    [`SAVAGE`] = true,
    [`TITAN`] = true,
    [`RHINO`] = true,
    [`MULE`] = true,
    [`MAVERICK`] = true,
    [`BLIMP`] = true,
    [`AIRTUG`] = true,
    [`CAMPER`] = true,
  	[`CAVALCADE`] = true,
  	[`ROMERO`] = true,
  	[`CARGOBOB`] = true,
  	[`TOURBUS`] = true,
  	[`FROGGER`] = true,
  	[`INFERNUS`] = true,
  	[`DILETTANTE`] = true,
  	[`DILETTANTE2`] = true,
  	[`JESTER`] = true,
  	[`JESTER2`] = true,
  	[`JESTER3`] = true,
  	[`JESTER4`] = true,
  	[`FELTZER2`] = true,
  	[`VOLTIC`] = true,
  	[`DILETTANTE2`] = true,
  	[`ZENTORNO`] = true,
  	[`COMET2`] = true,
  	[`UTILLITRUCK`] = true,
  	[`UTILLITRUCK2`] = true,
  	[`UTILLITRUCK3`] = true,
  	[`LANDSTALKER`] = true,
  	[`LANDSTALKER2`] = true,
  	[`CAVALCADE2`] = true,
  	[`THRUST`] = true,
  	[`AKUMA`] = true,
  	[`BAGGER`] = true,
  	[`BATI801`] = true,
  	[`BATI801RR`] = true,
  	[`CARBONSRS`] = true,
  	[`DOUBLET`] = true,
  	[`NEMESIS`] = true,
  	[`PCJ`] = true,
  	[`RUFFIAN`] = true,
  	[`SANCHEZ`] = true,
  	[`SANCHEZ2`] = true,
  	[`VINDICATOR`] = true,
  	[`VADER`] = true,
  	[`MASSACRO`] = true,
  	[`ADDER`] = true,
  	[`SENTINEL`] = true,
  	[`DUBSTA`] = true,
  	[`DUBSTA2`] = true,
  	[`TURISMOR`] = true,
  	[`SURANO`] = true,
  	[`RAPIDGT`] = true,
  	[`ALPHA`] = true,
  	[`TUG`] = true,
  	[`SWIFT`] = true,
  	[`SWIFT2`] = true,
  	[`FELON`] = true,
  	[`ASTEROPE`] = true,
  	[`PANTO`] = true,
	[`RENTALBUS`] = true,
	[`SEMINOLE`] = true,
	[`SEMINOLE2`] = true,
}

Config.BlacklistedPeds = {
    [`s_m_y_ranger_01`] = true,
    [`s_m_y_sheriff_01`] = true,
    [`s_m_y_cop_01`] = true,
    [`s_f_y_sheriff_01`] = true,
    [`s_f_y_cop_01`] = true,
    [`s_m_y_hwaycop_01`] = true,
}

Config.Teleports = {
    --Elevator @ labs
    [1] = {
        [1] = {
            coords = vector4(3540.74, 3675.59, 20.99, 167.5),
            ["AllowVehicle"] = false,
            drawText = '[E] Take Elevator Up'
        },
        [2] = {
            coords = vector4(3540.74, 3675.59, 28.11, 172.5),
            ["AllowVehicle"] = false,
            drawText = '[E] Take Elevator Down'
        },

    },
    --Coke Processing Enter/Exit
    [2] = {
        [1] = {
            coords = vector4(909.49, -1589.22, 30.51, 92.24),
            ["AllowVehicle"] = false,
            drawText = '[E] Enter Coke Processing'
        },
        [2] = {
            coords = vector4(1088.81, -3187.57, -38.99, 181.7),
            ["AllowVehicle"] = false,
            drawText = '[E] Leave'
        },
    },
}

Config.CarWash = { -- carwash
    [1] = {
        ["label"] = "Hands Free Carwash",
        ["coords"] = vector3(25.29, -1391.96, 29.33),
    },
    [2] = {
        ["label"] = "Hands Free Carwash",
        ["coords"] = vector3(174.18, -1736.66, 29.35),
    },
    [3] = {
        ["label"] = "Hands Free Carwash",
        ["coords"] = vector3(-74.56, 6427.87, 31.44),
    },
    [5] = {
        ["label"] = "Hands Free Carwash",
        ["coords"] = vector3(1363.22, 3592.7, 34.92),
    },
    [6] = {
        ["label"] = "Hands Free Carwash",
        ["coords"] = vector3(-699.62, -932.7, 19.01),
    }
}
