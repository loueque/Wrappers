local CollectService = {}
CollectService.__index = CollectService


local CollectionService = game:GetService("CollectionService")

function CollectService.new()
	return setmetatable({
		_collect = {}
	}, CollectService)
end



function CollectService:SetTag(str: string, int: Instance)
	if str and int then
		return CollectionService:AddTag(int, str), CollectionService:GetFullName(int)
	else
		error({})
	end
end


function CollectService:GetTagTable(str: string, int: Instance)
	local t = CollectionService:GetTags(int)
	
	for k, v in ipairs(t) do
		return print(k, v)
	end
end

function CollectService:HasTag(str: string, int: Instance)
	return CollectionService:HasTag(str, int)
end

function CollectService:HashTag(str: string | nil)
	return string.byte(str)
end

function CollectService:Remove(str: string, int: Instance): any
	return CollectionService:RemoveTag(str, int), str and int == nil
end

function CollectService:GetTagged(str: string)
	return CollectionService:GetTagged(str)
end

function CollectService:GetAllTags(str: string | nil, int: Instance)
	return CollectionService:GetTagged(str), CollectionService:GetTags(int)
end

function CollectService:GetCollection(collection: DataModel)
	return CollectionService:GetTags(collection)
end



return CollectService
