local EventWrapper = {}
EventWrapper.__index = {}


function EventWrapper.new()
	return setmetatable({
		_bind = {},
		_remote = {}
	}, EventWrapper)
end


function EventWrapper:Create(int: Instance, intStr: string)
	if int == Instance.new("BindableEvent") and Instance.new("BindableFunction") and Instance.new("RemoteEvent") and Instance.new("RemoteFunction") then
		intStr = self.int.Name
		
		return Instance.new(intStr)
	end
end

function EventWrapper:CallOntoClient(int: Instance, intStr: string)
	return int
end

function EventWrapper:CallOntoServer(int: Instance, intStr: string)
	
end

return EventWrapper
