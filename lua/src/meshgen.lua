require("src.common")

local function printvec(x, y, z)
    
    print(string.format("X: %f  Y: %f  Z: %f", x, y, z))

end


function MeshDebug(mesh)

    print(mesh.vertexCount)

    local loop = 0
    
    while loop < mesh.vertexCount do
    
        printvec(mesh.vertices[loop], mesh.vertices[loop +1], mesh.vertices[loop +2])
    
        loop = loop +3
    
    end
    

end

--[[
Mesh GenMeshPoly(int sides, float radius)
{
    Mesh mesh = { 0 };

    if (sides < 3) return mesh; // Security check

    int vertexCount = sides*3;

    // Vertices definition
    Vector3 *vertices = (Vector3 *)RL_MALLOC(vertexCount*sizeof(Vector3));

    float d = 0.0f, dStep = 360.0f/sides;
    for (int v = 0; v < vertexCount - 2; v += 3)
    {
        vertices[v] = (Vector3){ 0.0f, 0.0f, 0.0f };
        vertices[v + 1] = (Vector3){ sinf(DEG2RAD*d)*radius, 0.0f, cosf(DEG2RAD*d)*radius };
        vertices[v + 2] = (Vector3){ sinf(DEG2RAD*(d+dStep))*radius, 0.0f, cosf(DEG2RAD*(d+dStep))*radius };
        d += dStep;
    }

    // Normals definition
    Vector3 *normals = (Vector3 *)RL_MALLOC(vertexCount*sizeof(Vector3));
    for (int n = 0; n < vertexCount; n++) normals[n] = (Vector3){ 0.0f, 1.0f, 0.0f };   // Vector3.up;

    // TexCoords definition
    Vector2 *texcoords = (Vector2 *)RL_MALLOC(vertexCount*sizeof(Vector2));
    for (int n = 0; n < vertexCount; n++) texcoords[n] = (Vector2){ 0.0f, 0.0f };

    mesh.vertexCount = vertexCount;
    mesh.triangleCount = sides;
    mesh.vertices = (float *)RL_MALLOC(mesh.vertexCount*3*sizeof(float));
    mesh.texcoords = (float *)RL_MALLOC(mesh.vertexCount*2*sizeof(float));
    mesh.normals = (float *)RL_MALLOC(mesh.vertexCount*3*sizeof(float));

    // Mesh vertices position array
    for (int i = 0; i < mesh.vertexCount; i++)
    {
        mesh.vertices[3*i] = vertices[i].x;
        mesh.vertices[3*i + 1] = vertices[i].y;
        mesh.vertices[3*i + 2] = vertices[i].z;
    }

    // Mesh texcoords array
    for (int i = 0; i < mesh.vertexCount; i++)
    {
        mesh.texcoords[2*i] = texcoords[i].x;
        mesh.texcoords[2*i + 1] = texcoords[i].y;
    }

    // Mesh normals array
    for (int i = 0; i < mesh.vertexCount; i++)
    {
        mesh.normals[3*i] = normals[i].x;
        mesh.normals[3*i + 1] = normals[i].y;
        mesh.normals[3*i + 2] = normals[i].z;
    }

    RL_FREE(vertices);
    RL_FREE(normals);
    RL_FREE(texcoords);

    // Upload vertex data to GPU (static mesh)
    // NOTE: mesh.vboId array is allocated inside UploadMesh()
    UploadMesh(&mesh, false);

    return mesh;
}
]]
