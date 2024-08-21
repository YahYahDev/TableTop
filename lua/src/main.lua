-- Require 'ffi'.
local ffi = require("ffi")
-- Require 'Log'.
local log = require("src.modules.Std.Log")
-- Require 'Struct'.
local struct = require("src.modules.Utils.Struct")
-- Require 'raylib', .
require("src.common")
-- Require 'meshgen'
local mg = require("src.meshgen")

log.name = "Main"

Orange = Color({250, 150, 35, 255})
Yellow = Color({250, 250, 35, 255})
Red = Color({250, 35, 35, 255})
Green = Color({35, 250, 35, 255})
Blue = Color({35, 35, 250, 255})
Purple = Color({150, 35, 250, 255})
Teal = Color({55, 250, 250, 255})

    
-- Used to initalize a 3D camera
local function CamInit()

    local Camera = ffi.new("Camera3D")
    Camera.position = ffi.new("Vector3", {0.0, 20.0, 20.0})  -- Position of the camera
    Camera.target = ffi.new("Vector3", {0.0, 0.0, 0.0})       -- Point at which the camera looks
    Camera.up = ffi.new("Vector3", {0.0, 1.0, 0.0})           -- Up vector, typically (0, 1, 0)
    Camera.fovy = 60.0                                        -- Field of view in degrees
    Camera.projection = 0                       -- Camera type (perspective or orthographic)

    return Camera

end


local function MoveCamera(camera)

    local TRIGGER = 125

    local PanSpeed = 0.25
    
    local MousePos = rl.GetMousePosition()

    local x,y = rl.GetScreenWidth(), rl.GetScreenHeight();
    
    if MousePos.x >= x - TRIGGER then
        camera.position.x = camera.position.x + PanSpeed
        camera.target.x = camera.position.x + PanSpeed
    elseif MousePos.x <= TRIGGER then
        camera.position.x = camera.position.x - PanSpeed
        camera.target.x = camera.target.x - PanSpeed
    elseif MousePos.y >= y - TRIGGER then
        camera.position.z = camera.position.z + PanSpeed
        camera.target.z = camera.target.z + PanSpeed
    elseif MousePos.y <= TRIGGER then
        camera.position.z = camera.position.z - PanSpeed
        camera.target.z = camera.target.z - PanSpeed
    end
    
end

local function GenerateMap(size)

    -- VVV Make an array of vectors to express the hex map
    local Cords = ffi.new("Vector4[?]", size * size)
    local Loop = 0

    for l = 0, size -1 do
        
        for i = 0, size -1 do
        
            Cords[Loop].x = i * 2 + (l % 2)
            Cords[Loop].y = math.random(0, 2) / math.random(0, 10) 
            math.randomseed(os.clock() * math.random(0.0, 100000.0), 0)
            Cords[Loop].z = l
            Cords[Loop].w = math.random(1, 7)
            Loop = Loop +1
        end
       
    end
    
    return Cords, size

end


local function RenderFloor(Model, Map, MapSize)
    
    local Colors = {}
    Colors[1] = Color({250, 150, 35, 255})
    Colors[2] = Color({250, 250, 35, 255})
    Colors[3] = Color({250, 35, 35, 255})
    Colors[4] = Color({35, 250, 35, 255})
    Colors[5] = Color({35, 35, 250, 255})
    Colors[6] = Color({150, 35, 250, 255})
    Colors[7] = Color({55, 250, 250, 255})
    
    
    for i = 0, MapSize * MapSize - 1 do
    
        math.randomseed(os.clock() * math.random(0.0, 100000.0), 0)
        rl.DrawModel(Model, Vec3({0.0 + (Map[i].x * 1.73), 0.0 + Map[i].y, 0.0 + (Map[i].z * 3.0)}), 1.0, Colors[Map[i].w])
        
    
    
    end
    
    
    
end


local main = {
    
    width = 1920,
    
    height = 768,
    
    title = "TableTop",
    
    run = function (self)
    
        rl.InitWindow(self.width, self.height, self.title)
    
        
        Camera = CamInit()
    
        rl.SetTargetFPS(60)
        
        local Mesh = rl.GenMeshCylinder(2.0, 3, 6)
        --rl.GenMeshPoly(6, 2.0)
        
        local Model = rl.LoadModelFromMesh(Mesh)
        
        local Map, Count = GenerateMap(16)
        
        while rl.WindowShouldClose() == false do
            
            MoveCamera(Camera)             
            rl.BeginDrawing()
            -- ^^^ Begin drawing.
            
            rl.ClearBackground(rl.GetColor(0x181818))
            rl.DrawFPS(10, 10)
   
            local MousePos = rl.GetMousePosition()
            rl.DrawText(string.format("X: %.3f, Y: %.3f, Z: %.3f", MousePos.x, MousePos.y, 0.0), 100, 10, 20, Color({0,158,47,255}))
            -- ^^^ Give debug info above.
            
            
            rl.BeginMode3D(Camera)
            -- VVV Render stuff here. VVV
            
            RenderFloor(Model, Map, Count)
            
            
            rl.EndMode3D()
            rl.EndDrawing()
            
            
        end
        
        rl.TakeScreenshot("test.png");
        
        rl.CloseWindow()
        
        
    end,

    
}

return main
