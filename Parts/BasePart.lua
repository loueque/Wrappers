--> Created by loueque, cannot claim this as your OWN.
--@@ If you like to add changes, visit this git: SOON :tm:

-- Module:

local Part = {}
Part.__index = Part


function Part:Anchor(int: BasePart, bool: boolean)
	if int:IsA("BasePart") and bool == true then
		int.Anchored = bool
		print(int.Anchored)
	elseif bool == false then
		int.Anchored = false
		print(int.Anchored)
	end
	
	return
end

function Part:SetTransparency(int: BasePart, value: number)
	if int:IsA("BasePart") then
		int.Transparency = value
		
		math.round(value)
	elseif not int:IsA("BasePart") then
		return error("not a(n) BasePart"), false, nil
	end
	
	return
end


function Part:SetCollide(int: BasePart, bool: boolean)
	if int:IsA("BasePart") then
		int.CanCollide = bool
		
	elseif not int:IsA("BasePart") then
		return error("not a(n) BasePart"), false, nil
	end
	
	return
end

function Part:GetLock(int: BasePart, bool: boolean)
	if int:IsA("BasePart") then
		int.Locked = bool

	elseif not int:IsA("BasePart") then
		return error("not a(n) BasePart"), false, nil
	end

	return
end

function Part:SetShape(int: BasePart)
	if not int:IsA("BasePart") then
		return nil
	end
	
	return self.shape
end

function Part:SetReflectance(int: BasePart, value: number)
	if int:IsA("BasePart") then
		int.Reflectance = value
	elseif not int:IsA("BasePart") then
		return error("not a(n) BasePart"), false, nil
	end
	
	return
end

function Part:SetPosition(int: BasePart, x: number, y: number, z: number)
	if int:IsA("BasePart") then
		int.Position = Vector3.new(x, y, z)
	elseif not int:IsA("BasePart") then
		return error("not a(n) BasePart"), false, nil
	end
	
	return
end

function Part:GetPosition(int: BasePart)
	if int:IsA("BasePart") then
		return print(int.Position.X, int.Position.Y, int.Position.Z)
	end
end


function Part:SetSize(int: BasePart, x: number, y: number, z: number)
	if int:IsA("BasePart") then
		int.Size = Vector3.new(x, y, z)
	elseif not int:IsA("BasePart") then
		return error("not a(n) BasePart"), false
	end
	
	return
end

function Part:GetSize(int: BasePart)
	if int:IsA("BasePart") then
		return print(int.Size.X, int.Size.Y, int.Size.X)
	end
end



function Part:SetRotateParams(int: BasePart, x: number, y: number, z: number)
	if int:IsA("BasePart") then
		int.Rotation = Vector3.new(x, y, z)
	elseif not int:IsA("BasePart") then
		return error("not a(n) BasePart"), false
	end
	
	return
end

function Part:GetRotateParams(int: BasePart)
	return print(int.Rotation.X, int.Rotation.Y, int.Rotation.Z)
end

function Part:Rotate(int: BasePart, x: number, y: number | nil, z: number | nil)
	if int:IsA("BasePart") then
		while wait(0.02) and true do
			int.Rotation = Vector3.new(x + 1, y + 1, z + 1)
		end
	elseif not int:IsA("BasePart") then
		return error("not a(n) BasePart"), false
	end
	
	return
end


function Part:SetMaterial(int: BasePart, material: Enum)
	if int:IsA("BasePart") then
		while wait(0.02) and true do
			int.Material = material
		end
	elseif not int:IsA("BasePart") then
		return error("not a(n) BasePart"), false
	end

	return
end

function Part:GetMaterial(int: BasePart)
	return print(int.Material)
end

--> Fotgotten, or forged code:

--[[
function Part:GetAxis(int: BasePart)
	if int:IsA("BasePart") then
		return print(int.CFrame)
	end
end

function Part:SetAxis(int: BasePart, one, two, three: number)
	if int:IsA("BasePart") then
		int.CFrame = CFrame.new(one, two, three)
		return int.CFrame == CFrame.new(one, two, three), true
	elseif not int:IsA("BasePart") then
		return error("not a(n) BasePart"), false, nil
	end
end
]]

return Part
