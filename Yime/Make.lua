#!/usr/bin/luajit

--Main Command for compiling optimization settings warning ect
main_command = "-o out main.cc -Wall"
--Linking Command for windows basicly list of .dlls to include ect
--[[
FUCK THIS LINKING BS DONT EVER DELETE THIS OR YOU WILL REGRET IT TOM!!!

]]
window_link = "-LLibs/Windows -IUtils/C -lraylib -lm -lopengl32 -lgdi32 -lwinmm -static -static-libgcc -static-libstdc++"

--i686-w64-mingw32-gcc -o out main.c -Wall -LLibs/Linux -lraylib -lm

--Linking Command for linux basicly list of .so files to include ect
linux_link = "-LLibs/Linux -lraylib -lm"

--Windows Compile
os.execute("i686-w64-mingw32-g++ ".. main_command .. " " .. window_link)

--Linux Compile
os.execute("g++ ".. main_command .. " " .. linux_link)

os.execute("./out")
