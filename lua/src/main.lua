local common = require("src.common")



local main = {
    
    run = function (self)
        
        glfw.SetErrorCallback(glfw.Error)
        
        glfw.Init()
        
        local window = glfw.CreateWindow(768, 512, "test", nil, nil)
        
        glfw.MakeContextCurrent(window)
        
        while glfw.WindowShouldClose(window) == 0 do
            
            glfw.SwapBuffers(window)
            
            glfw.PollEvents()
            
            
        end
    
        glfw.Terminate()
    
    end,


}

return main
