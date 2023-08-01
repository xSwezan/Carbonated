local Instance = import("../Instance")
local typeof = import("../functions/typeof")
local ScaleType = import("../Enum/ScaleType")

describe("instances.ImageButton", function()
	it("should instantiate", function()
		local instance = Instance.new("ImageButton")

		assert.not_nil(instance)
	end)

	it("should have properties defined", function()
		local instance = Instance.new("ImageButton")
		assert.equals(typeof(instance.Image), "string")
		assert.equals(typeof(instance.ImageColor3), "Color3")
		assert.equals(typeof(instance.ImageRectOffset), "Vector2")
		assert.equals(typeof(instance.ImageRectSize), "Vector2")
		assert.equals(typeof(instance.ScaleType), "EnumItem")
		assert.equal(instance.ScaleType.EnumType, ScaleType)
		assert.equals(typeof(instance.SliceCenter), "Rect")
	end)
end)