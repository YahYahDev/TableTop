ffi = require("ffi")

enum = require("src.modules.Halo.bindings.enums") -- Get enums from enums.lua
require("src.modules.Halo.bindings.glfw")
require("src.modules.Halo.bindings.gl")
-- Metatable for ease of use.
local metatable = {}

function metatable:__index(index) -- Makes namespace of glfw/gl as a table for indexing. EG: "glfw.Init()" insted of glfw.glfwInit().
    return rawget(self, 2)[rawget(self, 1)..index]
end

glfw = setmetatable({"glfw", ffi.load("glfw3")}, metatable) -- Requires glfw. 
-- docs: https://stetre.github.io/moonglfw/doc/index.html
-- Note: these docs are to a binding we are not using so may or may not be accurate.
-- Reference lua/libs/glfw/glfw.h


gl = setmetatable({"gl", ffi.load("opengl32")}, metatable) -- Requires opengl.
-- Reference lua/libs/gl/gl.h


glfw.Error = function (ErrorCode, Info)
    error(string.format("GLFW, ERROR: [%i], %s", ErrorCode, ffi.string(Info)))
end


glfw.ResizeWindow = function (window, width, height)
    print(width.. " " .. height)
    gl.Viewport(0, 0, ffi.cast("int", width), ffi.cast("int", height))
end
