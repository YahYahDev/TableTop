ffi = require("ffi")

-- Metatable for ease of use.

local metatable = {}

function metatable:__index(index)
    return rawget(self, 2)[rawget(self, 1)..index]
end

-- Define c functions and types here.
ffi.cdef([[

int glfwInit();
void glfwTerminate();

typedef void (* GLFWerrorfun)(int error_code, const char* description);

typedef struct GLFWmonitor GLFWmonitor;
typedef struct GLFWwindow GLFWwindow;
GLFWerrorfun glfwSetErrorCallback(GLFWerrorfun callback);
GLFWwindow* glfwCreateWindow(int width, int height, const char* title, GLFWmonitor* monitor, GLFWwindow* share);
void glfwPollEvents();
int glfwWindowShouldClose(GLFWwindow* window);

void glfwMakeContextCurrent(GLFWwindow* window);
void glfwSwapBuffers(GLFWwindow* window);
]])





glfw = setmetatable({"glfw", ffi.load("glfw3")}, metatable) -- Require glfw. 
-- docs: https://stetre.github.io/moonglfw/doc/index.html
-- Note: these docs are to a binding we are not using so may or may not be accurate.
-- Reference lua/libs/glfw/glfw.h


gl = setmetatable({"gl", ffi.load("opengl32")}, metatable) -- Require opengl.
-- Reference lua/libs/gl/gl.h


glfw.Error = function (ErrorCode, Info)
    error(string.format("GLFW, ERROR: [%i], %s", ErrorCode, ffi.string(Info)))
end
