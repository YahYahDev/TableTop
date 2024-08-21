// C     HEADERS
#include <stdio.h>
#include <math.h>
// GL    HEADERS
#include "Utils/C/raylib.h"

// YIME  HEADERS
#include "Utils/C/yimecore.hh"
#include "Utils/C/yimeplayer.hh"
// Util  HEADERS
#include "Utils/C/raymath.h"
#define ERROR(X) do{printf("%s", X); return -1;}while(0)

void CamInit(Camera3D* cam){
   cam->position = (Vector3){ 0.0f, 10.0f, 10.0f };
   cam->target = (Vector3){ 0.0f, -1.75f, 0.0f };
   cam->up = (Vector3){ 0.0f, 1.0f, 0.0f };
   cam->fovy = 90.0f;
   cam->projection = CAMERA_PERSPECTIVE;
}




int main(void){

   int screenWidth = 960;
   int screenHeight = 768;



   // Initialize Raylib
   InitWindow(screenWidth, screenHeight, "Yime");


   /* Init Camera! */
   Camera3D camera = {0};
   CamInit(&camera);

   /* Init Models */
   
   Mesh mesh = GenMeshPoly(6, 1.0);
   
   Material material = LoadMaterialDefault();
   
   Matrix matrixs[4] = {0};
   
   int Instances = 4;
   
   
   

   char DEBUG[50] = {0};
   SetTargetFPS(60);
   /* Game Loop Here! */
   while (!WindowShouldClose()) {
      /*Game Logic Here*/

      /* Camera  */
      Yime_Camera_RTS(&camera);
      /* Draw 2D */
      BeginDrawing();

         DrawFPS(10 ,10);
         ClearBackground(GetColor(0x181818));
         
         // Insert x, y, z over their ->               x y z
         // sprintf(DEBUG, "X: %.4f  Y: %.4f  Z: %.4f", , , );
         
         //Draw X Y Z of where mouse is eventualy - Did it!
         DrawText(DEBUG, 90, 10, 20, (Color){0,158,47,255});
         

      /* Draw 3D */
      BeginMode3D(camera);
      
      DrawMeshInstanced(mesh, material, matrixs, Instances);
      
      
      /* End Drawing Calls */
      EndMode3D();
      EndDrawing();
    }

   // Close window and OpenGL context
   CloseWindow();

   /* Unload Models! */
   return 0;
}













