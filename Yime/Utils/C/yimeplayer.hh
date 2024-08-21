#ifndef YIMEPLAYER_H
#define YIMEPLAYER_H

#ifndef RAYLIB_H
#include "raylib.h"
#endif

typedef struct{

    Model model;

    Vector3 pos;

    Matrix transform;

}Player;

Player Player_Init(Model model, Vector3 pos){
    Player player;
    player.model = model;
    player.pos = pos;
    return player;
}

void Player_Draw(Player player){

    DrawModel(player.model, (Vector3){0.0, 0.0, 0.0}, 1.0, YELLOW);

}


#endif
