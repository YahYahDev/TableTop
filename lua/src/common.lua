local ffi = require("ffi")
require("src.modules.bindings.gl.gl")
require("src.modules.bindings.glfw.glfw")
-- Metatable for ease of use.

local metatable = {}

function metatable:__index(index)
    return rawget(self, 2)[rawget(self, 1)..index]
end


enum = {

    GLFW_CONTEXT_VERSION_MAJOR = 0x00022002,
    
    GLFW_CONTEXT_VERSION_MINOR = 0x00022003,
    
    GLFW_OPENGL_PROFILE = 0x00022008,
    
    GLFW_OPENGL_CORE_PROFILE = 0x00032001,

    GLFW_TRANSPARENT_FRAMEBUFFER = 0x0002000A,
    
    GL_COLOR_BUFFER_BIT = 0x00004000,

    GL_TRIANGLES = 0x0004,
}


glfw = setmetatable({"glfw", ffi.load("glfw3")}, metatable) -- Require glfw. 
-- docs: https://stetre.github.io/moonglfw/doc/index.html
-- Note: these docs are to a binding we are not using so may or may not be accurate.
-- Reference lua/libs/glfw/glfw.h


gl = setmetatable({"gl", ffi.load("opengl32")}, metatable) -- Require opengl.
-- Reference lua/libs/gl/gl.h


glfw.Error = function (ErrorCode, Info)
    error(string.format("GLFW, ERROR: [%i], %s", ErrorCode, ffi.string(Info)))
end
