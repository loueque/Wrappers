local Pi = {}
Pi.__index = Pi

function Pi:Calculate(numb: number)
	type x = number
	local cir: x = numb
	
	return warn("Calculating... " .. math.pi * cir or self.cir)
end

function Pi:DoPi(numb: number | nil)
	type x = number
	local num: x = numb
	
	return warn("Pi: " .. math.pi)
end

function Pi:Area(numb: number)
	type x = number
	local num = numb
	
	if numb >= 4 then
		local radius = num / 2

		return warn("Area: " .. math.pi * math.pow(radius, 2))
	elseif numb < 4 then
		error("cannot be under 4, choose a number above 4.")
	end
end

function Pi:Diameter(numb: number)
	type x = number
	local num = numb
	
	local radius = num
	
	if numb >= 4 then
		local output = 2 * radius

		if output then
			return warn("Diameter: " .. output)
		end
	elseif numb < 4 then
		error("cannot be under 4, choose a number above 4.")
	end
end

function Pi:Circumference(numb: number)
	type x = number
	local num: x = numb
	
	local radius = num / 2
	
	local output = 2 * math.pi * radius
	
	if output then
		output = output
		
		return warn("Circumference: " .. output)
	end
end

function Pi:Result()
	return warn('results', string.char(math.pow(2, 2)))
end

return Pi
