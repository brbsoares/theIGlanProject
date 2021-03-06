local combat = Combat()
combat:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_MAGIC_GREEN)
combat:setParameter(COMBAT_PARAM_AGGRESSIVE, false)

local skill = Condition(CONDITION_ATTRIBUTES)
skill:setParameter(CONDITION_PARAM_SUBID, 5)
skill:setParameter(CONDITION_PARAM_TICKS, 13000)
skill:setParameter(CONDITION_PARAM_SKILL_SHIELDPERCENT, 220)
skill:setParameter(CONDITION_PARAM_BUFF_SPELL, true)
combat:setCondition(skill)

local exhaust = Condition(CONDITION_EXHAUST)
exhaust:setParameter(CONDITION_PARAM_SUBID, 1)
exhaust:setParameter(CONDITION_PARAM_TICKS, 10000)
combat:setCondition(exhaust)

local pacified = Condition(CONDITION_PACIFIED)
pacified:setParameter(CONDITION_PARAM_TICKS, 10000)
combat:setCondition(pacified)

function onCastSpell(creature, variant)
	return combat:execute(creature, variant)
end
