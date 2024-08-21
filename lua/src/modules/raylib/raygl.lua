local ffi = require("ffi")

local metatable = {}

function metatable:__index(index) -- Makes namespace of glfw/gl as a table for indexing. EG: "glfw.Init()" insted of glfw.glfwInit().
    return rawget(self, 2)[rawget(self, 1)..index]
end


