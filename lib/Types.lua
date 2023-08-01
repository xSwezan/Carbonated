local FusionTypes = require(script.Parent.FusionTypes)

local Types = {}

export type Carbonated = {
	InOrder: (FusionTypes.CanBeState<{Instance}>) -> nil;
	get: (FusionTypes.CanBeState<any>) -> any;
}

return Types