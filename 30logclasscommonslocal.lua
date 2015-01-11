local PATH = (... or ''):match("^(.+)%.[^%.]+$") or false
local class = require( (PATH and PATH.."." or '') .. "30log")

local _M = {}
_M.class = function(name, prototype, parent)
	local klass = class():extend(nil,parent):extend(nil,prototype)
	klass.init = prototype.init or (parent or {}).init
	klass.name = name
	return klass
end
_M.instance = function(class, ...)
	return class:new(...)
end
return _M
