local combat = {}

for i = 10, 35 do
	combat[i] = Combat()
	combat[i]:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_POISONAREA)
	combat[i]:setParameter(COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_POISON)

	local condition = Condition(CONDITION_ATTRIBUTES)
	condition:setParameter(CONDITION_PARAM_TICKS, 20000)
	condition:setParameter(CONDITION_PARAM_SKILL_DISTANCEPERCENT, i)
	combat[i]:setCondition(condition)
end

function onCastSpell(creature, var)
	return combat[math.random(10, 35)]:execute(creature, var)
end
