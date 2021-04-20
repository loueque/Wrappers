local Dice = {}
Dice.__index = {}

function Dice:RollADice()
	local rng = Random.new()
	local diceArray = {'One', 'Two', 'Three', 'Four', 'Five', 'Six'}
	
	return rng:NextNumber() < 1/6 and math.random(1, #diceArray)
end

function Dice:TypeOfDice(a: any): any
	return typeof(a)
end

function Dice:Result(result: string)
	return Dice:RollADice(), result == self.diceArray
end

return Dice
