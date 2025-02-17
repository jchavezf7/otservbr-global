local mType = Game.createMonsterType("The Baron From Below")
local monster = {}

monster.description = "The Baron From Below"
monster.experience = 40000
monster.outfit = {
	lookType = 1045,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 50000
monster.maxHealth = 50000
monster.race = "blood"
monster.corpse = 27633
monster.speed = 240
monster.manaCost = 0

monster.changeTarget = {
	interval = 4000,
	chance = 10
}

monster.strategiesTarget = {
	nearest = 70,
	health = 10,
	damage = 10,
	random = 10,
}

monster.flags = {
	summonable = false,
	attackable = true,
	hostile = true,
	convinceable = false,
	pushable = false,
	rewardBoss = true,
	illusionable = false,
	canPushItems = true,
	canPushCreatures = true,
	staticAttackChance = 90,
	targetDistance = 1,
	runHealth = 0,
	healthHidden = false,
	isBlockable = false,
	canWalkOnEnergy = true,
	canWalkOnFire = true,
	canWalkOnPoison = true
}

monster.light = {
	level = 0,
	color = 0
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "Krrrk!", yell = false}
}

monster.loot = {
	{name = "platinum coin", chance = 10000, maxCount = 58},
	{name = "crystal coin", chance = 10000, maxCount = 2},
	{name = "gold ingot", chance = 10000, maxCount = 2},
	{name = "great mana potion", chance = 10000, maxCount = 10},
	{name = "great spirit potion", chance = 10000, maxCount = 18},
	{name = "mastermind potion", chance = 10000, maxCount = 2},
	{name = "small diamond", chance = 10000, maxCount = 12},
	{name = "small emerald", chance = 10000, maxCount = 12},
	{name = "small ruby", chance = 10000, maxCount = 12},
	{name = "small topaz", chance = 10000, maxCount = 12},
	{name = "ultimate health potion", chance = 10000, maxCount = 8},
	{name = "violet crystal shard", chance = 10000, maxCount = 3},
	{name = "badger boots", chance = 10000},
	{name = "blue gem", chance = 10000},
	{name = "calopteryx cape", chance = 10000},
	{id = 27622, chance = 10000}, -- chitinous mouth
	{name = "crystal mace", chance = 10000},
	{name = "fire sword", chance = 10000},
	{name = "green gem", chance = 10000},
	{name = "huge chunk of crude iron", chance = 10000, maxCount = 2},
	{name = "huge shell", chance = 10000},
	{name = "longing eyes", chance = 10000},
	{name = "luminous orb", chance = 10000},
	{name = "magic sulphur", chance = 10000, maxCount = 2},
	{name = "magma coat", chance = 10000},
	{id= 3039, chance = 10000}, -- red gem
	{id = 8906, chance = 10000}, -- heavily rusted helmet
	{id = 8900, chance = 10000}, -- heavily rusted shield
	{name = "slimy leg", chance = 10000},
	{name = "stone skin amulet", chance = 10000},
	{name = "violet gem", chance = 10000},
	{name = "wand of inferno", chance = 10000},
	{name = "yellow gem", chance = 10000},
	{name = "gold token", chance = 1000},
	{name = "silver token", chance = 1000},
	{name = "mallet head", chance = 1000},
	{name = "gnome shield", chance = 1000},
	{name = "gnome sword", chance = 1000},
	{name = "plan for a makeshift armour", chance = 500},
	{name = "gnome armor", chance = 500}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -550},
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_PHYSICALDAMAGE, minDamage = 0, maxDamage = -1000, radius = 8, effect = CONST_ME_HITAREA, target = false},
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_EARTHDAMAGE, minDamage = 0, maxDamage = -1000, length = 8, spread = 5, effect = CONST_ME_YELLOW_RINGS, target = false},
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_EARTHDAMAGE, minDamage = 0, maxDamage = -1000, length = 8, spread = 9, effect = CONST_ME_POFF, target = false},
	{name ="combat", interval = 2000, chance = 100, type = COMBAT_DEATHDAMAGE, minDamage = 0, maxDamage = -1000, radius = 3, effect = CONST_ME_MORTAREA, target = false},
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_EARTHDAMAGE, minDamage = 0, maxDamage = -1000, radius = 5, effect = CONST_ME_SMALLPLANTS, target = false}
}

monster.defenses = {
	defense = 5,
	armor = 10
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 60},
	{type = COMBAT_ENERGYDAMAGE, percent = 60},
	{type = COMBAT_EARTHDAMAGE, percent = 60},
	{type = COMBAT_FIREDAMAGE, percent = 100},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 60},
	{type = COMBAT_HOLYDAMAGE , percent = 60},
	{type = COMBAT_DEATHDAMAGE , percent = 60}
}

monster.heals = {
	{type = COMBAT_FIREDAMAGE, percent = 100},
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType.onThink = function(monster, interval)
end

mType.onAppear = function(monster, creature)
	if monster:getType():isRewardBoss() then
		monster:setReward(true)
	end
end

mType.onDisappear = function(monster, creature)
end

mType.onMove = function(monster, creature, fromPosition, toPosition)
end

mType.onSay = function(monster, creature, type, message)
end

mType:register(monster)
