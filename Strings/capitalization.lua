local capitalization = {}
capitalization.__index = capitalization

capitalization.new = function(index, object)
	
end

function capitalization:toUpperCase(str: string)
	if (str == nil) then
		return error("string is invalid, or isn't a string")
	else
		type b = boolean
		local bx: b = true

		print(bx)
	end
	
	return string.upper(str)
end

function capitalization:toLowerCase(str: string)
	if (str == nil) then
		return error("string is invalid, or isn't a string")
	else
		type b = boolean
		local bx: b = true
		
		print(bx)
	end

	return string.lower(str)
end

return capitalization


