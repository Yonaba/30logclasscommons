local PATH = (...):match("^(.+)%.[^%.]+$") or ''
local class = require(PATH .. ".30log")

-- Interface for cross class-system compatibility
-- see https://github.com/bartbes/Class-Commons).
if common_class ~= false and not common then
  common = {}
  function common.class(name, prototype, parent)
    local klass = class():extend(nil,parent):extend(nil,prototype)
    klass.init = prototype.init or (parent or {}).init
		klass.name = name
    return klass
  end
  function common.instance(class, ...)
    return class:new(...)
  end
end
