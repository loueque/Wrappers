local Coin = {}
Coin.__index = Coin

function Coin.new()
	local self = setmetatable({

	}, Coin)
	return self
end


function Coin:FlipCoin()
	local rng = Random.new()

	return print(rng:NextNumber() < 1/2 and 'Heads' or 'Tails')
end

function Coin:Output(a: any | nil)
	type Out = number | nil
	type In = number | nil
	
	local out:Out = 2
	local _in:In = 4
	
	return Coin:FlipCoin(), warn(a, out, _in)
end

return Coin
