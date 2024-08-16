local ffi = require("ffi")

ffi.cdef([[

int glfwInit();
void glfwTerminate();


typedef void (* GLFWerrorfun)(int error_code, const char* description);

typedef struct GLFWmonitor GLFWmonitor;
typedef struct GLFWwindow GLFWwindow;

typedef void (* GLFWframebuffersizefun)(GLFWwindow* window, int width, int height);

GLFWframebuffersizefun glfwSetFramebufferSizeCallback(GLFWwindow* window, GLFWframebuffersizefun callback);

GLFWerrorfun glfwSetErrorCallback(GLFWerrorfun callback);
GLFWwindow* glfwCreateWindow(int width, int height, const char* title, GLFWmonitor* monitor, GLFWwindow* share);
void glfwPollEvents();

int glfwWindowShouldClose(GLFWwindow* window);

void glfwSetWindowShouldClose(GLFWwindow* window, int value);

void glfwMakeContextCurrent(GLFWwindow* window);
void glfwSwapBuffers(GLFWwindow* window);

void glfwWindowHint(int hint, int value);

int glfwGetKey(GLFWwindow* window, int key);



]])

