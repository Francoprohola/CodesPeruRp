Codes = {}
--[[Ejemplo
	["Codigo"] = Cantidad de Soles
]]

Codes = {
	["royalecraft"] = 1000,
	["frankodev"] = 599,
	["FERSCARIÑOSO"] = 4000,
	["20KFERS"] = 4000,
	["CARIÑOSAS"] = 100,
	["FERSPERURP"] = 1000,
	["ROYALFERS"] = 1000,
	["OZUNABABY"] = 100,
	["PERUANA"] = 4000,
	["CATV"] = 4000
}
function Codes.IsServer()
	if (game:GetService("RunService"):IsServer()) then
		return true
	else
		return false
	end
end
function Codes.ValidateCode(Code: string)
	if Codes.IsServer() == false then return end
	if Codes[Code] ~= nil then 
		return true 
	else 
		return false
	end
end

return Codes
