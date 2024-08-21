#ifndef YIMECORE_H
#define YIMECORE_H
#ifndef RAYLIB_H
#include "raylib.h"
#endif

/*  TODO
 *
 *  (1): Make a Mesh Generator
 *
 *  (2): Make a Mesh Merger
 *
*/


void Yime_Camera_RTS(Camera* camera){
    /* Doc Yime_Camera_RTS
       *
       * Basicly a bunch of checks for WASD
       * that update the camera.position
       * and camera.target
      */
    float speed = 0.1;
    if(IsKeyDown(KEY_A)){

        camera->position.x = camera->position.x - speed;
        camera->target.x = camera->target.x - speed;
    }
    if(IsKeyDown(KEY_D)){
        camera->position.x = camera->position.x + speed;
        camera->target.x = camera->target.x + speed;
    }
    if(IsKeyDown(KEY_W)){
        camera->position.z = camera->position.z - speed;
        camera->target.z = camera->target.z - speed;

    }
    if(IsKeyDown(KEY_S)){
        camera->position.z = camera->position.z + speed;
        camera->target.z = camera->target.z + speed;

    }
}





#endif
