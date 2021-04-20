local BrickColors = {}
BrickColors.__index = BrickColors

function BrickColors.new(r, g, b: number)
	return print(BrickColor.new(r, g, b))
end

function BrickColors:FormPallete(rbg: number)
	return BrickColor.palette(rbg)
end

function BrickColors:Create(r: number, g: number, b: number)
	return BrickColor.new(r, g, b)
end

function BrickColors:CreateWithName(rgbStr: string)
	return BrickColor.new(rgbStr)
end

--// DECLASED:

--[[
function BrickColors:Output(int: Instance)
	if (typeof(int) == "Instance") then
		return print(self.BrickColor)
	else
		error("!")
	end
end
]]

return BrickColors
