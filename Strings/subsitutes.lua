local sub = {}
sub.__index = sub

function sub.new()
	return setmetatable({}, sub)
end

function sub.gsub(str: string, subStr: string, subStrOne: string, subNum: number)
	type s = string
	type subs = string | nil
	
	return string.gsub(str, subStr, subStrOne, subNum), string.len(str)
end

function sub.gmatch(str: string, strPattern: string)
	type s = string
	type strPattern = string
	return string.gmatch(str, strPattern)
end

function sub.match(str: string, strPat: string, init: number)
	return string.match(str, strPat, init)
end

return sub
