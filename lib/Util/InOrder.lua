local get = require(script.Parent.get)

return function(Children: {Instance})
	local Index: number = 0

	for _, Child: Instance in ipairs(get(Children)) do
		Child = get(Child)
		if not (Child) then continue end

		local Ok: boolean = pcall(function()
			return Child.LayoutOrder
		end)

		if not (Ok) then continue end

		Index += 1

		pcall(function()
			Child.LayoutOrder = Index
		end)
	end

	return Children
end