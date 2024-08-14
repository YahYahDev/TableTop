local ffi = require("ffi")


-- OpenGL type defs
ffi.cdef([[


typedef unsigned int GLbitfield;

void glClear (GLbitfield mask);
void glClearColor(float red, float green, float blue, float alpha);
void glColor4f(float red, float green, float blue, float alpha);

void glBegin(unsigned int primitave);
void glEnd();

void glVertex2f(float x, float y);

]])
