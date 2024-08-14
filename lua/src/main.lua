local common = require("src.common")

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
        
        local window = glfw.CreateWindow(512, 512, "SUCK ON YAH MODAH", nil, nil)
        
        glfw.MakeContextCurrent(window)
        
        glfw.WindowHint(enum.GLFW_TRANSPARENT_FRAMEBUFFER, 1)
        glfw.WindowHint(enum.GLFW_CONTEXT_VERSION_MAJOR, 3)
        glfw.WindowHint(enum.GLFW_CONTEXT_VERSION_MINOR, 3)
        glfw.WindowHint(enum.GLFW_OPENGL_PROFILE, enum.GLFW_OPENGL_CORE_PROFILE)
        
        while glfw.WindowShouldClose(window) == 0 do
        
        
            gl.ClearColor(1.0, 1.0, 1.0, 0.0)

            gl.Clear(enum.GL_COLOR_BUFFER_BIT)
            
            
            gl.Begin(enum.GL_TRIANGLES)
            gl.Color4f(1.0, 0.0, 0.0, 0.0)
            gl.Vertex2f(-0.95, -0.95)
            gl.Color4f(0.0, 1.0, 0.0, 0.0)
            gl.Vertex2f(0, 0.95)
            gl.Color4f(0.0, 0.0, 1.0, 0.0)
            gl.Vertex2f(0.95, -0.95)
        
        
            gl.End()
        
        
            glfw.SwapBuffers(window)
            
            glfw.PollEvents()
            
            
        end
    
        glfw.Terminate()
    
    end,


}

return main
