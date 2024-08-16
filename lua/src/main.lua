local common = require("src.common")
local log = require("src.modules.Std.Log")

log.name = "Main"

--[[TODO:
    
    1): Make wraper or get lsp working with bound functions.
    
        
    
    2): Make a api to draw tiles and guis.
    
        1): Learn OpenGL and how to use vertex/fragment shaders.
        
            1): Learn Shaders and how the graphics pipeline works.
            
            2): Learn how to apply shaders to pipeline.
            
            3): Make protype of map grid?
            
            4): ...
        
        2): Make some standard ways of rendering objects with shaders.
        
            1): Make standard shader pipeline.
            
            2): ...
        
        3): Make simple grid for display.
            
            ?): Hex grid?
            
            ?): Hight map?
            
            ?): Fog of war?
            
            ?): ...
            
    
    3): Make a server so you can distribute a map to multiple clients.

        1): Get a network library bound/installed for multiplayer, preferably a tcp or easyer protocol.
]]




local main = {
    
    run = function (self)
        
        glfw.SetErrorCallback(glfw.Error)
        
        
        glfw.Init()
        
        -- Set window hints before we call glfw.CreateWindow()
        
        glfw.WindowHint(enum.GLFW_CONTEXT_VERSION_MAJOR, 3) -- Set OpenGl major version "3.0"
        glfw.WindowHint(enum.GLFW_CONTEXT_VERSION_MINOR, 3) -- Set OpenGL minor version "0.3"
        glfw.WindowHint(enum.GLFW_OPENGL_PROFILE, enum.GLFW_OPENGL_CORE_PROFILE) -- Set the rendering version to "OpenGL Core"
        
        
        -- Make a window with glfw
        local window = glfw.CreateWindow(768, 768, "SUCK ON YAH MODAH", nil, nil)
        
        if window == nil then
            
            log:Error("GLFW: Failed to create window")
            glfw.Terminate()
            return
        end
        
        glfw.MakeContextCurrent(window)
        
        glfw.SetFramebufferSizeCallback(window, ffi.cast("GLFWframebuffersizefun", glfw.ResizeWindow))
        

        gl.Viewport(0, 0, 768, 768)
        
        
        gl.ClearColor(1.0, 1.0, 0.0, 0.0) -- Set clear color for background.
        
        
        self:RenderLoop(window) -- Execute render loop see main.RenderLoop() for more details.
    
        glfw.Terminate()
    
    end,

    
    
    RenderLoop = function (self, window)
    
        while glfw.WindowShouldClose(window) == 0 do
        
            gl.Clear(enum.GL_COLOR_BUFFER_BIT)
        
            self:HandleInput(window) -- Handles the windows input, see main.HandleInput() for more details.
            
            glfw.SwapBuffers(window)
            
            glfw.PollEvents()
            
        end
    
    end,
    
    
    
    HandleInput = function (self, window)
    
        if glfw.GetKey(window, enum.GLFW_KEY_ESCAPE) == enum.GLFW_PRESS then
            glfw.SetWindowShouldClose(window, 1)
        end
    
    end,
    

}

return main
