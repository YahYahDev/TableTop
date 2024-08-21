local ffi = require("ffi")
require("src.modules.raylib.bindings.raylib")
key = require("src.modules.raylib.bindings.keys")

-- Used to set matrix values with vectors.
function SetMatrixVec4(M, V1, V2, V3, V4)

    M.m0, M.m4, M.m8, M.m12 = V1.x, V1.y, V1.z, V1.w
    M.m1, M.m5, M.m9, M.m13 = V1.x, V1.y, V1.z, V1.w
    M.m2, M.m6, M.m10, M.m14 = V1.x, V1.y, V1.z, V1.w
    M.m3, M.m7, M.m11, M.m15 = V1.x, V1.y, V1.z, V1.w
end

-- Used to initalize a matrix.
function Matrix()
    return ffi.new("Matrix")
end

-- Used to initalize a 4D vector.
function Vec4(vector)
    return ffi.new("Vector4", vector)
end

-- Used to initalize a 3D vector.
function Vec3(vector)
    return ffi.new("Vector3", vector)
end

-- Used to initalize a 2D vector.
function Vec2(vector)
    return ffi.new("Vector2", vector)
end

-- Used to initalize a Color.
function Color(color)
    return ffi.new("Color", color)
end

-- 
